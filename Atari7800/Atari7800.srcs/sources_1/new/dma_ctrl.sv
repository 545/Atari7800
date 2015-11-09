`timescale 1ns / 1ps

module dma_ctrl(
   output logic [15:0] AddrB,
   output logic        drive_AB,
   input  logic [7:0]  DataB,
   // from memory map
   input logic [15:0]  ZP,

   output logic        palette_w, input_w, pixels_w,
   output logic        wm_w,

   input  logic        zp_dma_start, dp_dma_start, dp_dma_kill,
   output logic        zp_dma_done, dp_dma_done, dp_dma_done_dli,
   
   input logic         character_width,

   input logic         sysclk, reset, last_line
);

   logic [15:0]        DP, PP, DP_saved, ZP_saved, ZP_saved_next;
   logic [4:0]         WIDTH;
   logic [3:0]         OFFSET;
   
   logic               INDIRECT_MODE;

   // control regs
   logic               DLIen, DLIen_prev, A12en, A11en;

   // states
   enum logic [1:0] {waiting = 2'b00, zp_dma = 2'b01, dp_dma = 2'b10} state;
   enum logic [2:0] {drive_zp_addr = 3'b000, w_offset = 3'b001, w_DPH = 3'b010 ,w_DPL = 3'b100} zp_state;
   enum logic [3:0] {drive_dp_addr = 4'h0, w_PPL = 4'h1, w_PALETTE_WIDTH = 4'h2,
                     w_PPH = 4'h3, w_PALETTE_WIDTH_2 = 4'h4, w_INPUT = 4'h5,
                     drive_pp_addr = 4'h6, w_PIXELS = 4'h7, drive_next_zp_addr = 4'h8,
                     w_next_offset = 4'h9, w_next_DPL = 4'ha, w_next_DPH = 4'hb} dp_state;

   logic five_byte_mode, null_width, null_data, zero_offset;

   assign null_width = (DataB[4:0] == 5'b0);
   assign null_data = (DataB == 8'b0);
   assign zero_offset = (OFFSET == 4'b0);
   
   assign drive_AB = (state != waiting);
   
   assign ZP_saved_next = ZP_saved + 1;

   always_comb begin
      AddrB = 'h1234;
      wm_w = 0;
      palette_w = 0;
      input_w = 0;
      pixels_w = 0;
      case (state)
         zp_dma: begin
            AddrB = ZP_saved;
         end
         dp_dma: begin
            AddrB = DP_saved;
            case (dp_state)
               w_PALETTE_WIDTH: begin
                   if (~null_data) begin
                      wm_w = null_width;
                      palette_w = ~null_width;
                   end
               end
               w_PALETTE_WIDTH_2: begin
                  palette_w = 1;
               end
               w_INPUT: begin
                  input_w = 1;
               end
               drive_pp_addr: begin
                  AddrB = PP + {4'b0, OFFSET, 8'b0};
               end
               w_PIXELS: begin
                  AddrB = PP;
                  pixels_w = 1;
               end
               drive_next_zp_addr: begin
                  AddrB = ZP_saved;
               end
               w_next_offset: begin
                  AddrB = ZP_saved;
               end
               w_next_DPL: begin
                  AddrB = ZP_saved;
               end
            endcase
         end
      endcase
   end

   always_ff @(posedge sysclk, posedge reset) begin
      if (reset) begin
         state <= waiting;
         zp_state <= drive_zp_addr;
         dp_state <= drive_dp_addr;
         zp_dma_done <= 0;
         dp_dma_done <= 0;
         dp_dma_done_dli <= 0;
         five_byte_mode <= 0;
         INDIRECT_MODE <= 0;
      end else begin
         case (state)
           waiting: begin
              if (zp_dma_start) begin
                 state <= zp_dma;
                 ZP_saved <= ZP;
              end else if (dp_dma_start) begin
                 state <= dp_dma;
                 DP_saved <= DP;
              end
              zp_dma_done <= 0;
              dp_dma_done <= 0;
              dp_dma_done_dli <= 0;
           end
           ////////////////////////////////////////////////////////////
           zp_dma: begin
              case (zp_state)
                drive_zp_addr: begin // Read zp
                   zp_state <= w_offset;
                   // AddrB = ZP_saved;
                   ZP_saved <= ZP_saved_next;
                end
                w_offset: begin //write cbits and offset
                   zp_state <= w_DPH;
                   {DLIen,A12en,A11en} <= DataB[7:5];
                   OFFSET <= DataB[3:0];
                   // AddrB = ZP_saved_next;
                   ZP_saved <= ZP_saved_next;
                end
                w_DPH: begin //Write DPH
                   zp_state <= w_DPL;
                   DP[15:8] <= DataB;
                   // AddrB = ZP_saved;
                   ZP_saved <= ZP_saved_next;
                end
                w_DPL: begin //Write DPL
                   zp_state <= drive_zp_addr;
                   state <= waiting;
                   DP[7:0] <= DataB;
                   DP_saved <= {DP[15:8], DataB};
                   zp_dma_done <= 1'b1;
                end
              endcase // case (zp_state)
           end // case: zp_dma

           //////////////////////////////////////////////////////////////
           dp_dma: begin
              if (dp_dma_kill) begin
                 dp_state <= drive_dp_addr;
                 state <= waiting;
                 dp_dma_done <= 1'b1;
              end else case (dp_state)
                drive_dp_addr: begin //read from dp
                   dp_state <= w_PPL;
                   // AddrB = DP_saved;
                   DP_saved <= DP_saved+1;
                   five_byte_mode <= 0;
                   INDIRECT_MODE <= 0;
                end
                w_PPL: begin //Write PPL
                   dp_state <= w_PALETTE_WIDTH;
                   PP[7:0] <= DataB;
                   // AddrB = DP_saved;
                   DP_saved <= DP_saved+1;
                end
                w_PALETTE_WIDTH:
                  // Write palette/width or determine 5b
                  // mode or find end of DP list
                  if (null_data) begin //Found end of DP list
                     dp_state <= (zero_offset & ~last_line) ?
                                 drive_next_zp_addr : drive_dp_addr;
                     state <= (zero_offset & ~last_line) ? dp_dma : waiting;
                     OFFSET <= zero_offset ? OFFSET : OFFSET-1;
                     dp_dma_done <= ~(zero_offset & ~last_line);
                  end else begin
                     // Write palette and width or determine its 5b mode
                     dp_state <= w_PPH;
                     five_byte_mode <= null_width;
                     INDIRECT_MODE <= null_width & DataB[5];
                     // wm_w <= null_width;
                     // ind_w <= null_width;
                     // palette_w <= ~null_width;
                     WIDTH <= DataB[4:0];
                     // AddrB <= DP;
                     DP_saved <= DP_saved+1;
                  end
                w_PPH: begin //Write PPH
                   dp_state <= (five_byte_mode) ? w_PALETTE_WIDTH_2 : w_INPUT;
                   PP[15:8] <= DataB;
                   // AddrB <= DP;
                   DP_saved <= DP_saved+1;
                end
                w_PALETTE_WIDTH_2: begin //Write palette and width for realzies
                   dp_state <= w_INPUT;
                   // palette_w <= 1;
                   WIDTH <= DataB[4:0];
                   // AddrB <= DP;
                   DP_saved <= DP_saved+1;
                end
                w_INPUT: begin //write INPUT
                   if ((A12en & drive_pp_addr[12]) | (A11en & drive_pp_addr[11]))
                      dp_state <= drive_dp_addr;
                   else
                      dp_state <= drive_pp_addr;
                   // palette_w <= 0;
                   // AddrB <= DP;
                   // input_w <= 1;
                end
                drive_pp_addr: begin //read from pp
                   dp_state <= w_PIXELS;
                   WIDTH <= WIDTH+1;
                   // AddrB <= PP+{4'b0,OFFSET,8'b0};
                   PP <= PP+{4'b0,OFFSET,8'b1};
                   // input_w <= 0;
                end
                w_PIXELS: begin //Write Pixel data
                   // AddrB = PP
                   PP <= PP + 1;
                   WIDTH <= WIDTH + 1;
                   dp_state <= (WIDTH == 5'b0) ? drive_dp_addr : w_PIXELS;
                   // pixels_w <= 1;
                end
                /////////////////////////////////////////////////
                //Loading next zp when OFFSET has been decremented to 0
                drive_next_zp_addr: begin //Read zp
                   dp_state <= w_next_offset;
                   // AddrB <= ZP_saved;
                   ZP_saved <= ZP_saved_next;
                end
                w_next_offset: begin //write cbits and offset
                   dp_state <= w_next_DPH;
                   DLIen_prev <= DLIen;
                   {DLIen,A12en,A11en} <= DataB[7:5];
                   OFFSET <= DataB[3:0];
                   // AddrB <= ZP_saved;
                   ZP_saved <= ZP_saved_next;
                end
                w_next_DPH: begin //Write DPH
                   dp_state <= w_next_DPL;
                   DP[15:8] <= DataB;
                   // AddrB <= ZP_saved;
                   ZP_saved <= ZP_saved_next;
                end
                w_next_DPL: begin //Write DPH
                   dp_state <= drive_dp_addr;
                   state <= waiting;
                   DP[7:0] <= DataB;
                   DP_saved <= {DP[15:8], DataB};
                   dp_dma_done <= 1;
                   dp_dma_done_dli <= DLIen_prev;
                end               
              endcase // case (dp_state)
           end // case: dp_dma
         endcase
      end
   end // always_ff @
endmodule // dma_ctrl
