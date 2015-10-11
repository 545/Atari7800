`default_nettype none

module dma_ctrl(
    // Mark
    output [15:0] AB,
    input [7:0] DB,

    output palette_w, input_w, pixels_w,

    input zp_dma_start, dp_dma_start,
    output zp_dma_done, dp_dma_done,

    input sysclk, reset
);

   logic [15:0]         ZP, DP, PP;
   logic [7:0]          WIDTH;
   logic [3:0]          OFFSET;


endmodule