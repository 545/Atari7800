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
`default_nettype none

module uv_to_vga (
    input logic              clk, reset,
    input logic [319:0][7:0] lbuffer,

    output logic             outputting,
    output logic [9:0]       line_number,
    output logic [3:0]       RED, GREEN, BLUE,
    output logic             HSync, VSync
);

   reg [9:0]                      col_count, row_count;
   logic                          col_clear, row_clear;
   logic                          col_enable, row_enable;

   logic [3:0]                    luminance, chrominance;

   // TODO: Figure out proper UV conversion
   assign {chrominance, luminance} = lbuffer[col_count[9:1]];

   // TODO: This is definitely wrong
   assign RED   = chrominance[2] ? luminance : 4'b0;
   assign GREEN = chrominance[1] ? luminance : 4'b0;
   assign BLUE  = chrominance[0] ? luminance : 4'b0;

   assign line_number = row_count[9:0];

   assign outputting = (row_count < 10'd480) & (col_count < 10'd640);

   // Row counter counts from 0 to 520
   //     count of   0 - 479 is display time (row_count == line_number here)
   //     count of 480 - 489 is front porch
   //     count of 490 - 491 is VS=0 pulse width
   //     count of 492 - 525 is back porch

   always @(posedge clk, posedge reset)
     if (reset | row_clear)
       row_count <= 10'd0;
     else
       row_count <= row_count + row_enable;

   assign row_clear  = (row_count == 10'd524) & row_enable;
   assign row_enable = (col_count == 11'd799);
   assign VSync      = (row_count < 10'd490) | (row_count > 10'd491);

   // Col counter counts from 0 to 799
   //     count of   0 - 639 is display time
   //     count of 640 - 655 is front porch
   //     count of 656 - 751 is HS=0 pulse width
   //     count of 752 - 799 is back porch

   always @(posedge clk, posedge reset)
     if (reset | col_clear)
       col_count <= 10'd0;
     else
       col_count <= col_count + col_enable;

   assign col_clear  = (col_count >= 10'd799);
   assign col_enable = 1'b1;
   assign HSync      = (col_count < 10'd656) | (col_count > 10'd751);

endmodule
