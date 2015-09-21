//Author: Ryan Roberto
//Purpose: The purpose of this file is to serve as a makeshift memory module for the purposes of testing
//         The current test.


module 64KMEM(phi1,phi2,addr,data_in,read_e,rst_b,data_out);
  parameter
  number_of_words = 65536;

  input [15:0] addr;
  input [7:0] data_in;
  input read_e;
  input rst_b;
  output [7:0] data_out;

  reg [7:0] mem [0:number_of_words-1] //There are 2^16 1 byte words
  logic [7:0] data_saved;
  logic [15:0] addr_saved
  logic read_saved;

  always_ff @(rst_b) begin
    if (~rst_b) begin
      data_out <= 8'hxx;
      for (integer i = 0; i<number_of_words; i = i + 1)
        mem[i] = 8'hff;

      $readmemh("current_test.obx",mem); //read in initial vals
    end
  end

  always_ff @(posedge phi1) begin //when phi1 is high, we can read from the address and data buses
    if (read_e) begin
      data_saved <= mem[addr];
      read_saved <= 1;
    end
    else begin
      data_saved <= data_in;
      read_saved <= 0;
      addr_saved <= addr;
    end

  end

  always_ff @(posedge phi2) begin //when phi2 is high, we can write to the data bus
    if (read_saved)
      data_out <= data_saved;
    else
      mem[addr_saved] <= data_saved;
  end


endmodule: 64KMEM
