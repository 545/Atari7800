module tb();
   logic [10:0] addrW, addrR;
   logic [7:0] 	Din, Dout;
   logic 	clk, we,re,rstb,regceb;

   mem_2k dut(.addrW(addrW),
	      .addrR(addrR),
	      .Din(Din),
	      .clk(clk),
	      .we(we),
	      .re(re),
	      .rstb(rstb),
	      .regceb(regceb),
	      .Dout(Dout));

   initial begin
      clk = 0;
      forever #5 clk = ~clk;
   end

   initial begin
      @(posedge clk);
      rstb = 1;
      we = 0;
      re = 0;
      regceb = 1;
      @(posedge clk);
      rstb = 0;
      @(posedge clk);
      //write mem
      for (bit [11:0] i = 0; i<12'h800; i++) begin
	 Din = i[7:0];
	 addrW = i[10:0];
	 we = 1;
	 @(posedge clk);
      end
      we = 0;
      //read mem
      for (bit [11:0] i = 0; i<12'h800; i++) begin
	 addrR = i[10:0];
	 re = 1;
	 @(posedge clk);
	 assert (Dout == i[7:0]-1);
      end
      $finish;
   end // initial begin   
   
endmodule // tb

module mem_2k(addrW,addrR,Din,clk,we,re,rstb,regceb,Dout);
		 
   //  Xilinx Simple Dual Port Single Clock RAM with Byte-write
   //  This code implements a parameterizable SDP single clock memory.
   //  If a reset or enable is not necessary, it may be tied off or removed from the code.
   
   parameter NB_COL = 1;                       // Specify number of columns (number of bytes)
   parameter COL_WIDTH = 8;                  // Specify column width (byte width, typically 8 or 9)
   parameter RAM_DEPTH = 2048;                  // Specify RAM depth (number of entries)
   parameter RAM_PERFORMANCE = "LOW_LATENCY"; // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
   parameter INIT_FILE = "";                       // Specify name/location of RAM initialization file if using one (leave blank if not)

   input reg [clogb2(RAM_DEPTH-1)-1:0] addrW; // Write address bus, width determined from RAM_DEPTH
   input reg [clogb2(RAM_DEPTH-1)-1:0] addrR; // Read address bus, width determined from RAM_DEPTH
   input reg [(NB_COL*COL_WIDTH)-1:0]  Din; // RAM input data
   input reg 			       clk;                          // Clock
   input reg [NB_COL-1:0] 	       we;              // Byte-write enable
   input reg 			       re;                           // Read Enable, for additional power savings, disable when not in use
   input reg 			       rstb;                          // Output reset (does not affect memory contents)
   input reg 			       regceb;                        // Output register enable
   output wire [(NB_COL*COL_WIDTH)-1:0] Dout;         // RAM output data
   
   reg [(NB_COL*COL_WIDTH)-1:0]  RAM [RAM_DEPTH-1:0];
   reg [(NB_COL*COL_WIDTH)-1:0]  data_out = {(NB_COL*COL_WIDTH){1'b0}};
   
   // The following code either initializes the memory values to a specified file or to all zeros to match hardware
   generate
      if (INIT_FILE != "") begin: use_init_file
	 initial
           $readmemh(INIT_FILE, RAM, 0, RAM_DEPTH-1);
      end else begin: init_bram_to_zero
	 integer ram_index;
	 initial
           for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1)
             RAM[ram_index] = {(NB_COL*COL_WIDTH){1'b0}};
      end
   endgenerate
   
   always @(posedge clk)
     if (re)
       data_out <= RAM[addrR];
   
   
   generate
      genvar 	 i;
      for (i = 0; i < NB_COL; i = i+1) begin: byte_write
	 always @(posedge clk)
           if (we[i])
             RAM[addrW][(i+1)*COL_WIDTH-1:i*COL_WIDTH] <= Din[(i+1)*COL_WIDTH-1:i*COL_WIDTH];
      end
   endgenerate
   
   //  The following code generates HIGH_PERFORMANCE (use output register) or LOW_LATENCY (no output register)
   generate
      if (RAM_PERFORMANCE == "LOW_LATENCY") begin: no_output_register
	 
	 // The following is a 1 clock cycle read latency at the cost of a longer clock-to-out timing
	 assign Dout = data_out;
	 
      end else begin: output_register
	 
	 // The following is a 2 clock cycle read latency with improve clock-to-out timing
	 
	 reg [(NB_COL*COL_WIDTH)-1:0] doutb_reg = {(NB_COL*COL_WIDTH){1'b0}};
	 
	 always @(posedge clk)
           if (rstb)
             doutb_reg <= {(NB_COL*COL_WIDTH){1'b0}};
           else if (regceb)
             doutb_reg <= data_out;
	 
	 assign Dout = doutb_reg;
	 
      end
   endgenerate
   
   //  The following function calculates the address width based on specified RAM depth
   function integer clogb2;
      input integer 		      depth;
      for (clogb2=0; depth>0; clogb2=clogb2+1)
        depth = depth >> 1;
   endfunction // for
   
endmodule // mem_2k
