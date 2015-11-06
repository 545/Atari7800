`timescale 1ns / 1ps
`include "atari7800.vh"


module Atari7800(
  input  logic       CLOCK_PLL, reset,
  output logic [3:0] RED, GREEN, BLUE,
  output logic       HSync, VSync,
  
  output logic AC_ADR0, AC_ADR1, AC_GPIO0, AC_MCLK, AC_SCK,
  input  logic AC_GPIO1, AC_GPIO2, AC_GPIO3,
  inout  wire AC_SDA,
  
  input  logic [7:0]  cart_DB_out,
  output logic [15:0] AB,
  output logic        RW,
  output logic        pclk_0
);

   //////////////
   // Signals //
   ////////////

   // Clock Signals
   logic             clock_25, clock_100;
   logic             sysclk_7_143, pclk_2, tia_clk;
   logic             clock_divider_locked;

   // VGA Signals
   logic [9:0]             vga_row, vga_col;

   // MARIA Signals
   logic                   m_int_b, maria_RDY;
   logic                   maria_rw;
   logic                   halt_b, maria_drive_DB, maria_drive_AB;
   logic [7:0]             uv_display, uv_maria, uv_tia;
   logic [15:0]            maria_AB_out;
   `chipselect              CS;

   // TIA Signals
   logic hblank_tia, vblank_tia, aud0, aud1, tia_RDY;
   logic [3:0] audv0, audv1;
   logic [7:0] tia_db_out;
   logic [15:0] aud_signal_out;
   wire [3:0] idump;
   logic [1:0] ilatch;
   
   // Testing
   //assign  idump = 4'b0;
   //assign ilatch = 2'b0;
   
   

   // RIOT Signals
   logic riot_RS_b;
   logic [7:0] PAin, PAout, PBin, PBout;

   // 6502 Signals
   logic RDY, IRQ_n;
   logic [7:0] core_DB_out;
   logic [15:0] core_AB_out;

   logic cpu_reset, core_halt_b;
   logic [2:0] cpu_reset_counter; 
   
   assign IRQ_n = 1'b1;

   //ctrl Signals
   logic maria_en, tia_en, lock_ctrl, bios_en_b;
   logic [1:0] ctrl_writes;

   // Memory Map Select lines
   /*logic                   ram0_cs_b, ram1_cs_b,
                           riot_cs_b, tia_cs_b,
                           riot_ram_cs_b, bios_cs_b;
    */
    
   // Buses
   // AB and RW defined in port declaration
   logic  [7:0]           read_DB, write_DB;

   logic [7:0]            tia_DB_out, riot_DB_out, maria_DB_out,
                          ram0_DB_out, ram1_DB_out, bios_DB_out;

   //logic [5:0] chip_select_buf;
   //logic [5:0] chip_select_cur;
   `chipselect       CS_buf;
   logic       RW_buf;
   
   logic mem_clk;
   assign mem_clk = halt_b ? pclk_0 : sysclk_7_143;
   
   //assign chip_select_cur = {ram0_cs_b, ram1_cs_b, riot_cs_b, tia_cs_b, bios_cs_b, maria_drive_DB};
   
   always_ff @(posedge mem_clk, posedge reset) begin
      if (reset) begin
         //chip_select_buf <= 6'b111110;
         CS_buf <= CS_NONE;
         RW_buf <= 1'b1;
      end else begin
         //chip_select_buf <= chip_select_cur;
         CS_buf <= CS;
         RW_buf <= RW; 
      end
   end
   
   //CS LOGIC
   logic ram0_cs, ram1_cs, bios_cs, tia_cs, riot_cs, riot_ram_cs;
   
   always_comb begin
        ram0_cs = 1'b0;
        ram1_cs = 1'b0;
        bios_cs = 1'b0;
        tia_cs = 1'b0;
        riot_cs = 1'b0;
        riot_ram_cs = 1'b0;
        casex (CS)
            CS_RAM0: ram0_cs = 1'b1;
            CS_RAM1: ram1_cs = 1'b1;
            CS_BIOS: bios_cs = 1'b1;
            CS_TIA: tia_cs = 1'b1;
            CS_RIOT_IO: riot_cs = 1'b1;
            CS_RIOT_RAM: begin riot_cs = 1'b1; riot_ram_cs = 1'b1; end
        endcase
    end
   

   always_comb begin
      if (RW_buf) begin casex (CS_buf)
          CS_RAM0: read_DB = ram0_DB_out;
          CS_RAM1: read_DB = ram1_DB_out;
          CS_RIOT_IO,
          CS_RIOT_RAM: read_DB = riot_DB_out;
          CS_TIA: read_DB = tia_DB_out;
          CS_BIOS: read_DB = bios_DB_out;
          CS_MARIA: read_DB = maria_DB_out;
          CS_CART: read_DB = cart_DB_out;
          // Otherwise, nothing is driving the data bus. THIS SHOULD NEVER HAPPEN
          default: read_DB = 8'h46;
      endcase end else begin
          read_DB = 8'h47;
      end
      
      write_DB = core_DB_out;
      
      AB = (~core_halt_b & maria_drive_AB) ? maria_AB_out : core_AB_out;
   end
   

   ram0 ram0_inst(
      .clka(mem_clk),
      //.ena(~ram0_cs_b),
      .ena(ram0_cs),
      .wea(~RW),
      .addra(AB[10:0]),
      .dina(write_DB),
      .douta(ram0_DB_out)
   );

   ram1 ram1_inst(
      .clka(mem_clk),
      //.ena(~ram1_cs_b),
      .ena(ram1_cs),
      .wea(~RW),
      .addra(AB[10:0]),
      .dina(write_DB),
      .douta(ram1_DB_out)
   );
   
  //assign bios_cs_b = ~(AB[15] & ~bios_en_b);

  
  BIOS_ROM BIOS(.clka(mem_clk),
    .ena(bios_cs),
    .addra(AB[11:0]),
    .douta(bios_DB_out)
  );

   // Clock
   assign pclk_2 = ~pclk_0;
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
      .AB_in(AB),
      .AB_out(maria_AB_out),
      .drive_AB(maria_drive_AB),
      .read_DB_in(read_DB),
      .write_DB_in(write_DB),
      .DB_out(maria_DB_out),
      .drive_DB(maria_drive_DB), 
      .reset(reset), 
      .sysclk(sysclk_7_143),
      .pclk_2(pclk_2), 
      .tia_clk(tia_clk), 
      .pclk_0(pclk_0),
      .CS(CS),
      //.ram0_b(ram0_cs_b), 
      //.ram1_b(ram1_cs_b),
      //.p6532_b(riot_cs_b), 
      //.tia_b(tia_cs_b),
      //.riot_ram_b(riot_RS_b),
      .RW(RW), 
      .enable(maria_en),
      .vga_row(vga_row), 
      .vga_col(vga_col),
      .UV_out(uv_maria),
      .int_b(m_int_b), 
      .halt_b(halt_b), 
      .ready(maria_RDY)
   );

   // TIA
   TIA tia_inst(.A(AB[5:0]), // Address bus input
      .Din(write_DB), // Data bus input
      .Dout(tia_DB_out), // Data bus output
      .CS_n({2'b0,~tia_cs}), // Active low chip select input
      .CS(tia_cs), // Chip select input
      .R_W_n(RW), // Active low read/write input
      .RDY(tia_RDY), // CPU ready output
      .MASTERCLK(tia_clk), // 3.58 Mhz pixel clock input
      .CLK2(pclk_0), // 1.19 Mhz bus clock input
      .Idump(idump), // Dumped I/O
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
  RIOT riot_inst(.A(AB[6:0]),     // Address bus input
      .Din(write_DB),              // Data bus input
      .Dout(riot_DB_out),    // Data bus output
      .CS(riot_cs),       // Chip select input
      .CS_n(~riot_cs),      // Active low chip select input
      .R_W_n(RW),            // Active high read, active low write input
      .RS_n(~riot_ram_cs),      // Active low rom select input
      .RES_n(~reset),        // Active low reset input
      .IRQ_n(),              // Active low interrupt output
      .CLK(pclk_0),          // Clock input
      .PAin(PAin),           // 8 bit port A input
      .PAout(PAout),         // 8 bit port A output
      .PBin(PBin),           // 8 bit port B input
      .PBout(PBout));        // 8 bit port B output

  //6502
  assign cpu_reset = cpu_reset_counter != 3'b111;
  
  always_ff @(posedge pclk_0, posedge reset) begin
     if (reset) begin
        cpu_reset_counter <= 3'b0;
     end else begin
        if (cpu_reset_counter != 3'b111)
           cpu_reset_counter <= cpu_reset_counter + 3'b001;
     end
  end
  
  
  assign RDY = maria_en ? maria_RDY : ((tia_en) ? tia_RDY : clock_divider_locked);
  assign core_halt_b = (ctrl_writes == 2'd2) ? halt_b : 1'b1;
  cpu_wrapper cpu_inst(.clk(pclk_0),
    .reset(cpu_reset),
    .AB(core_AB_out),
    .DB_IN(read_DB),
    .DB_OUT(core_DB_out),
    .RD(RW),
    .IRQ(~IRQ_n),
    .NMI(~m_int_b),
    .RDY(RDY),
    .halt_b(core_halt_b));



  ctrl_reg ctrl(.clk(mem_clk),
                .lock_in(write_DB[0]),
                .maria_en_in(write_DB[1]),
                .bios_en_in(write_DB[2]),
                .tia_en_in(write_DB[3]),
                .latch_b(RW | tia_cs_b  | lock_ctrl),
                .rst(reset),
                .lock_out(lock_ctrl),
                .maria_en_out(maria_en),
                .bios_en_out(bios_en_b),
                .tia_en_out(tia_en),
                .writes(ctrl_writes));


endmodule

module ctrl_reg(input logic clk, lock_in, maria_en_in, bios_en_in, tia_en_in, latch_b, rst,
                output logic lock_out, maria_en_out, bios_en_out, tia_en_out, 
                output logic [1:0] writes);


  always_ff @(posedge clk, posedge rst) begin
    if (rst) begin
      lock_out <= 0;
      maria_en_out <= 0;
      bios_en_out <= 0;
      tia_en_out <= 0;
      writes <= 0;
    end
    else if (~latch_b) begin
      lock_out <= lock_in;
      maria_en_out <= maria_en_in;
      bios_en_out <= bios_en_in;
      tia_en_out <= tia_en_in;
      if (writes < 2'd2)
        writes <= writes + 1;
    end
  end
endmodule
