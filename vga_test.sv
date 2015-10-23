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
   output logic       HSync, VSync,
   output logic [7:0] ld,
   input  logic [7:0] sw
);

   //logic [639:0][2:0][3:0] lbuffer;
   logic [7:0] uv_in;
   
   logic [9:0]             row, col;

   logic                   CLOCK_100, CLOCK_25, CLOCK_7_143, CLOCK_9_524;

   // Output of clock divider. Don't know what it does.
   logic                   clock_divider_locked;

    logic [2:0] ROW_REGION;
    logic [2:0] COL_REGION;
    
    assign ROW_REGION = row > 10'd464 ? 2'b00 : (
                        row > 10'd448 ? 2'b11 : (
                        row > 10'd250 ? 2'b00 : (
                        row > 10'd230 ? 2'b10 : (
                        row > 10'd32  ? 2'b00 : (
                        row > 10'd16  ? 2'b01 : 2'b00)))));
                        
    assign COL_REGION = col > 10'd624 ? 2'b00 : (
                        col > 10'd608 ? 2'b11 : (
                        col > 10'd331 ? 2'b00 : (
                        col > 10'd310 ? 2'b10 : (
                        col > 10'd32  ? 2'b00 : (
                        col > 10'd16  ? 2'b01 : 2'b00)))));
                                            
    assign ld[3:0] = {ROW_REGION, COL_REGION};
    
    assign uv_in[7:4] = (~(|ROW_REGION) | ~(|COL_REGION)) ? 4'b0000 : sw[7:4];
    assign uv_in[3:0] = (~(|ROW_REGION) | ~(|COL_REGION)) ? 4'b1111: (2 * ((ROW_REGION - 1) * 3 + (COL_REGION - 1))); 
    
    uv_to_vga uvvga (    
        .clk(CLOCK_25), .reset(reset),
        .uv_in(uv_in),
        .row(row), .col(col),
        .RED(RED), .GREEN(GREEN), .BLUE(BLUE),
        .HSync(HSync), .VSync(VSync)
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
