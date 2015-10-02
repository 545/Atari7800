//Author: Ryan Roberts
//Purpose: The purpose of this file is to serve as a makeshift memory module for the purposes of testing
//         The current test.
`timescale 1ns / 1ps


module TB_MEM(phi1,phi2,addr,data_in,read_e,rst_b,data_out);
  parameter
  number_of_words = 65536;

  input [15:0] addr;
  input [7:0] data_in;
  input read_e;
  input phi1,phi2;
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


  always_ff @(posedge phi2) begin 
    if (read_e)
      data_out <= mem[addr];
    else
      addr_saved <= addr;
  end

  always_ff @(negedge phi2) begin
    if (~read_e)
      mem[addr_saved] <= data_in;
  end

endmodule: TB_MEM