`timescale 1ns / 1ps
`default_nettype none

module Atari7800(
  input  logic       CLOCK_PLL, reset,
  output logic [3:0] RED, GREEN, BLUE,
  output logic       HSync, VSync,
  output logic [7:0] ld,
  input  logic [7:0] sw,
  input logic btnu, btnl, btnc, btnr, btnd, btn8
);

   //////////////
   // Signals //
   ////////////

   // Clock Signals
   logic             clock_25, clock_100;
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
   
   
   // Displaying stuff on LEDs to prevent nets from getting optimized out
   assign ld[0] = m_int_b;
   assign ld[1] = mm_ram0_b | mm_ram1_b | mm_p6532_b | mm_tia_b;
   assign ld[2] = halt_b;
   assign ld[3] = m_ready;
   assign ld[4] = ~(|vga_row);
   assign ld[5] = RED[3];
   assign ld[6] = GREEN[3];
   assign ld[7] = BLUE[3];
   
   assign m_rw = 1'b1;
   assign m_en = 1'b1;
   assign pclk_2 = 1'b0;

   /////////////////
   // Submodules //
   ///////////////

   // Clock
   clock_divider divider (
     .CLOCK_PLL(CLOCK_PLL),

     // Clock out ports
     .CLOCK_100(clock_100),
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

   // MEMORY
   logic [7:0] DB_out;
  assign DB = (1'b1) ? DB_m : DB_out;
  assign AB = AB_m;
  
  /*
  always_comb begin
     if (DB_m_en)
        DB = DB_m;
     else
        DB = DB_out;
        
     DB_in = DB_m;
        
     AB = AB_m;
   end*/
   
   
    dll_img_ram dll_img(
     .clka(clock_100),
     .ena(~reset),
     .wea(~m_rw),
     .addra(AB),
     .dina(DB_m),
     .douta(DB_out)
   );

   // MARIA
   maria maria_inst(
      .AB_in(AB), .AB_out(AB_m), .drive_AB(AB_m_en),
      .DB_in(sw), .DB_out(DB_m), .drive_DB(DB_m_en),
      .reset(reset), .sysclk(sysclk_14_3),
      .pclk_2(pclk_2), .tia_clk(tia_clk), .pclk_0(pclk_0),
      .ram0_b(mm_ram0_b), .ram1_b(mm_ram1_b),
      .p6532_b(mm_p6532_b), .tia_b(mm_tia_b),
      .RW(m_rw), .enable(1'b1),
      .vga_row(vga_row), .vga_col(vga_col),
      .UV_out(uv_display),
      .int_b(m_int_b), .halt_b(halt_b), .ready(m_ready),
      .btnu(btnu), .btnl(btnl), .btnc(btnc), .btnr(btnr), .btnd(btnc), .btn8(btn8)
   );

endmodule
