`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2015 06:06:00 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    output logic [7:0] ld,
    input logic [7:0] sw,
    inout logic [7:0] FMC
    );
    
    logic driveFMC;
    assign driveFMC = sw[0];
    
    assign FMC[0] = (driveFMC) ? 1'b1 : 1'bz;
    assign FMC[1] = (driveFMC) ? 1'b0 : 1'bz;
    assign FMC[2] = (driveFMC) ? 1'b1 : 1'bz;
    assign FMC[3] = (driveFMC) ? 1'b0 : 1'bz;
    assign ld[0] = FMC[0];
    assign ld[1] = FMC[1];
    assign ld[2] = FMC[2];  
    assign ld[3] = FMC[3];
    
    assign FMC[7:4] = 4'bz;
    
endmodule
