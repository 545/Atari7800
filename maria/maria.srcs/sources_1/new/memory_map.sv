`default_nettype none;
module memory_map(
		  //merq
		  input logic 		   maria_en, //not being used. should probs be used
		  input logic [15:0] 	   AB,
		  inout logic [7:0] 	   DB,
		  input logic 		   halt, we_b,
		  output logic 		   tia_b, p6532_b, ram0_b, ram1_b,
		  output logic [7:0] 	   ctrl,
		  output logic [24:0][7:0] color_map,
		  output logic [7:0] 	   status_read,
		  output logic [7:0] 	   wait_sync,
		  output logic [7:0] 	   char_base,
		  output logic [15:0] 	   ZP,
		  
		  // whether to slow pclk_0 for slow memory accesses
		  output logic 		   slow_clock,
		  
		  input logic 		   sysclock, reset_b
		  );

   logic [4:0] 				   signals_out;
   logic [7:0] 				   wr_addr_found;
   logic [7:0] 				   ZPH,ZPL;			   

   always_comb begin
      {tia_b, p6532_b, ram0_b, ram1_b, slow_clock} = signals_out;
      ZP = {ZPH,ZPL};  

      //Set output signals for {tia_b,6532_b,ram0_b,ram1_b,slow_clock} depending on addr
      casex ({AD[15:5],halt}):
	//6532 + Slow
        {11'b0000010x1xx,1'bx}: signals_out = 5'b10111;
	{11'b0000001x1xx,1'bx}: signals_out = 5'b10111;

	//RAM1
	{11'b00011xxxxxx,1'b1}: signals_out = 5'b11100;
	{11'b00011xxxxxx,1'b0}: signals_out = 5'b11100;

	//TIA + Slow
	{11'b000000xx000,1'bx}: signals_out = 5'b01111;

	//RAM0
	{11'b000000xx1xx,1'b1}: signals_out_out = 5'b11010;
	{11'b000000xx1xx,1'b0}: signals_out_out = 5'b11010;
	{11'b000000xx01x,1'b1}: signals_out_out = 5'b11010;
	{11'b000000xx01x,1'b0}: signals_out_out = 5'b11010;
	{11'b00100xxxxxx,1'b1}: signals_out_out = 5'b11010;
	{11'b00100xxxxxx,1'b0}: signals_out_out = 5'b11010;
	
	default: signals_out_out = 5'b11110;
      endcase // casex ({AD[15:5],halt})

      //Find write addresses on bus to latch data on next tick
      casex ({AB,we_b}):
	{16'h002x,1'b0}: wr_addr_found = AB[7:0];
	{16'h003x,1'b0}: wr_addr_found = AB[7:0];
	default: wr_addr_found = 8'b0;
      endcase
   end // always_comb
      
   always_ff @(posedge sysclock, negedge rst) begin
      if (~reset_b) begin
         ctrl <= 8'b0;
         {tia_b, p6532_b, ram0_b, ram1_b} <= 4'hf;
         color_map <= 200'b0; //yes? 
	 status_read <= 8'b0;
         wait_sync <= 8'b0;
	 char_base <= 8'b0;
         {ZPH,ZPL} <= 16'b0;
      end

      else begin
	 //Handle writes to mem mapped regs
	 case(wr_addr_found):
	   8'h20: color_map[0] <= DB;
	   8'h21: color_map[1] <= DB;
	   8'h22: color_map[2] <= DB;
	   8'h23: color_map[3] <= DB;
	   8'h24: wait_sync <= DB;
	   8'h25: color_map[4] <= DB;
	   8'h26: color_map[5] <= DB;
	   8'h27: color_map[6] <= DB;
	   8'h28: status_read <= DB;
	   8'h29: color_map[7] <= DB;
	   8'h2a: color_map[8] <= DB;
	   8'h2b: color_map[9] <= DB;
	   8'h2c: ZPH <= DB;
	   8'h2d: color_map[10] <= DB;
	   8'h2e: color_map[11] <= DB;
	   8'h2f: color_map[12] <= DB;
	   8'h30: ZPL <= DB;
	   8'h31: color_map[13] <= DB;
	   8'h32: color_map[14] <= DB;
	   8'h33: color_map[15] <= DB;
	   8'h34: char_base <= DB;
	   8'h35: color_map[16] <= DB;
	   8'h36: color_map[17] <= DB;
	   8'h37: color_map[18] <= DB;
	   //8'h38: NOT USED
	   8'h39: color_map[19] <= DB;
	   8'h3a: color_map[20] <= DB;
	   8'h3b: color_map[21] <= DB;
	   8'h3c: ctrl <= DB;
	   8'h3d: color_map[22] <= DB;
	   8'h3e: color_map[23] <= DB;
	   8'h3f: color_map[24] <= DB;
	   default: ;
	 endcase // case (wr_addr_found)

	 //Handle reads from mem mapped regs
	 //***************POTENTIALLY UNFINISHED*******
	 case({AB,we_b}):
	   {16'b0024,1'b1}: DB <= wait_sync;
	   {16'b0028,1'b1}: DB <= status_read;
	   [16'b0034,1'b1}: DB <= char_base;
	   default: DB <= 8'bz;
	 endcase // case ({AB,we_b})
      end // else: !if(~reset_b)
   end // always_ff @   
endmodule
