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
   logic             sysclk_14_3, pclk_0, pclk_2, tia_clk;
   logic             clock_divider_locked;

   // VGA Signals
   logic [639:0][2:0][3:0] vga_line_buffer;
   logic [9:0]             vga_row_number;
   logic                   vga_outputting;

   // MARIA Signals
   logic                   maria_interrupt_b;
   logic                   maria_enable;
   logic                   maria_RW;
   logic                   halt_b;
   logic                   maria_ready;
   logic [319:0][7:0]      uv_display_line;

   // Memory Map Select lines
   logic                   mm_ram0_b, mm_ram1_b,
                           mm_p6532_b, mm_tia_b;

   // Memory Busses
   logic [15:0]            AB;
   logic [15:0]            DB;

   /////////////////
   // Submodules //
   ///////////////

   // Clock
   clock_divider divider (
     .clk_in1(CLOCK_PLL),

     // Clock out ports
     .CLOCK_100(CLOCK_100),     // 100 MHz
     .CLOCK_25(CLOCK_25),       // 25 MHz
     .CLOCK_7_143(CLOCK_7_143), // 7.143 MHz. Divide to 1.79 MHz
     // Status and control signals
     .reset(reset),
     .locked(clock_divider_locked)
    );

   // VGA
   line_buf_to_vga vga_out(
      .clk(CLOCK_25),
      .reset(reset),
      .lbuffer(vga_line_buffer),
      .line_number(vga_row_number),
      .outputting(vga_outputting),
      .RED(RED), .GREEN(GREEN), .BLUE(BLUE),
      .HSync(HSync), .VSync(VSync)
   );

   // MARIA
   maria maria_inst(
      .int_b(maria_interrupt_b),
      .sysclk_14_3(sysclk_14_3),
      .pclk_2(pclk_2),
      .tia_clk(tia_clk),
      .pclk_0(pclk_0),
      .ram0_b(mm_ram0_b),
      .AB(AB),
      .p6532_b(mm_p6532_b),
      .ram1_b(mm_ram1_b),
      .tia_b(mm_tia_b),
      .DB(DB),
      .RW(maria_RW),
      .halt_b(halt_b),
      .ready(maria_ready),
      .reset(rest),
      .uv_line_out(uv_display_line),
      .vga_row_number(vga_row_number),
      .vga_outputting(vga_outputting)
   );

endmodule
