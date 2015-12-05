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

`define    INPUT_CYCLES 5

module cart_top(
`ifndef SIM
    input  logic       CLOCK_PLL,
`endif

    output logic [3:0] RED, GREEN, BLUE,
    output logic       HSync, VSync,
    
    output logic AC_ADR0, AC_ADR1, AC_GPIO0, AC_MCLK, AC_SCK,
    input  logic AC_GPIO1, AC_GPIO2, AC_GPIO3,
    inout  wire AC_SDA,
    
    output logic [7:0] ld,
    
    input logic [7:0] sw,
    input logic PB_UP,PB_DOWN,PB_LEFT,PB_RIGHT,PB_CENTER,

    
    inout logic [6:0] ctrl_0_fmc, ctrl_1_fmc
    );
    
    logic [7:0]  cart_data_out;
    logic [15:0] AB;
    logic        RW;
    logic        pclk_0;
    reg [`INPUT_CYCLES-1:0]    paddleA0SR = {`INPUT_CYCLES{1'b0}};
    reg [`INPUT_CYCLES-1:0]    paddleB0SR = {`INPUT_CYCLES{1'b0}};
    reg [`INPUT_CYCLES-1:0]    paddleA1SR = {`INPUT_CYCLES{1'b0}};
    reg [`INPUT_CYCLES-1:0]    paddleB1SR = {`INPUT_CYCLES{1'b0}}; 
    
    always_ff @(posedge pclk_0) begin
        paddleA0SR <= {paddleA0SR[`INPUT_CYCLES-2:0],ctrl_0_fmc[6]};
        paddleB0SR <= {paddleB0SR[`INPUT_CYCLES-2:0],ctrl_0_fmc[4]};
        paddleA1SR <= {paddleA1SR[`INPUT_CYCLES-2:0],ctrl_1_fmc[6]};
        paddleB1SR <= {paddleB1SR[`INPUT_CYCLES-2:0],ctrl_1_fmc[4]};
    end
    
    ////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////
    logic [3:0] idump;
    logic [1:0] ilatch;
    logic [7:0] PAin, PBin, PAout, PBout;
    
    logic right_0_b, left_0_b, down_0_b, up_0_b, fire_0_b, paddle_A_0, paddle_B_0;
    logic right_1_b, left_1_b, down_1_b, up_1_b, fire_1_b, paddle_A_1, paddle_B_1;
    logic player1_2bmode, player2_2bmode;
    
    assign player1_2bmode = ~PBout[2] & ~tia_en;
    assign player2_2bmode = ~PBout[4] & ~tia_en;
    
    assign {right_0_b, left_0_b, down_0_b, up_0_b} = ctrl_0_fmc[3:0];
    assign {right_1_b, left_1_b, down_1_b, up_1_b} = ctrl_1_fmc[3:0];
    
    assign paddle_B_0 = &paddleB0SR;
    assign paddle_B_1 = &paddleB1SR;
    assign paddle_A_0 = &paddleA0SR;
    assign paddle_A_1 = &paddleA1SR;
    
    assign fire_0_b = (~paddle_A_0 & ~paddle_B_0);
    assign fire_1_b = (~paddle_A_1 & ~paddle_B_1); 
    
    
    logic reset;
`ifdef SIM
    logic CLOCK_PLL;
    
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
    logic [7:0] PAin, PBin, PAout, PBout;
    logic tia_en;
    
    assign PAin[7:4] = {right_0_b, left_0_b, down_0_b, up_0_b};
    assign PAin[3:0] = {right_1_b, left_1_b, down_1_b, up_1_b};
    
    assign PBin[7] = sw[1]; // RDiff
    assign PBin[6] = sw[0]; // LDiff
    assign PBin[5] = 1'b0;  // Unused
    assign PBin[4] = 1'b0;
    assign PBin[3] = ~PB_DOWN; // Pause
    assign PBin[2] = 1'b0; // 2 Button mode
    assign PBin[1] = ~PB_LEFT; // Select
    assign PBin[0] = ~PB_UP; // Reset 
    
    assign reset = PB_RIGHT;
    
    assign ilatch[0] = fire_0_b;
    assign ilatch[1] = fire_1_b;
    
    assign idump = {paddle_A_0, paddle_B_0, paddle_A_1, paddle_B_1};
    
    logic [7:0] robo_dout, mspac_dout, digdug_dout, cent_dout;
    logic sel_robo, sel_mspac, sel_digdug, sel_mario;
    
    //assign sel_robo = ({sw[5],sw[4]} == `ROBOTRON);
    //assign sel_mspac = ({sw[5],sw[4]} == `MSPAC);
    //assign sel_digdug = ({sw[5],sw[4]} == `DIGDUG);
    //assign sel_mario = ({sw[5],sw[4]} == `MARIO);
    //assign cart_data_out = digdug_dout;
    
    assign sel_mspac = sw[4];
    
    /*always_comb 
        case (sw[5:4])
        `ROBOTRON: cart_data_out = robo_dout;
        `MSPAC: cart_data_out = mspac_dout;
        `DIGDUG: cart_data_out = digdug_dout;
        `MARIO: cart_data_out = mario_dout;
        default: cart_data_out = 8'hbf;
        endcase*/
    assign cart_data_out = robo_dout;
           
    CART_ROM robotron (
      .clka(pclk_0),    // input wire clka
      .addra(AB[14:0]),  // input wire [14 : 0] addra
      .douta(robo_dout)  // output wire [7 : 0] douta
    );
    
    /*MSPAC_ROM mspac (
      .clka(pclk_0),
      .addra(AB[13:0]),
      .ena(~sel_mspac),
      .douta(mspac_dout)
    );*/
    
    
    /*DIGDUG_ROM digdug (
      .clka(pclk_0),
      .addra(AB[13:0]),
      .ena(~sel_mspac),
      .douta(digdug_dout)
    );*/
    
    
    /*centipede_ROM cent (
      .clka(pclk_0),
      .addra(AB[13:0]),
      .ena(~sel_mspac),
      .douta(cent_dout)
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
       .tia_en(tia_en),
       
       .idump(idump), .ilatch(ilatch),
       .PAin(PAin), .PBin(PBin),
       .PAout(PAout), .PBout(PBout)
    );
    
    
    
endmodule
