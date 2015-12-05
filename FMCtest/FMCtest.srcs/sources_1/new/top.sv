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
    output  logic [28:8] cart_fmc,
    inout   logic [7:0] cart_db,
    output logic [6:0]  controller_0_fmc, controller_1_fmc,
    input  logic        CLOCK_PLL,
    input logic PB_UP
    );
    
    logic [15:0] AB;
    assign AB = {8'hff, sw}; 
    
    logic RW, pclk_0;
    assign RW = ~PB_UP;
    
    assign ld = cart_db;
    
    // CARTRIDGE PINOUT
    // http://www.atarihq.com/danb/7800cart/a7800cart.shtml
    
    assign cart_fmc = {
       RW,
       AB[0],
       AB[1],
       AB[2],
       AB[3],
       AB[4],
       AB[5],
       AB[6],
       AB[7],
       AB[8],
       AB[9],
       AB[10],
       AB[11],
       AB[12],
       AB[13],
       AB[14],
       AB[15],
       pclk_0,           // Pin 32: Clock from 6502
       1'b1,
       ~RW,
       1'b1
    };
    
    assign cart_db = RW ? 8'bz : 8'hff;
    
    logic sysclk, clk_locked;
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
