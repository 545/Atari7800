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

`include "atari7800.vh"

`define ROBOTRON 2'b00
`define    MSPAC 2'b01
`define   DIGDUG 2'b10
`define    MARIO 2'b11

module cart_top(
`ifndef SIM
    input  logic       CLOCK_PLL, reset,
`endif

    output logic [3:0] RED, GREEN, BLUE,
    output logic       HSync, VSync,
    
    output logic AC_ADR0, AC_ADR1, AC_GPIO0, AC_MCLK, AC_SCK,
    input  logic AC_GPIO1, AC_GPIO2, AC_GPIO3,
    inout  wire AC_SDA,
    
    output logic [7:0] ld,
    
    input logic [7:1] sw,
    input logic left, up, down, right, fire
    );
    
    logic [7:0]  cart_data_out;
    logic [15:0] AB;
    logic        RW;
    logic        pclk_0;
    
    ////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////
    

    
`ifdef SIM
    logic CLOCK_PLL, reset;
    
    initial begin
      #1 reset = 1'b0;
      #750 reset = 1'b1;
      #1250 reset = 1'b0;
      @(posedge console.lock_ctrl);
      #10000;
      $finish;
    end
    
    initial begin
       CLOCK_PLL = 1'b0;
       forever #5 CLOCK_PLL = ~CLOCK_PLL;          
    end
 `endif
    
    ////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////
    
    logic [3:0] idump;
    logic [1:0] ilatch;
    logic [7:0] PAin, PBin;
    
    assign PAin[7:4] = {~right, ~left, ~down, ~up};
    assign PAin[3:0] = 4'b1111;
    
    assign PBin[7] = sw[7]; // RDiff
    assign PBin[6] = sw[6]; // LDiff
    assign PBin[5] = 1'b0;  // Unused
    assign PBin[4] = 1'b0;
    assign PBin[3] = sw[3]; // Pause
    assign PBin[2] = 1'b0; // 2 Button mode
    assign PBin[1] = ~sw[1]; // Select
    assign PBin[0] = ~sw[2]; // Reset 
    
    assign ilatch[0] = ~fire;
    assign ilatch[1] = ~fire;
    
    assign idump = 4'b0;
    
    logic [7:0] robo_dout, mspac_dout, digdug_dout, mario_dout;
    logic sel_robo, sel_mspac, sel_digdug, sel_mario;
    
    assign sel_robo = ({sw[5],sw[4]} == `ROBOTRON);
    assign sel_mspac = ({sw[5],sw[4]} == `MSPAC);
    assign sel_digdug = ({sw[5],sw[4]} == `DIGDUG);
    assign sel_mario = ({sw[5],sw[4]} == `MARIO);
    assign cart_data_out = mspac_dout;
    /*        
    always_comb 
        case ({sel_robo,sel_mspac,sel_digdug,sel_mario})
        4'b1000: cart_data_out = robo_dout;
        4'b0100: cart_data_out = mspac_dout;
        4'b0010: cart_data_out = digdug_dout;
        4'b0001: cart_data_out = mario_dout;
        default: cart_data_out = 8'hbf;
        endcase*/
           
    /*CART_ROM robotron (
      .clka(pclk_0),    // input wire clka
      .addra(AB[14:0]),  // input wire [14 : 0] addra
      .douta(robo_dout)  // output wire [7 : 0] douta
    );*/
    
    MSPAC_ROM mspac (
      .clka(pclk_0),
      .addra(AB[13:0]),
      .douta(mspac_dout)
    );
    
    /*
    DIGDUG_ROM digdug (
      .clka(pclk_0),
      .addra(AB[13:0]),
      .douta(digdug_dout)
    );*/
    
    /*
    MARIO_ROM mario (
      .clka(pclk_0),
      .addra(AB[15:0] - 16'h4000),
      .douta(mario_dout)
    );*/
       
    
    
    
    Atari7800 console(
       .CLOCK_PLL(CLOCK_PLL),
       .reset(reset),
       .RED(RED), .GREEN(GREEN), .BLUE(BLUE),
       .HSync(HSync), .VSync(VSync),
       .AC_ADR0(AC_ADR0), .AC_ADR1(AC_ADR1), .AC_GPIO0(AC_GPIO0),
       .AC_MCLK(AC_MCLK), .AC_SCK(AC_SCK), .AC_GPIO1(AC_GPIO1),
       .AC_GPIO2(AC_GPIO2), .AC_GPIO3(AC_GPIO3), .AC_SDA(AC_SDA),
       
       .cart_DB_out(cart_data_out),
       .AB(AB),
       .RW(RW),
       .pclk_0(pclk_0),
       .ld(ld),
       
       .idump(idump), .ilatch(ilatch),
       .PAin(PAin), .PBin(PBin)
    );
    
    
    
endmodule
