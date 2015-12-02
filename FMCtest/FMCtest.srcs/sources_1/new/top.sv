`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2015 06:06:00 PM
// Design Name: 
// Module Name: top
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


module top(
    output logic [7:0]  ld,
    input  logic [7:0]  sw,
    inout  logic [31:0] cart_fmc,
    output logic [6:0]  controller_0_fmc, controller_1_fmc,
    input  logic        CLOCK_PLL
    );
    
    logic [15:0] AB;
    assign AB = {8'hff, sw}; 
    
    logic RW;
    assign RW = 1'b1;
    
    logic [7:0] DB;
    assign ld = DB;
    
    // CARTRIDGE PINOUT
    // http://www.atarihq.com/danb/7800cart/a7800cart.shtml
    
    assign cart_fmc = {
       pclk_0,           // Pin 32: Clock from 6502
       'bz,              // Pin 31: IRQ to 6502
       1'b0,             // Pin 30: Ground
       RW ? 'bz : DB[2], // Pin 29: D2 to/from 6502
       RW ? 'bz : DB[1], // Pin 28: D1 to/from 6502
       RW ? 'bz : DB[0], // Pin 27: D0 to/from 6502
       AB[ 0],           // Pin 26: A0 from 6502
       AB[ 1],           // Pin 25: A1 from 6502
       AB[ 2],           // Pin 24: A2 from 6502
       AB[ 3],           // Pin 23: A3 from 6502
       AB[ 4],           // Pin 22: A4 from 6502
       AB[ 5],           // Pin 21: A5 from 6502
       AB[ 6],           // Pin 20: A6 from 6502
       AB[ 7],           // Pin 19: A7 from 6502
       'bz,              // Pin 18: External Audio to system
       AB[15],           // Pin 17: A15 from 6502
       AB[14],           // Pin 16: A14 from 6502
       AB[13],           // Pin 15: A13 from 6502
       1'b0,             // Pin 14: Ground
       1'b1,             // Pin 13: +5 VDC
       AB[ 8],           // Pin 12: A8 from 6502
       AB[ 9],           // Pin 11: A9 from 6502
       AB[11],           // Pin 10: A11 from 6502
       AB[10],           // Pin  9: A10 from 6502
       AB[12],           // Pin  8: A12 from 6502
       RW ? 'bz : DB[7], // Pin  7: D7 to/from 6502
       RW ? 'bz : DB[6], // Pin  6: D6 to/from 6502
       RW ? 'bz : DB[5], // Pin  5: D5 to/from 6502
       RW ? 'bz : DB[4], // Pin  4: D4 to/from 6502
       RW ? 'bz : DB[3], // Pin  3: D3 to/from 6502
       1'b1,             // Pin  2: Halt to 6502 -- Don't forward halt to cartridge
       RW                // Pin  1: Read/Write from 6502, low = Write
    };
    
    logic sysclk, pclk_0, clk_locked;
    clk_wiz_0 clock_divider (
        .clk_in1(CLOCK_PLL),
        .clk_out1(sysclk),
        .reset(1'b0),
        .locked(clk_locked)
    );
    
    logic [1:0] pclk_ctr = 2'b00;
    
    always_ff @(posedge sysclk)
       pclk_ctr <= pclk_ctr + 2'b01;
       
    assign pclk_0 = pclk_ctr[1];
    
 endmodule
