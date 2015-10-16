`timescale 1ns / 1ps
`default_nettype none

module Atari7800(
  input  logic       CLOCK_PLL, reset,
  output logic [3:0] RED, GREEN, BLUE,
  output logic       HSync, VSync
);

   //////////////
   // Signals //
   ////////////

   // Clock Signals
   logic             clock_25;
   logic             sysclk_14_3, pclk_0, pclk_2, tia_clk;
   logic             clock_divider_locked;

   // VGA Signals
   logic [9:0]             vga_row, vga_col;

   // MARIA Signals
   logic                   m_int_b, m_en, m_rw, m_ready;
   logic                   halt_b;
   logic [7:0]             uv_display;

   // Memory Map Select lines
   logic                   mm_ram0_b, mm_ram1_b,
                           mm_p6532_b, mm_tia_b;

   // Memory Busses
   // wire [15:0]            AB;
   // wire  [7:0]            DB;
   logic [15:0] AB, AB_m;
   logic        AB_m_en;
   logic  [7:0] DB, DB_m;
   logic        DB_m_en;

   /////////////////
   // Submodules //
   ///////////////

   // Clock
   clock_divider divider (
     .CLOCK_PLL(CLOCK_PLL),

     // Clock out ports
     .CLOCK_25(clock_25),       // 25 MHz
     .CLOCK_7_143(sysclk_14_3), // 7.143 MHz. Divide to 1.79 MHz
     // Status and control signals
     .reset(reset),
     .locked(clock_divider_locked)
   );

   // VGA
   uv_to_vga vga_out(
      .clk(clock_25), .reset(reset),
      .uv_in(uv_display),
      .row(vga_row), .col(vga_col),
      .RED(RED), .GREEN(GREEN), .BLUE(BLUE),
      .HSync(HSync), .VSync(VSync)
   );

   // MARIA
   maria maria_inst(
      .AB_in(AB), .AB_out(AB_m), .drive_AB(AB_m_en),
      .DB_in(DB), .DB_out(DB_m), .drive_DB(DB_m_en),
      .reset(reset), .sysclk(sysclk_14_3),
      .pclk_2(pclk_2), .tia_clk(tia_clk), .pclk_0(pclk_0),
      .ram0_b(mm_ram0_b), .ram1_b(mm_ram1_b),
      .p6532_b(mm_p6532_b), .tia_b(mm_tia_b),
      .RW(m_rw), .enable(m_en),
      .vga_row(vga_row), .vga_col(vga_col),
      .UV_out(uv_display),
      .int_b(m_int_b), .halt_b(halt_b), .ready(m_ready)
   );

endmodule
