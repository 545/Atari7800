`timescale 1ns / 1ps
`default_nettype none

module Atari7800(
  input  logic       CLOCK_PLL, reset,
  output logic [3:0] RED, GREEN, BLUE,
  output logic       HSync, VSync,
  output logic [7:0] ld,
  output logic AC_ADR0, AC_ADR1, AC_GPIO0, AC_MCLK, AC_SCK,
  input  logic AC_GPIO1, AC_GPIO2, AC_GPIO3,
  inout   wire AC_SDA
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
   logic                   m_int_b, maria_en;
   logic                   maria_rw;
   logic                   halt_b;
   logic [7:0]             uv_display, uv_maria, uv_tia;

   // TIA Signals
   logic hblank_tia, vblank_tia, aud0, aud1;
   logic [3:0] audv0, audv1;
   logic [7:0] tia_db_out;
   logic [15:0] aud_signal_out;

   // RIOT Signals
   logic riot_RS_b;
   logic [7:0] PAin, PAout, PBin, PBout;

   // 6502 Signals
   logic RDY, IRQ_n;
   logic [3:0] I;
   logic [1:0] ilatch;

   //ctrl Signals
   logic maria_en, tia_en, lock_ctrl, bios_en_b;

   // Memory Map Select lines
   logic                   ram0_cs_b, ram1_cs_b,
                           riot_cs_b, tia_cs_b,
                           riot_ram_cs_b, bios_cs_b;

   // Buses
   logic                  RW;
   logic [15:0]           AB;
   logic  [7:0]           DB;

   logic [7:0]            tia_DB_out, riot_DB_out, maria_DB_out,
                          ram0_DB_out, ram1_DB_out, bios_DB_out;

   always_comb begin
      if (RW) begin casex ({ram0_cs_b, ram1_cs_b, riot_cs_b, tia_cs_b, bios_cs_b})
          5'b0xxxx: DB = ram0_DB_out;
          5'b10xxx: DB = ram1_DB_out;
          5'b110xx: DB = riot_DB_out;
          5'b1110x: DB = tia_DB_out;
          5'b11110: DB = bios_DB_out;
          // Otherwise, allow the Maria or Cartridge or BIOS to drive the bus
          default: DB = 8'bz;
      endcase end else begin
          DB = 8'bz;
      end
   end
   

   ram0 ram0_inst(
      .clka(sysclk_7_143),
      .ena(~ram0_cs_b),
      .wea(~RW),
      .addra(AB[10:0]),
      .dina(DB),
      .douta(ram0_DB_out)
   );

   ram1 ram1_inst(
      .clka(sysclk_7_143),
      .ena(~ram1_cs_b),
      .wea(~RW),
      .addra(AB[10:0]),
      .dina(DB),
      .douta(ram1_DB_out)
   );
   
  assign bios_cs_b = ~(AB[15] & ~bios_en_b);
  BIOS_ROM BIOS(.clka(sysclk_7_143),
    .ena(~bios_cs_b),
    .wea(0),
    .addra(AB[14:0]),
    .dina(0),
    .douta(bios_DB_out)
  );

   // Clock
   assign pclk_2 = 1'b0;
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

   // VIDEO
   always_comb case ({maria_en, tia_en})
       2'b00: uv_display = uv_maria;
       2'b01: uv_display = uv_tia;
       2'b10: uv_display = uv_maria;
       2'b11: uv_display = uv_tia;
       default: uv_display = uv_maria;
   endcase

   // MARIA
   maria maria_inst(
      .AB(AB), 
      .DB(DB),
      .reset(reset), 
      .sysclk(sysclk_7_143),
      .pclk_2(pclk_2), 
      .tia_clk(tia_clk), 
      .pclk_0(pclk_0),
      .ram0_b(ram0_cs_b), 
      .ram1_b(ram1_cs_b),
      .p6532_b(riot_cs_b), 
      .tia_b(tia_cs_b),
      .riot_ram_b(riot_RS_b),
      .RW(RW), 
      .enable(maria_en),
      .vga_row(vga_row), 
      .vga_col(vga_col),
      .UV_out(uv_display),
      .int_b(m_int_b), 
      .halt_b(halt_b), 
      .ready(RDY)
   );

   // TIA
   TIA tia_inst(.A(AB), // Address bus input
      .Din(DB), // Data bus input
      .Dout(tia_DB_out), // Data bus output
      .CS_n(tia_cs_b), // Active low chip select input
      .CS(~tia_cs_b), // Chip select input
      .R_W_n(RW), // Active low read/write input
      .RDY(RDY), // CPU ready output
      .MASTERCLK(tia_clk), // 3.58 Mhz pixel clock input
      .CLK2(pclk_0), // 1.19 Mhz bus clock input
      .Idump(I), // Dumped I/O
      .Ilatch(ilatch), // Latched I/O
      .HSYNC(),        // Video horizontal sync output
      .HBLANK(hblank_tia), // Video horizontal blank output
      .VSYNC(),        // Video vertical sync output
      .VBLANK(vblank_tia), // Video vertical sync output
      .COLOROUT(uv_tia), // Indexed color output
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
      .CS(~riot_cs_b),       // Chip select input
      .CS_n(riot_cs_b),      // Active low chip select input
      .R_W_n(RW),            // Active high read, active low write input
      .RS_n(riot_RS_b),      // Active low rom select input
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



  ctrl_reg ctrl(.lock_in(DB[0]),
                .maria_en_in(DB[1]),
                .bios_en_in(DB[2]),
                .tia_en_in(DB[3]),
                .latch_b(RW | tia_cs_b | lock_ctrl),
                .rst(reset),
                .lock_out(lock_ctrl),
                .maria_en_out(maria_en),
                .bios_en_out(bios_en_b),
                .tia_en_out(tia_en));


endmodule

module ctrl_reg(input logic lock_in, maria_en_in, bios_en_in, tia_en_in, latch_b, rst,
                output logic lock_out, maria_en_out, bios_en_out, tia_en_out);


  always_ff @(negedge latch_b, posedge rst) begin
    if (rst) begin
      lock_out <= 0;
      maria_en_out <= 0;
      bios_en_out <= 0;
      tia_en_out <= 0;
    end
    else if (~latch_b) begin
      lock_out <= lock_in;
      maria_en_out <= maria_en_in;
      bios_en_out <= bios_en_in;
      tia_en_out <= tia_en_in;
    end
  end
endmodule
