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

`define CENTIPEDE

`define    INPUT_CYCLES 256
`define    INPUT_CYCLES_NBITS 9

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
    reg [`INPUT_CYCLES_NBITS-1:0]    paddleA0_ctr = {`INPUT_CYCLES_NBITS{1'b0}};
    reg [`INPUT_CYCLES_NBITS-1:0]    paddleB0_ctr = {`INPUT_CYCLES_NBITS{1'b0}};
    reg [`INPUT_CYCLES_NBITS-1:0]    paddleA1_ctr = {`INPUT_CYCLES_NBITS{1'b0}};
    reg [`INPUT_CYCLES_NBITS-1:0]    paddleB1_ctr = {`INPUT_CYCLES_NBITS{1'b0}}; 
    
    always_ff @(posedge pclk_0) begin
        if (~ctrl_0_fmc[6])
           paddleA0_ctr <= 0;
        else if (paddleA0_ctr < `INPUT_CYCLES)
           paddleA0_ctr <= paddleA0_ctr + 1;
           
        if (~ctrl_0_fmc[4])
           paddleB0_ctr <= 0;
        else if (paddleB0_ctr < `INPUT_CYCLES)
           paddleB0_ctr <= paddleB0_ctr + 1;

        if (~ctrl_1_fmc[6])
           paddleA1_ctr <= 0;
        else if (paddleA1_ctr < `INPUT_CYCLES)
           paddleA1_ctr <= paddleA1_ctr + 1;
             
        if (~ctrl_1_fmc[4])
           paddleB1_ctr <= 0;
        else if (paddleB1_ctr < `INPUT_CYCLES)
           paddleB1_ctr <= paddleB1_ctr + 1;
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
    
    assign paddle_B_0 = paddleB0_ctr == `INPUT_CYCLES;
    assign paddle_B_1 = paddleB1_ctr == `INPUT_CYCLES;
    assign paddle_A_0 = paddleA0_ctr == `INPUT_CYCLES;
    assign paddle_A_1 = paddleA1_ctr == `INPUT_CYCLES;
    
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
   
   `ifdef ASTEROIDS
   assign cart_data_out = ast_dout_buf;
       
   logic [7:0] ast_dout, ast_dout_buf;
   
   always_ff @(posedge pclk_0)
      ast_dout_buf <= ast_dout;
   
   AST_ROM ast_rom (
      .a(AB[13:0]),      // input wire [13 : 0] a
      .spo(ast_dout)     // output wire [7 : 0] spo
   );
   `endif
   

   `ifdef FOODFIGHT
   logic [7:0] foodfight_dout;
   assign cart_data_out = foodfight_dout;
   
   FOODFIGHT_ROM food (
     .clka(pclk_0),
     .addra(AB[14:0]),
     .douta(foodfight_dout)
     );
     
   `endif //  `ifdef FOODFIGHT
   
   `ifdef GALAGA
   assign cart_data_out = gal_dout_buf;
       
   logic [7:0] gal_dout, gal_dout_buf;
   
   always_ff @(posedge pclk_0)
      gal_dout_buf <= gal_dout;
   
   GALAGA_DROM gal_rom (
      .a(AB[14:0]),     
      .spo(gal_dout)    
   );
   `endif
           
   `ifdef MSPACMAN
   logic [7:0] mspac_dout, mspac_dout_buf;
   
   assign cart_data_out = mspac_dout_buf;
           
   /*always_ff @(posedge pclk_0)
      mspac_dout_buf <= mspac_dout;
           
   MSPAC_DROM your_instance_name (
     .a(AB[13:0]),        // input wire [13 : 0] a
     .spo(mspac_dout)  // output wire [7 : 0] qspo
   );    */
   MSPAC_ROM mspac (
     .clka(pclk_0),
     .addra(AB[13:0]),
     .douta(mspac_dout_buf)
   );
   
   `endif
   
   `ifdef DEFENDER
   logic [7:0] def_dout;
   assign cart_data_out = def_dout;
   
   DEFENDER_BROM defender_rom (
     .clka(pclk_0),    // input wire clka
     .addra(AB[11:0]),  // input wire [11 : 0] addra
     .douta(def_dout)  // output wire [7 : 0] douta
   );
   `endif
   
   `ifdef JOUST
   logic [7:0] joust dout;
   assign cart_data_out = joust_dout;
   JOUST_ROM joust (
    .clka(pclk_0),    // input wire clka
    .addra(AB[14:0]),  // input wire [14 : 0] addra
    .douta(joust_dout)  // output wire [7 : 0] douta
       );
    `endif
    
    `ifdef CHOPLIFTER
    
    logic [7:0] choplifter_dout, choplifter_dout_buf;
    assign cart_data_out = choplifter_dout_buf;
    
    CHOPLIFTER your_instance_name (
      .clka(pclk_0),    // input wire clka
      .addra(AB[14:0]),  // input wire [14 : 0] addra
      .douta(choplifter_dout_buf)  // output wire [7 : 0] douta
    );
    
    /*always_ff @(posedge pclk_0)
          choplifter_dout_buf <= choplifter_dout;
    
    CHOPLIFTER_DROM chop (
      .a(AB[14:0]),      // input wire [14 : 0] a
      .spo(choplifter_dout)  // output wire [7 : 0] spo
    );*/
    `endif
          
    `ifdef ROBOTRON 
    logic [7:0] robo_dout;
    assign cart_data_out = robo_dout;
    CART_ROM robotron (
      .clka(pclk_0),    // input wire clka
      .addra(AB[14:0]),  // input wire [14 : 0] addra
      .douta(robo_dout)  // output wire [7 : 0] douta
    );
    `endif
    
    `ifdef DIGDUG
    logic [7:0] digdug_dout;
    assign cart_data_out = digdug_dout;
    DIGDUG_ROM digdug (
      .clka(pclk_0),
      .addra(AB[13:0]),
      .ena(~sel_mspac),
      .douta(digdug_dout)
    );
    `endif
    
    `ifdef CENTIPEDE
    logic [7:0] cent_dout;
    assign cart_data_out = cent_dout;
    centipede_ROM cent (
      .clka(pclk_0),
      .addra(AB[13:0]),
      .douta(cent_dout)
    );
    `endif
    
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
