//Author: Ryan Roberts
//Purpose: The purpose of this file is to serve as a makeshift memory module for the purposes of testing
//         The current test.
`timescale 1ns / 1ps


module TB_MEM(clk,addr,data_in,we,rst_b,data_out);
  parameter
  number_of_words = 65536;

  input [15:0] addr;
  input [7:0] data_in;
  input we;
  input clk;
  input rst_b;
  output reg [7:0] data_out;

  reg [7:0] mem [0:number_of_words-1]; //There are 2^16 1 byte words
  logic [15:0] addr_saved;

  always_ff @(rst_b) begin
    if (~rst_b) begin
      data_out <= 8'hxx;
      for (integer i = 0; i<number_of_words; i = i + 1)
        mem[i] = 8'hff;

      $readmemh("curr_test.hex",mem); //read in initial vals
    end
  end


  always_ff @(posedge clk) begin 
    if (we)
      mem[addr] <= data_in;
    else
      data_out <= mem[addr];   
  end

  

endmodule: TB_MEM