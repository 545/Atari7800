`timescale 1ns / 1ps


module cpu_wrapper( clk, reset, AB, DB_IN, DB_OUT, RD, IRQ, NMI, RDY, halt_b);

input clk;              // CPU clock
input reset;            // reset signal
output [15:0] AB;       // address bus
input  [7:0] DB_IN;     // data in, 
output [7:0] DB_OUT;    // data_out, 
output RD;              // read enable
input IRQ;              // interrupt request
input NMI;              // non-maskable interrupt request
input RDY;              // Ready signal. Pauses CPU when RDY=0
input halt_b;

wire rdy_in;
wire WE_OUT;

cpu core(.clk(clk),.reset(reset),.AB(AB),.DI(DB_IN),.DO(DB_OUT),.WE(WE_OUT),.IRQ(IRQ),.NMI(NMI),.RDY(rdy_in));

assign RD = ~WE;
assign WE = WE_OUT & halt_b;
assign rdy_in = RDY & halt_b;

endmodule: cpu_wrapper
