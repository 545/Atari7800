`timescale 1ns / 1ps


module cpu_wrapper( clk, sysclk, reset, AB, DB_IN, DB_OUT, RD, IRQ, NMI, RDY, halt_b);

input clk;              // CPU clock              
input sysclk;           // MARIA Clock                                                      
input reset;            // reset signal                                                                 
output [15:0] AB;       // address bus                                                                  
input  [7:0] DB_IN;     // data in,                                                                     
output [7:0] DB_OUT;    // data_out,                                                                    
output RD;              // read enable                                                                  
input IRQ;              // interrupt request                                                            
input NMI;              // non-maskable interrupt request                                               
input RDY;              // Ready signal. Pauses CPU when RDY=0                                          
input halt_b;

logic rdy_in;
logic WE_OUT;
logic holding;
logic [7:0] DB_hold, DB_held;

cpu core(.clk(clk), .reset(reset),.AB(AB),.DI(DB_hold),.DO(DB_OUT),.WE(WE_OUT),.IRQ(IRQ),.NMI(NMI),.RDY(rdy_in));

assign RD = ~WE;
assign WE = WE_OUT & halt_b;
assign rdy_in = RDY & halt_b;

logic load_db;

always_ff @(posedge clk) begin
   if (rdy_in)
      load_db <= 1'b1;
end

always_ff @(posedge sysclk) begin
   if (load_db) begin
      DB_hold <= DB_IN;
      load_db <= 1'b0;
   end
end

endmodule: cpu_wrapper
