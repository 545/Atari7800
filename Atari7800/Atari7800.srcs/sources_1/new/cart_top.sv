`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2015 11:36:06 AM
// Design Name: 
// Module Name: cart_top
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


module cart_top(
    input  logic       CLOCK_PLL, reset,
    output logic [3:0] RED, GREEN, BLUE,
    output logic       HSync, VSync,
    
    output logic AC_ADR0, AC_ADR1, AC_GPIO0, AC_MCLK, AC_SCK,
    input  logic AC_GPIO1, AC_GPIO2, AC_GPIO3,
    inout  wire AC_SDA
    );
    
    logic [7:0]  cart_data_out;
    logic [15:0] AB;
    logic        RW;
    logic        pclk_2;
    
    CART_ROM robotron (
      .clka(pclk_2),    // input wire clka
      .wea(1'b0),      // input wire [0 : 0] wea
      .addra(AB),  // input wire [14 : 0] addra
      .dina(8'b0),    // input wire [7 : 0] dina
      .douta(cart_data_out)  // output wire [7 : 0] douta
    );
    
    Atari7800 console(
       .CLOCK_PLL(CLOCK_PLL),
       .reset(reset),
       .RED(RED), .GREEN(GREEN), .BLUE(BLUE),
       .HSync(HSync), .VSync(VSync),
       .AC_ADR0(AC_ADR0), .AC_ADR1(AC_ADR1), .AC_GPIO0(AC_GPIO0),
       .AC_MCLK(AC_MCLK), .AC_SCK(AC_SCK), .AC_GPIO1(AC_GPIO1),
       .AC_GPIO2(AC_GPIO2), .AC_GPIO3(AC_GPIO3),
       
       .cart_DB_out(cart_data_out),
       .AB(AB),
       .RW(RW),
       .pclk_2(pclk_2)
    );
    
    
    
endmodule
