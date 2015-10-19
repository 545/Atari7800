`timescale 1ns / 1ps
`default_nettype none
  module tb();
   // For simulation only.

   logic       clk, reset, HSync, VSync;
   logic [3:0] 	RED, GREEN, BLUE;

   Atari7800 console(
		      .CLOCK_PLL(clk), .reset(reset),
		      .RED(RED), .GREEN(GREEN), .BLUE(BLUE),
		      .HSync(HSync), .VSync(VSync)
		      );

   logic [159:0][7:0] LRAM_str;

   initial clk = 0;

   always begin
        #1 clk = ~clk;
   end

   task make_LRAM_string();
      for (int i=0; i<160;i++) begin
	 LRAM_str[i] = {3'b000,console.maria_inst.line_ram_inst.lram_in[i]};
      end
   endtask

   task reset_all();
      @(posedge clk);
      reset = 1'b1;
      @(posedge clk);
      @(posedge clk);
      reset = 0'b0;
      @(posedge clk);
      @(posedge clk);
   endtask

   task run();
      for(int i = 0; i<1000000; i++) begin
	 if (console.maria_inst.palette_w) begin
	    $display("Palette value written = %02x",console.DB[7:5]);
	    make_LRAM_string();
	    $display("Curr LRAM = %h",LRAM_str);
	    @(posedge clk);
	    make_LRAM_string();
     	    $display("Updated LRAM = %h",LRAM_str);
	 end
	 else if (console.maria_inst.input_w) begin
	    $display("Input value written = %02x",console.DB);
	    make_LRAM_string();
	    $display("Curr LRAM = %h",LRAM_str);
	    @(posedge clk);
	    make_LRAM_string();
     	    $display("Updated LRAM = %h",LRAM_str);
	 end
	 else if (console.maria_inst.pixels_w) begin
	    $display("Pixels data written = %02x",console.DB);
	    make_LRAM_string();
	    $display("Curr LRAM = %h",LRAM_str);
	    @(posedge clk);
	    make_LRAM_string();
     	    $display("Updated LRAM = %h",LRAM_str);
	 end
	 else begin
	    @(posedge clk);
	 end // else: !if(console.maria_inst.pixels_w)
      end
   endtask

   initial begin
      $display("Hello");

      reset_all();
      run();

      #100 $finish;
   end

endmodule
