`timescale 1ns / 1ps
/** Line buffer to VGA Interface
 *
 *  input lbuffer is the line buffer.
 *  For column c, 0 <= c < 640, where 0 is left and 639 is right,
 *  lbuffer[c][0] is RED, where 4'hF is the most intense red and
 *  4'h0 is the least intense red.
 *  lbuffer[c][1] is GREEN and lbuffer[c][2] is BLUE.
 *
 *  output line_number indicates the current row, where the top
 *  of the screen is 0 and 479 is the bottom of the screen. Other
 *  values indicate that no line is currently being drawn.
 *
 *  clk should be hooked up to a 25MHz clock (or 25.175 if available.)
 *  reset should be hooked up to system reset.
 *  RED, GREEN, BLUE, HSync, and VSync should be hooked up to the
 *  appropriate VGA pins.
 **/

module uv_to_vga (
    input logic        clk, reset,
    input logic [7:0]  uv_in,

    output logic [9:0] row, col,
    output logic [3:0] RED, GREEN, BLUE,
    output logic       HSync, VSync,
    
    input logic tia_en, tia_clk,
    input logic tia_hblank,
    input logic tia_vsync
);
 
   
 
   logic               col_clear, row_clear;
   logic               col_enable, row_enable;

   // Chrominance-Luminance palettes (represented as rgb)
   logic [255:0][3:0]  red_palette, green_palette, blue_palette;
   
   logic [7:0] rbuf, gbuf, bbuf;
   logic [7:0] uv;
   
   logic [7:0] buf_col;
   assign buf_col = (col >= 10'd640) ? 8'd159 : col[9:2];
   
   assign uv = (~tia_en) ? uv_in : (write_buf1 ? tia_buf2[buf_col] : tia_buf1[buf_col]);
   assign RED = rbuf;
   assign GREEN = gbuf;
   assign BLUE = bbuf;
   // UV Palette data found at: http://atariage.com/forums/topic/209210-complete-ntsc-pal-color-palettes/
   // These three assign statements generated by Atari7800/palettes.py
   assign red_palette = {4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'h2, 4'h1, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'hf, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'hf, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'h2, 4'h1, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'h2, 4'h1, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0};
   assign rbuf = red_palette[uv];

   assign green_palette = {4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'hf, 4'hf, 4'hf, 4'hf, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'h2, 4'h1, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h2, 4'h1, 4'h0, 4'hf, 4'hf, 4'he, 4'hd, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h1, 4'h0, 4'h0, 4'hf, 4'he, 4'hd, 4'hc, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h1, 4'h0, 4'h0, 4'h0, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'he, 4'hd, 4'hc, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h0, 4'h0, 4'h0, 4'h0, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'hf, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'he, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0};
   assign gbuf = green_palette[uv];

   assign blue_palette = {4'ha, 4'h9, 4'h8, 4'h7, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'ha, 4'h9, 4'h8, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'hc, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'hf, 4'he, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h4, 4'h3, 4'h2, 4'h1, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'hf, 4'hf, 4'hf, 4'hf, 4'hd, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h4, 4'h3, 4'h2, 4'h1, 4'hf, 4'he, 4'hc, 4'hb, 4'ha, 4'h9, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'hb, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'ha, 4'h9, 4'h8, 4'h7, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'h0, 4'hf, 4'hf, 4'he, 4'hd, 4'hc, 4'hb, 4'ha, 4'h8, 4'h7, 4'h6, 4'h5, 4'h4, 4'h3, 4'h2, 4'h1, 4'h0};
   assign bbuf = blue_palette[uv];


   // Row counter counts from 0 to 520
   //     count of   0 - 479 is display time (row == line_number here)
   //     count of 480 - 489 is front porch
   //     count of 490 - 491 is VS=0 pulse width
   //     count of 492 - 525 is back porch

   logic tia_vsync_prev, tia_vsync_prev_prev;
   logic tia_vsync_delta;
   always @(posedge clk)
      tia_vsync_prev <= tia_vsync;
   always @(posedge clk)
      tia_vsync_prev_prev <= tia_vsync_prev;
      
   assign tia_vsync_delta = (tia_vsync_prev & ~tia_vsync_prev_prev);

   always @(posedge clk, posedge reset)
     if (reset)
       row <= 10'd519;
     else if (tia_en & tia_vsync_delta)
       row <= 10'd490;
     else if (row_clear)
       row <= 10'd0;
     else 
       row <= row + row_enable;

   assign row_clear  = (row == 10'd524) & row_enable;
   assign row_enable = (col == 10'd799);
   assign VSync      = (row < 10'd490) | (row > 10'd491);

   // Col counter counts from 0 to 799
   //     count of   0 - 639 is display time
   //     count of 640 - 655 is front porch
   //     count of 656 - 751 is HS=0 pulse width
   //     count of 752 - 799 is back porch

   always @(posedge clk, posedge reset)
     if (reset | col_clear)
       col <= 10'd0;
     else
       col <= col + col_enable;
       
   logic [7:0] tia_buf_col;
   logic write_buf1;
   logic [7:0] tia_buf1 [159:0];
   logic [7:0] tia_buf2 [159:0];
   integer i;
   
   always @(posedge tia_hblank)
    write_buf1 <= ~write_buf1;
       
   always @(posedge tia_clk, posedge reset) begin
      if (reset) begin
         tia_buf_col <= 7'b0;
         for (i=0;i<160;i=i+1) begin
            tia_buf1[i] <= 8'b0;
            tia_buf2[i] <= 8'b0;
         end
      end else if (tia_en & tia_vsync_delta) begin
         tia_buf_col <= 7'b0;
         for (i=0;i<160;i=i+1) begin
            tia_buf1[i] <= 8'b0;
            tia_buf2[i] <= 8'b0;
         end
      end else if (tia_hblank)
         tia_buf_col <= 8'd160;
      else if (tia_buf_col == 8'd227)
         tia_buf_col <= 8'd0;
      else begin
         tia_buf_col <= tia_buf_col + 1;
         if (write_buf1)
            tia_buf1[tia_buf_col] <= uv_in;
         else
            tia_buf2[tia_buf_col] <= uv_in;
      end
   end

   assign col_clear  = row_enable;
   assign col_enable = 1'b1;
   assign HSync      = (col < 10'd656) | (col > 10'd751);

endmodule
