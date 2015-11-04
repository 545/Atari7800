`timescale 1ns / 1ps

`define TIA_SIG 4'b0111
`define P6532_SIG 4'b1011
`define RAM0_SIG 4'b1101
`define RAM1_SIG 4'b1110
`define NONE_SIG 4'b1111

module memory_map (
   input  logic             maria_en,
   input  logic [15:0]      AB,
   input  logic [7:0]       DB_in,
   output logic [7:0]       DB_out,
   output logic             drive_DB,
   input  logic             halt_b, we_b,
   output logic             tia_b, p6532_b, ram0_b, ram1_b,
   output logic             riot_ram_b,
   output logic [7:0]       ctrl,
   output logic [24:0][7:0] color_map,
   input  logic [7:0]       status_read,
   output logic [7:0]       char_base,
   output logic [15:0]      ZP,

   // whether to slow pclk_0 for slow memory accesses
   output logic             slow_clock,

   // when wait_sync is written to, ready is deasserted
   output logic             deassert_ready,

   input logic              sysclock, reset_b, pclk_0, pclk_2
);

   logic [3:0]              signals_out;
   logic [7:0]              wr_addr_found, read_addr_found;
   logic [7:0]              ZPH,ZPL;

   logic [7:0]              wait_sync;
   logic                    pav;


   assign slow_clock = ~tia_b | ~p6532_b;

   assign pav = 1'b1; // For now, since I don't think pclk_0 works
   // assign pav = pclk_0 | pclk_2;
   
   assign drive_DB = read_addr_found != 8'b0; // If read_addr_found is nonzero, assert maria chip select
   
   assign {tia_b, p6532_b, ram0_b, ram1_b} = signals_out;   

   always_comb begin
      ZP = {ZPH,ZPL};
      
      riot_ram_b = 1'bx;

      //Set output signal for {tia,6532,ram0,ram1} depending on addr
      casex ({maria_en, AB[15:5], pav, halt_b})
        //6532
        {1'b1, 11'b0000_010x_1xx, 1'bx, 1'bx}: begin
            signals_out = `P6532_SIG;
            riot_ram_b = 1'b0;        
        end

        {1'b1, 11'b0000_0010_1xx, 1'bx, 1'bx}: begin
            signals_out = `P6532_SIG;
            riot_ram_b = 1'b1;
        end
        
        {1'b0, 11'bxxx0_xx0x_1xx, 1'bx, 1'bx}: begin
            signals_out = `P6532_SIG;
            riot_ram_b = 1'b0;
        end
        {1'b0, 11'bxxx0_xx1x_1xx, 1'bx, 1'bx}: begin
            signals_out = `P6532_SIG;
            riot_ram_b = 1'b1;
        end

        //RAM1
        {1'b1, 11'b0001_1xxx_xxx, 1'bx, 1'bx}: signals_out = `RAM1_SIG;
        
        //{1'b1, 11'b0001_1xxxxxx, 1'b1, 1'b0}: 

        //TIA
        {1'b1, 11'b0000_00xx_000, 1'bx, 1'bx},
        {1'b0, 11'bxxx0_xxxx_0xx, 1'bx, 1'bx}: signals_out = `TIA_SIG;

        //RAM0
        {1'b1, 11'b0000_00xx_1xx, 1'bx, 1'bx},
        //{1'b1, 11'b0000_00xx1xx, 1'b1, 1'b0},
        {1'b1, 11'b0000_00xx_01x, 1'bx, 1'bx},
        //{1'b1, 11'b0000_00xx01x, 1'b1, 1'b0},
        {1'b1, 11'b0010_0xxx_xxx, 1'bx, 1'bx}: signals_out = `RAM0_SIG;
        //{1'b1, 11'b0010_0xxxxxx, 1'b1, 1'b0}: 

        default: signals_out = `NONE_SIG;
      endcase

      //Find write addresses on bus to latch data on next tick
      casex ({AB, we_b})
        {16'b0000_00xx_001x_xxxx,1'b0}: wr_addr_found = AB[7:0];
        default: wr_addr_found = 8'b0;
      endcase
      
      casex ({AB, we_b})
        {16'b0000_00xx_001x_xxxx,1'b1}: read_addr_found = AB[7:0];
        default: read_addr_found = 8'b0;
      endcase
      
      
   end // always_comb

   always_ff @(posedge sysclock, negedge reset_b) begin
      if (~reset_b) begin
         ctrl <= {1'b0, 2'b10, 1'b0, 1'b0, 1'b0, 2'b00}; // 8'b0
         //color_map <= 200'b0;
         //////// TESTING COLOR MAP /////////
         // Background
         color_map[0] <= 8'h0c;
         // Palette 0
         color_map[3:1] <= {8'h32, 8'h55, 8'h55};
         // Palette 1
         color_map[6:4] <= {8'h83, 8'h55, 8'h55};
         // Palette 2
         color_map[9:7] <= {8'h1c, 8'h55, 8'h55};
         // Palette 3
         color_map[12:10] <= {8'h25, 8'h55, 8'h55};
         // Palette 4
         color_map[15:13] <= {8'hda, 8'h55, 8'h55};
         
         color_map[24:16] <= 'b0;
                  
         wait_sync <= 8'b0;
         char_base <= 8'b0;
         {ZPH,ZPL} <= {8'h18, 8'h20};
      end
      
      else begin
         deassert_ready <= 1'b0;
         //Handle writes to mem mapped regs
         case(wr_addr_found)
           8'h20: color_map[0] <= DB_in;
           8'h21: color_map[1] <= DB_in;
           8'h22: color_map[2] <= DB_in;
           8'h23: color_map[3] <= DB_in;
           8'h24: begin
              wait_sync <= DB_in;
              deassert_ready <= 1'b1;
           end
           8'h25: color_map[4] <= DB_in;
           8'h26: color_map[5] <= DB_in;
           8'h27: color_map[6] <= DB_in;
           //8'h28: status_read <= DB_in; Read only
           8'h29: color_map[7] <= DB_in;
           8'h2a: color_map[8] <= DB_in;
           8'h2b: color_map[9] <= DB_in;
           8'h2c: ZPH <= DB_in;
           8'h2d: color_map[10] <= DB_in;
           8'h2e: color_map[11] <= DB_in;
           8'h2f: color_map[12] <= DB_in;
           8'h30: ZPL <= DB_in;
           8'h31: color_map[13] <= DB_in;
           8'h32: color_map[14] <= DB_in;
           8'h33: color_map[15] <= DB_in;
           8'h34: char_base <= DB_in;
           8'h35: color_map[16] <= DB_in;
           8'h36: color_map[17] <= DB_in;
           8'h37: color_map[18] <= DB_in;
           //8'h38: NOT USED
           8'h39: color_map[19] <= DB_in;
           8'h3a: color_map[20] <= DB_in;
           8'h3b: color_map[21] <= DB_in;
           8'h3c: ctrl <= DB_in;
           8'h3d: color_map[22] <= DB_in;
           8'h3e: color_map[23] <= DB_in;
           8'h3f: color_map[24] <= DB_in;
           default: ;
         endcase // case (wr_addr_found)
         
         case(read_addr_found)
            8'h20: DB_out <= color_map[0];
            8'h21: DB_out <= color_map[1];
            8'h22: DB_out <= color_map[2];
            8'h23: DB_out <= color_map[3];
            8'h25: DB_out <= color_map[4];
            8'h26: DB_out <= color_map[5];
            8'h27: DB_out <= color_map[6];
            //8'h28: status_read <= DB_in; Read only
            8'h29: DB_out <= color_map[7];
            8'h2a: DB_out <= color_map[8];
            8'h2b: DB_out <= color_map[9];
            8'h2c: DB_out <= ZPH <= DB_in;
            8'h2d: DB_out <= color_map[10];
            8'h2e: DB_out <= color_map[11];
            8'h2f: DB_out <= color_map[12];
            8'h30: DB_out <= ZPL <= DB_in;
            8'h31: DB_out <= color_map[13];
            8'h32: DB_out <= color_map[14];
            8'h33: DB_out <= color_map[15];
            8'h34: DB_out <= char_base;
            8'h35: DB_out <= color_map[16];
            8'h36: DB_out <= color_map[17];
            8'h37: DB_out <= color_map[18];
            //8'h38: NOT USED
            8'h39: DB_out <= color_map[19];
            8'h3a: DB_out <= color_map[20];
            8'h3b: DB_out <= color_map[21];
            8'h3c: DB_out <= ctrl <= DB_in;
            8'h3d: DB_out <= color_map[22];
            8'h3e: DB_out <= color_map[23];
            8'h3f: DB_out <= color_map[24];
            default: DB_out <= 8'hbe;
          endcase // case (wr_addr_found)
      end // else: !if(~reset_b)
   end // always_ff @
endmodule
