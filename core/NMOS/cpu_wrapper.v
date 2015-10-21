`timescale 1ns / 1ps


module cpu_wrapper( clk, reset, AB, DB, RD, IRQ, NMI, RDY, halt_b);

input clk;              // CPU clock 
input reset;            // reset signal
inout [15:0] AB;   // address bus
inout  [7:0] DB;        // data out, write bus
output RD;              // read enable
input IRQ;              // interrupt request
input NMI;              // non-maskable interrupt request
input RDY;              // Ready signal. Pauses CPU when RDY=0 
input halt_b;

wire rdy_in;
wire WE_OUT;
wire [15:0] ab_out;
wire [7:0] db_out;
wire [7:0] db_in;

cpu core(.clk(clk),.reset(reset),.AB(ab_out),.DI(db_in),.DO(db_out),.WE(WE_OUT),.IRQ(IRQ),.NMI(NMI),.RDY(rdy_in));

assign RD = ~WE;
assign WE = WE_OUT & halt_b;
assign rdy_in = RDY & halt_b;
assign db_in = DB;
assign AB = (halt_b) ? ab_out : 16'bz;
assign DB = (halt_b) ? (WE ? db_out : 8'bz) : 8'bz;

endmodule: cpu_wrapper
