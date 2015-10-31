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
   logic             sysclk_7_143, pclk_0, pclk_2, tia_clk;
   logic             clock_divider_locked;

   // VGA Signals
   logic [9:0]             vga_row, vga_col;

   // MARIA Signals
   logic                   m_int_b, m_en, m_ready;
   logic                   maria_rw;
   logic                   halt_b;
   logic [7:0]             uv_display, uv_maria, uv_tia;

   // Memory Map Select lines
   logic                   mm_ram0_b, mm_ram1_b,
                           mm_p6532_b, mm_tia_b,
                           r_ram_select_b;

   // TIA Signals
   logic Hblank, Vblank, aud0, aud1;
   logic [3:0] audv0, audv1;
   logic [7:0] tia_uv, tia_db_out;
   logic [15:0] aud_signal_out;

   // RIOT Signals
   logic RS_b;
   logic [7:0] PAin, PAout, PBin, PBout;

   // 6502 Signals
   logic RDY, IRQ_n;
   logic [3:0] I;
   logic [1:0] ilatch;

   // Buses
   logic                  RW;
   wire [15:0]            AB;
   wire  [7:0]            DB;
   
   logic [7:0]            tia_DB_out, riot_DB_out, maria_DB_out;

   assign m_en = 1'b1;
   assign pclk_2 = 1'b0;

   /////////////////
   // Subsystems //
   ///////////////

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
   assign DB = RW ? DB_out : (~mm_tia_b ? tia_DB_out : (
                              ~mm_p6532_b ? riot_DB_out : 'bz));
   memory dll_img(
      .clka(clock_100), // IN STD_LOGIC;
      .wea(~RW),        // IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      .addra(AB),       // IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      .dina(DB),        // IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      .douta(DB_out)    // OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
   );

   // VIDEO
   always_comb begin:
       case ({maria_en, tia_en})
           2'b00: uv_display = uv_maria;
           2'b01: uv_display = uv_tia;
           2'b10: uv_display = uv_maria;
           2'b11: uv_display = uv_tia;
           default: uv_display = uv_maria; 
       endcase
   end

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

   // TIA
   TIA tia_inst(.A(AB), // Address bus input
      .Din(DB), // Data bus input
      .Dout(tia_DB_out), // Data bus output
      .CS_n(mm_tia_b), // Active low chip select input
      .CS(~mm_tia_b), // Chip select input
      .R_W_n(RW), // Active low read/write input
      .RDY(RDY), // CPU ready output
      .MASTERCLK(tia_clk), // 3.58 Mhz pixel clock input
      .CLK2(pclk_0), // 1.19 Mhz bus clock input
      .Idump(I), // Dumped I/O
      .Ilatch(ilatch), // Latched I/O
      .HSYNC(),        // Video horizontal sync output
      .HBLANK(Hblank), // Video horizontal blank output
      .VSYNC(),        // Video vertical sync output
      .VBLANK(Vblank), // Video vertical sync output
      .COLOROUT(tia_uv), // Indexed color output
      .RES_n(reset), // Active low reset input
      .AUD0(aud0), //audio pin 0
      .AUD1(aud1), //audio pin 1
      .audv0(audv0), //audio volume for use with external xformer module
      .audv1(audv1) //audio volume for use with external xformer module
   );
  
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
  RIOT riot_inst(.A(AB),     // Address bus input
      .Din(DB),              // Data bus input
      .Dout(riot_DB_out),    // Data bus output
      .CS(~mm_p6532_b),      // Chip select input
      .CS_n(mm_p6532_b),     // Active low chip select input
      .R_W_n(RW),            // Active low read/write input
      .RS_n(r_ram_select_b), // Active low rom select input
      .RES_n(~reset),        // Active low reset input
      .IRQ_n(),              // Active low interrupt output
      .CLK(pclk_0),          // Clock input
      .PAin(PAin),           // 8 bit port A input
      .PAout(PAout),         // 8 bit port A output
      .PBin(PBin),           // 8 bit port B input
      .PBout(PBout));        // 8 bit port B output

  //6502  
  cpu_wrapper cpu_inst(.clk(pclk_0),
    .reset_b(~reset),
    .AB(AB),
    .DB(DB),
    .RD(RW),
    .IRQ(IRQ_n),
    .NMI(m_int_b),
    .RDY(RDY),
    .halt_b(halt_b));
    
    


endmodule
