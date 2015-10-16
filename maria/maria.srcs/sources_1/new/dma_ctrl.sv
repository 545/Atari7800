`timescale 1ns / 1ps
`default_nettype none

module dma_ctrl(
   output logic [15:0] AddrB,
   output logic        drive_AB,
   input  logic [7:0]  DataB,
   // from memory map
   input logic [15:0]  ZP,

   output logic        palette_w, input_w, pixels_w,
   output logic        wm_w, ind_w,

   input  logic        zp_dma_start, dp_dma_start,
   output logic        zp_dma_done, dp_dma_done, dp_dma_done_dli,

   input logic         sysclk, reset, last_line
);

   logic [15:0]        DP, PP, DP_saved, ZP_saved;
   logic [4:0]         WIDTH;
   logic [3:0]         OFFSET;

   // control regs
   logic               DLIen, A12en, A11en;

   // states
   enum logic [1:0] {waiting, zp_dma, dp_dma, pp_dma} state;
   enum logic [2:0] {drive_zp_addr,w_offset,w_DPL,w_DPH} zp_state;
   enum logic [3:0] {drive_dp_addr, w_PPL, w_PALETTE_WIDTH,
                     w_PPH, w_PALETTE_WIDTH_2, w_INPUT,
                     drive_pp_addr, w_PIXELS, drive_next_zp_addr,
                     w_next_offset,w_next_DPL,w_next_DPH} dp_state;

   logic five_byte_mode, null_width, null_data, zero_offset;

   assign null_width = (DataB[4:0] == 5'b0);
   assign null_data = (DataB == 8'b0);
   assign zero_offset = (OFFSET == 4'b0);
   assign drive_AB = (state != waiting);

   always_ff @(posedge sysclk, posedge reset) begin
      if (reset) begin
         state <= waiting;
         zp_state <= drive_zp_addr;
         dp_state <= drive_dp_addr;
         zp_dma_done <= 0;
         dp_dma_done <= 0;
         five_byte_mode <= 0;
      end else begin
         case (state)
           waiting: begin
              state <= (zp_dma_start) ? zp_dma :
                       ((dp_dma_start) ? dp_dma : waiting);
              zp_dma_done <= 0;
              dp_dma_done <= 0;
           end
           ////////////////////////////////////////////////////////////
           zp_dma: begin
              case (zp_state)
                drive_zp_addr: begin // Read zp
                   zp_state <= w_offset;
                   AddrB <= ZP;
                   ZP_saved <= ZP+1;
                end
                w_offset: begin //write cbits and offset
                   zp_state <= w_DPL;
                   {DLIen,A12en,A11en} <= DataB[7:5];
                   OFFSET <= DataB[3:0];
                   AddrB <= ZP_saved;
                   ZP_saved <= ZP_saved+1;
                end
                w_DPL: begin //Write DPL
                   zp_state <= w_DPH;
                   DP[7:0] <= DataB;
                   AddrB <= ZP_saved;
                   ZP_saved <= ZP_saved+1;
                end
                w_DPH: begin //Write DPH
                   zp_state <= drive_zp_addr;
                   state <= waiting;
                   DP[15:8] <= DataB;
                   zp_dma_done <= 1'b1;
                end
              endcase // case (zp_state)
           end // case: zp_dma

           //////////////////////////////////////////////////////////////
           dp_dma: begin
              case (dp_state)
                drive_dp_addr: begin //read from dp
                   dp_state <= w_PPL;
                   AddrB <= DP;
                   DP <= DP+1;
                   five_byte_mode <= 0;
                end
                w_PPL: begin //Write PPL
                   dp_state <= w_PALETTE_WIDTH;
                   PP[7:0] <= DataB;
                   AddrB <= DP;
                   DP <= DP+1;
                end
                w_PALETTE_WIDTH:
                  // Write palette/width or determine 5b
                  // mode or find end of DP list
                  if (null_data) begin //Found end of DP list
                     dp_state <= (zero_offset) ?
                                 drive_next_zp_addr : drive_dp_addr;
                     state <= (zero_offset) ? state : waiting;
                     OFFSET <= zero_offset ? OFFSET : OFFSET-1;
                     dp_dma_done <= zero_offset ? 0 : 1;
                     DP <= DP_saved;
                  end else begin
                     // Write palette and width or determine its 5b mode
                     dp_state <= w_PPH;
                     five_byte_mode <= null_width;
                     wm_w <= null_width;
                     ind_w <= null_width;
                     palette_w <= ~null_width;
                     WIDTH <= DataB[4:0];
                     AddrB <= DP;
                     DP <= DP+1;
                  end
                w_PPH: begin //Write PPH
                   dp_state <= (five_byte_mode) ? w_PALETTE_WIDTH_2 : w_INPUT;
                   PP[15:8] <= DataB;
                   AddrB <= DP;
                   DP <= DP+1;
                   //cleanup from last state
                   wm_w <= 0;
                   ind_w <= 0;
                   palette_w <= 0;
                end
                w_PALETTE_WIDTH_2: begin //Write palette and width for realzies
                   dp_state <= w_INPUT;
                   palette_w <= 1;
                   WIDTH <= DataB[4:0];
                   AddrB <= DP;
                   DP <= DP+1;
                end
                w_INPUT: begin //write INPUT
                   dp_state <= drive_pp_addr;
                   input_w <= 1;
                   palette_w <= 0;
                end
                drive_pp_addr: begin //read from pp
                   dp_state <= w_PIXELS;
                   WIDTH <= WIDTH+1;
                   AddrB <= PP+{4'b0,OFFSET,8'b0};
                   PP <= PP+1;
                end
                w_PIXELS: begin //Write Pixel data
                   dp_state <= (WIDTH == 5'b0) ? drive_dp_addr : drive_pp_addr;
                   pixels_w <= 1;
                end
                /////////////////////////////////////////////////
                //Loading next zp when OFFSET has been decremented to 0
                drive_next_zp_addr: begin //Read zp
                   dp_state <= w_next_offset;
                   AddrB <= ZP_saved;
                   ZP_saved <= ZP_saved+1;
                end
                w_next_offset: begin //write cbits and offset
                   dp_state <= w_next_DPL;
                   {DLIen,A12en,A11en} <= DataB[7:5];
                   OFFSET <= DataB[3:0];
                   AddrB <= ZP_saved;
                   ZP_saved <= ZP_saved+1;
                end
                w_next_DPL: begin //Write DPL
                   dp_state <= w_next_DPH;
                   DP[7:0] <= DataB;
                   AddrB <= ZP_saved;
                   ZP_saved <= ZP_saved+1;
                end
                w_next_DPH: begin //Write DPH
                   dp_state <= drive_dp_addr;
                   state <= waiting;
                   DP[15:8] <= DataB;
                   dp_dma_done <= 1;
                end
              endcase // case (dp_state)
           end // case: dp_dma
         endcase
      end
   end // always_ff @
endmodule // dma_ctrl
