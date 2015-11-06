`timescale 1ns / 1ps
`default_nettype none

module Atari7800(
  input  logic       CLOCK_PLL, reset,
  output logic [3:0] RED, GREEN, BLUE,
  output logic       HSync, VSync,
  output logic [7:0] ld,
  output logic AC_ADR0, AC_ADR1, AC_GPIO0, AC_MCLK, AC_SCK,
  input  logic AC_GPIO1, AC_GPIO2, AC_GPIO3,
  inout  logic AC_SDA
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

   // TIA Signals
   logic Hblank, Vblank, aud0, aud1, tia_rw;
   logic [3:0] audv0, audv1;
   logic [7:0] tia_uv;
   logic [15:0] aud_signal_out;


   // RIOT Signals
   logic RS_b, riot_rw;
   logic [7:0] PAin, PAout, PBin, PBout;

   // 6502 Signals
   logic RDY, cpu_rw;
   logic [3:0] I;
   logic [1:0] ilatch;

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

   // TIA
  TIA tia_inst(.A(AB), // Address bus input
     .Din(DB), // Data bus input
     .Dout(DB_m), // Data bus output
     .CS_n(mm_tia_b), // Active low chip select input
     .CS(~mm_tia_b), // Chip select input
     .R_W_n(tia_rw), // Active low read/write input
     .RDY(RDY), // CPU ready output
     .MASTERCLK(tia_clk), // 3.58 Mhz pixel clock input
     .CLK2(pclk_0), // 1.19 Mhz bus clock input
     .Idump(I), // Dumped I/O
     .Ilatch(ilatch), // Latched I/O
     .HSYNC(HSync), // Video horizontal sync output
     .HBLANK(Hblank), // Video horizontal blank output
     .VSYNC(VSync), // Video vertical sync output
     .VBLANK(Vblank), // Video vertical sync output
     .COLOROUT(tia_uv), // Indexed color output
     .RES_n(reset), // Active low reset input
     .AUD0(aud0), //audio pin 0
     .AUD1(aud1), //audio pin 1
     .audv0(audv0), //audio volume for use with external xformer module
     .audv1(audv1)); //audio volume for use with external xformer module

  audio_xformer audio_xform(.AUD0(aud0), .AUD1(aud1), .AUDV0(audv0),
                            .AUDV1(audv1), .AUD_SIGNAL(aud_signal_out));

  adau1761_test codec(.clk_100(clock_100),
           .AC_ADR0(AC_ADR0),
           .AC_ADR1(AC_ADR1),
           .AC_GPIO0(AC_GPIO0),
           .AC_GPIO1(AC_GPIO1),
           .AC_GPIO2(AC_GPIO2),
           .AC_GPIO3(AC_GPIO3),
           .AC_MCLK(AC_MCLK),
           .AC_SCK(AC_SCK),
           .AC_SDA(AC_SDA),
           .aud_signal(aud_signal_out)
           );

  //RIOT
  RIOT riot_inst(.A(AB), // Address bus input
      .Din(DB), // Data bus input
      .Dout(DB_m), // Data bus output
      .CS(~mm_p6532_b), // Chip select input
      .CS_n(mm_p6532_b), // Active low chip select input
      .R_W_n(riot_rw), // Active low read/write input
      .RS_n(RS_b), // Active low rom select input
      .RES_n(reset), // Active low reset input
      .IRQ_n(), // Active low interrupt output
      .CLK(pclk_0),   // Clock input
      .PAin(PAin),  // 8 bit port A input
      .PAout(PAout), // 8 bit port A output
      .PBin(PBin),  // 8 bit port B input
      .PBout(PBout));// 8 bit port B output

  //6502
  cpu_wrapper cpu_inst(.clk(pclk_0),
    .reset(reset),
    .AB(AB),
    .DB(DB),
    .RD(cpu_rw),
    .IRQ(IRQ_n),
    .NMI(m_int_b),
    .RDY(RDY),
    .halt_b(halt_b));


endmodule
