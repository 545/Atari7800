`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2015 05:33:11 PM
// Design Name: 
// Module Name: maria_test
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

module maria_test(
   output logic [3:0] RED, GREEN, BLUE,
   output logic       HSync, VSync,
   input  logic       reset, CLOCK_PLL
);
    // Test inputs
    //logic reset, CLOCK_PLL;


   // Clock Signals
   logic             clock_25, clock_100;
   logic             sysclk_7_143, pclk_0, pclk_2, tia_clk;
   logic             clock_divider_locked;

   // VGA Signals
   logic [9:0]             vga_row, vga_col;

   // MARIA Signals
   logic                   m_int_b, m_en, m_ready;
   logic                   halt_b;
   logic [7:0]             uv_display;

   // Memory Map Select lines
   logic                   mm_ram0_b, mm_ram1_b,
                           mm_p6532_b, mm_tia_b,
                           r_ram_select_b;
   
    // Buses
    logic                  RW;
    wire [15:0]            AB;
    wire  [7:0]            DB;
    
   // MEMORY
   // logic [7:0] DB_in, DB_out;
   // assign DB = RW ? DB_out : 'bz;
   // assign DB_in = DB;
   memory dll_img(
      .clka(sysclk_7_143), // IN STD_LOGIC;
      .wea(1'b0),        // IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      .addra(AB),       // IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      .dina(8'b0),        // IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      .douta(DB)    // OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
   );

   
   // Testing variables
   assign RW = 1'b1;
   assign m_en = 1'b1;
   assign pclk_2 = 1'b1;

   // VGA
   uv_to_vga vga_out(
      .clk(clock_25), .reset(reset),
      .uv_in(uv_display),
      .row(vga_row), .col(vga_col),
      .RED(RED), .GREEN(GREEN), .BLUE(BLUE),
      .HSync(HSync), .VSync(VSync)
   );
   
      // Clock
   clock_divider divider (
     .CLOCK_PLL(CLOCK_PLL),

     // Clock out ports
     .CLOCK_100(clock_100),
     .CLOCK_25(clock_25),        // 25 MHz
     .CLOCK_7_143(sysclk_7_143), // 7.143 MHz. Divide to 1.79 MHz
     // Status and control signals
     .reset(reset),
     .locked(clock_divider_locked)
   );
   
   // MARIA
   maria maria_inst(
      .AB(AB), .DB(DB),
      .reset(reset), .sysclk(sysclk_7_143),
      .pclk_2(pclk_2), .tia_clk(tia_clk), .pclk_0(pclk_0),
      .ram0_b(mm_ram0_b), .ram1_b(mm_ram1_b),
      .p6532_b(mm_p6532_b), .tia_b(mm_tia_b),
      .riot_ram_b(r_ram_select_b),
      .RW(RW), .enable(m_en),
      .vga_row(vga_row), .vga_col(vga_col),
      .UV_out(uv_display),
      .int_b(m_int_b), .halt_b(halt_b), .ready(m_ready)
   );
   
   /*initial begin
     CLOCK_PLL = 1'b0;
     #10 reset = 1'b0;
     #10 reset = 1'b1;
     #10 reset = 1'b0;
     @(negedge maria_inst.zp_dma_done);
     @(negedge maria_inst.dp_dma_done);
     @(negedge maria_inst.dp_dma_done);
   end
   
   initial begin
      forever begin
         #1 CLOCK_PLL = ~CLOCK_PLL;
         
      end
   end*/
   


endmodule
