`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/07/2015 11:22:25 AM
// Design Name:
// Module Name: maria
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

`default_nettype none

module maria(
    input               reset,
    input               sysclk_14_3,
    input               pclk_2,
    inout [15:0]        AB,
    inout [15:0]        DB,
    input               RW,
    input               maria_en,
    input [9:0]         vga_row_number,
    input               vga_outputting,
    output              tia_clk,
    output              pclk_0,
    output              ram0_b,
    output              ram1_b,
    output              p6532_b,
    output              tia_b,
    output              int_b,
    output              halt_b,
    output              ready,
    output [319:0][7:0] UV_line_out,
    );

   logic [15:0]         ZP, DP, PP;
   logic [7:0]          WIDTH;
   logic [3:0]          OFFSET;

   // Which cycle are we on in the current row
   logic [8:0]          row_cycle_count;

   // Determine if we have just moved to a new line
   logic [9:0]          vga_row_prev;
   logic                new_line;
   assign new_line = vga_row_prev != vga_row_number;

   enum {
      V_WAIT, 
      GET_ZONE,

      H_WAIT,
      GET_DL_OBJ,


   } state;

endmodule

module timing_ctrl (
      // chris
      output pclk0, tclk,
      output halt_b, int_b,ready,
      output zp_dma_start, dp_dma_start,
      input zp_dma_done, dp_dma_done,
      output lram_swap,
      input pclk2,
      input rw,
      input maria_en,
      input sysclk, reset
);


// counters and an fsm and logic and shit
endmodule

module dma_ctrl(

      //m arc
    output [15:0] AB,
    input [7:0] DB,

    output palette_w, input_w, pixels_w,

    input zp_dma_start, dp_dma_start,
    output zp_dma_done, dp_dma_done

    input sysclk, reset
);

endmodule

module memory_map(
  //merq
    input maria_en,
    input [15:0] AB,
    input [7:0] DB,
    output tia_b, p6532_b, ram0_b, ram1_b,
    output [7:0] ctrl,
    output [24:0][7:0] color_map,
    output [7:0] status_read,
    output [7:0] wait_sync
);

endmodule

module line_ram(
  ///chris
    output [319:0][7:0] playback,
    input [7:0] input_addr,
    input [2:0] palette,
    input [7:0] pixels,
    input [24:0][7:0] color_map,
    
    input [7:0] DB,
    // Signals from DMA:
    input palette_w,
    input input_w,
    input pixels_w,

    input sysclk, reset
);


endmodule


