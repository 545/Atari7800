`define AG6502_EXTERNAL_CLOCK
`timescale 1ns / 1ps


module core_tb();

  reg rst_b;
  wire phi1,phi2;
  reg [7:0] idle_count;
  reg [15:0] pc_save;
  reg [15:0] addr_bus;
  wire we;
  reg [7:0] data_bus_in, data_bus_out;
  wire rdy, nmi, irq, so, sync;

  assign rdy = 1;
  assign so = 1;
  assign nmi = 1;
  assign irq = 1;

  initial begin
    rst_b = 1;
    #25
    rst_b = 0;
    #25;
    rst_b <= 1;
  end

  clock CLK(phi1,phi2);

  cpu core(.clk(phi1),.reset(~rst_b),.AB(addr_bus),.DI(data_bus_in),
           .DO(data_bus_out),.WE(we),.IRQ(irq),.RDY(rdy),.NMI(nmi));
           
  TB_MEM mem(.clk(phi1),.addr(addr_bus),.data_in(data_bus_out),
             .we(we),.rst_b(rst_b),.data_out(data_bus_in));


  always_ff @(posedge phi1) begin
    if (idle_count == 255)
      $finish;
    else if (core.PC == pc_save) //if we idle for too long, terminate the
      idle_count <= idle_count + 1;
    else begin
      pc_save <= core.PC;
      idle_count <= 0;
    end
    end



endmodule: core_tb


module clock(clockSignal1,clockSignal2); //Taken from 18447 test bench
   parameter start = 0, halfPeriod = 10;
   output    clockSignal1,clockSignal2;
   reg       clockSignal1,clockSignal2;

   initial begin
     clockSignal1 = start;
     clockSignal2 = ~start;
   end

   always begin
     #halfPeriod clockSignal1 = ~clockSignal1;
     clockSignal2 = ~clockSignal2;
   end

endmodule