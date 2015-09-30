`default_nettype none

/* top module for view-testing the vga module
 * Divides the screen into quadrants:
 * -----------------
 * |  RED |  GREEN |
 * -----------------
 * | BLUE | YELLOW |
 * -----------------
 *
 * CLOCK_PLL should be the system (Y9) clock
 * reset is system reset
 * RED, GREEN, BLUE, HSync, VSync should be connected to the VGA pins
 */
module top (
   input logic        CLOCK_PLL, reset,

   output logic [3:0] RED, GREEN, BLUE,
   output logic       HSync, VSync
);

   logic [639:0][2:0][3:0] lbuffer;
   logic [8:0]             line_number;

   logic                   CLOCK_100, CLOCK_25, CLOCK_7_143, CLOCK_9_524;

   // Output of clock divider. Don't know what it does.
   logic                   clock_divider_locked;

    assign lbuffer = (line_number < 240) ?
        {{320{4'h0, 4'hf, 4'h0}}, {320{4'h0, 4'h0, 4'hf}}} :
        {{320{4'h0, 4'hf, 4'hf}}, {320{4'hf, 4'h0, 4'h0}}}
    ;

    frame_buf_to_vga vga_if (
       .clk(CLOCK_25), .reset(reset),
       .lbuffer(lbuffer),
       .RED(RED), .GREEN(GREEN), .BLUE(BLUE),
       .HSync(HSync), .VSync(VSync),
       .line_number(line_number)
    );

   clock_divider divider (
     .clk_in1(CLOCK_PLL),

     // Clock out ports
     .CLOCK_100(CLOCK_100), // 100 MHz
     .CLOCK_25(CLOCK_25),  // 25 MHz
     .CLOCK_7_143(CLOCK_7_143), // 7.143 MHz. Divide to 1.79 MHz
     .CLOCK_9_524(CLOCK_9_524), // 9.524 MHz. Divide to 1.19 MHz
     // Status and control signals
     .reset(reset),
     .locked(clock_divider_locked)
    );

endmodule
