`timescale 1ns / 1ps
`default_nettype none

`define 160A 3'b000
`define 160B 3'b100
`define 320A 3'b011
`define 320B 3'b110
`define 320C 3'b111
`define 320D 3'b010

module line_ram(
    input SYSCLK, RESET,
    output logic [7:0]  PLAYBACK,
    // Databus inputs
    input  logic [7:0]         INPUT_ADDR,
    input  logic [2:0]         PALETTE,
    input  logic [7:0]         PIXELS,
    input  logic               WM, IND,
    // Write enable for databus inputs
    input PALETTE_W, INPUT_W, PIXELS_W, WM_W, IND_W,
    // Memory mapped registers
    input  logic [24:0][7:0]   COLOR_MAP,
    input  logic [1:0]         READ_MODE,
    input  logic               KANGAROO_MODE, BORDER_CONTROL,
    input  logic               CHARACTER_WIDTH, COLOR_KILL,
    input  logic               LRAM_SWAP
    // VGA Control signal
    input  logic [8:0]         LRAM_OUT_COL
);

   logic [319:0][4:0]          lram_in, lram_out;

   reg [7:0]                 input_addr;
   reg [2:0]                 palette;
   reg                       wm, ind;

   logic [2:0]               display_mode;
   assign display_mode = {wm, READ_MODE};

   logic [2:0]               out_palette;
   logic [1:0]               out_pix;




   always_ff @(posedge SYSCLK, posedge RESET) begin
      if (RESET) begin
         input_addr <= 8'b0;
         palette <= 3'b0;
      end else begin
         input_addr <= INPUT_W ? INPUT_ADDR : input_addr;
         palette <= PALETTE_W ? PALETTE : palette;
         wm <= WM_W ? WM : wm;
         ind <= IND_W ? IND : ind;
         if (LRAM_SWAP) begin
            lram_in <= 800'd0; // All background color
            lram_out <= lram_in;
         end
         if (PIXELS_W) begin
            // Load PIXELS byte into lram_in
            case (display_mode)
              `160A: begin
                 // "In 160x2 mode, each pair of bits is arranged so that the
                 //  leftmost pixel's color is specified by the most significant
                 //  pair of bits, and the rightmost pixel by the least
                 //  significant pair of bits."
                 input_addr <= input_addr + 4;
                 lram_in[input_addr] <= {palette, PIXELS[7:6]};
                 lram_in[input_addr+1] <= {palette, PIXELS[5:4]};
                 lram_in[input_addr+2] <= {palette, PIXELS[3:2]};
                 lram_in[input_addr+3] <= {palette, PIXELS[1:0]};
              end
              `160B: begin
                 // "In 160x4 mode, the data is read as follows: the left
                 //  pixel's color is specified by bits 3, 2, 7, 6 (where 3
                 //  is MSB, 6 is LSB). The right pixel is specified by bits
                 //  1, 0, 5, 4  (where 1 is MSB, 4 is LSB).
                 input_addr <= input_addr + 2;
                 lram_in[input_addr] <= {palette[2], PIXELS[3:2],
                                         pixels[7:6]};
                 lram_in[input_addr+1] <= {palette[2], PIXELS[1:0],
                                           pixels[5:4]};
              end
              `320A: begin

              end
              `320B: begin

              end
              `320C: begin

              end
              `320D: begin

              end
         end
      end
   end

endmodule
