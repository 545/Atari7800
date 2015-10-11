`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2015 06:41:19 PM
// Design Name: 
// Module Name: line_ram
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
`default_nettype none

module line_ram(
    input SYSCLK, RESET,
    output logic [319:0][7:0]  PLAYBACK,
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
    input  logic               CHARACTER_WIDTH, COLOR_KILL
);

    

endmodule
