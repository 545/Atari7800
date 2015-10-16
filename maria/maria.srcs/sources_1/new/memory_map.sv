`timescale 1ns / 1ps
`default_nettype none

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
   logic [7:0]              wr_addr_found;
   logic [7:0]              ZPH,ZPL;

   logic [7:0]              wait_sync;
   logic                    pav;

   assign drive_DB = we_b & maria_en & (wr_addr_found == 8'h24);
   assign DB_out = status_read;

   assign slow_clock = ~tia_b | ~p6532_b;

   assign pav = 1'b1; // For now, since I don't think pclk_0 works
   // assign pav = pclk_0 | pclk_2;

   always_comb begin
      {tia_b, p6532_b, ram0_b, ram1_b} = signals_out;
      ZP = {ZPH,ZPL};

      //Set output signal for {tia,6532,ram0,ram1} depending on addr
      casex ({maria_en, AB[15:5], pav, halt_b})
        //6532
        {1'b1, 11'b0000_010x1xx, 1'bx, 1'bx},
        {1'b1, 11'b0000_001x1xx, 1'bx, 1'bx},
        {1'b0, 11'bxxx0_xxxx1xx, 1'bx, 1'bx}: signals_out = `P6532_SIG;

        //RAM1
        {1'b1, 11'b0001_1xxxxxx, 1'bx, 1'b1},
        {1'b1, 11'b0001_1xxxxxx, 1'b1, 1'b0}: signals_out = `RAM1_SIG;

        //TIA
        {1'b1, 11'b0000_00xx000, 1'bx, 1'bx},
        {1'b0, 11'bxxx0_xxxx0xx, 1'bx, 1'bx}: signals_out = `TIA_SIG;

        //RAM0
        {1'b1, 11'b0000_00xx1xx, 1'bx, 1'b1},
        {1'b1, 11'b0000_00xx1xx, 1'b1, 1'b0},
        {1'b1, 11'b0000_00xx01x, 1'bx, 1'b1},
        {1'b1, 11'b0000_00xx01x, 1'b1, 1'b0},
        {1'b1, 11'b0010_0xxxxxx, 1'bx, 1'b1},
        {1'b1, 11'b0010_0xxxxxx, 1'b1, 1'b0}: signals_out = `RAM0_SIG;

        default: signals_out = `NONE_SIG;
      endcase

      //Find write addresses on bus to latch data on next tick
      casex ({AB, we_b})
        {16'h002x,1'b0}: wr_addr_found = AB[7:0];
        {16'h003x,1'b0}: wr_addr_found = AB[7:0];
        default: wr_addr_found = 8'b0;
      endcase
   end // always_comb

   always_ff @(posedge sysclock, negedge reset_b) begin
      if (~reset_b) begin
         ctrl <= 8'b0;
         color_map <= 200'b0;
         wait_sync <= 8'b0;
         char_base <= 8'b0;
         {ZPH,ZPL} <= 16'b0;
         deassert_ready <= 1'b0;
      end else begin
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
           8'h28: ; // Read only
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
      end // else: !if(~reset_b)
   end // always_ff @
endmodule
