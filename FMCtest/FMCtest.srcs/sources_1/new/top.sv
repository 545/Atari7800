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
    output  logic [15:0] cart_ab,
    input   logic [7:0] cart_db,
    output logic [3:0] cart_misc, //RW,halt,irq,pclk
    output logic [6:0]  controller_0_fmc, controller_1_fmc,
    input  logic        CLOCK_PLL,
    input logic PB_UP
    );
    
    logic RW, pclk_0;
    assign RW = ~PB_UP;
    
    assign ld = cart_db;
    
    // CARTRIDGE PINOUT
    // http://www.atarihq.com/danb/7800cart/a7800cart.shtml
    
    assign cart_ab = {8'hff, sw};
    assign cart_misc = {RW, 2'b10, pclk_0};
    
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
