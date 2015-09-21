`default_nettype none

module myCoinAccepterFSM(
  input logic [1:0] coin,
  input logic coinInserted,
  output logic drop, 
  output logic [3:0] credit,
  input logic clock,reset_L);

   
     
   enum logic [3:0] {zeroc = 4'b0000,onec= 4'b0001, twoc = 4'b0010, 
		     threec = 4'b0011,zerocd = 4'b0100,onecd = 4'b0101, 
		     twocd = 4'b0110, threecd = 4'b0111, zeroca = 4'b1000, 
		     oneca = 4'b1001, twoca = 4'b1010, threeca = 4'b1011} s,ns;

   logic circle,triangle,pentagon;
   
   always_comb begin
      circle = (coin == 2'b01) ? 1 : 0;
      triangle = (coin == 2'b10) ? 1 : 0;
      pentagon = (coin == 2'b11) ? 1 : 0;
   end
      
   
   
   //Next State logic
   always_comb
      case (s)
	zeroca: begin
	   if (coinInserted==1) begin
	     if (circle == 1)
	       ns=onec;
	     else if (triangle == 1)
	       ns=threec;
	     else if (pentagon == 1)
	       ns=onecd;
		  else
			 ns = zeroca;
			 end
	   else
	     ns = zeroca;
	end
	oneca: begin
	   if (coinInserted==1) begin
	     if (circle == 1)
	       ns=twoc;
	     else if (triangle == 1)
	       ns=zerocd;
	     else if (pentagon == 1)
	       ns=twocd;
		  else 
		    ns = oneca;
			 end
	   else
	     ns = oneca;
		  
	   
	end
	twoca: begin
	   if (coinInserted==1) begin
	     if (circle == 1)
	       ns=threec;
	     else if (triangle == 1)
	       ns=onecd;
	     else if (pentagon == 1)
	       ns=threecd;
		  else 
		    ns = twoca;
			 end
	   else
	     ns = twoca;
	   
	end
	threeca: begin
	   if (coinInserted==1) begin
	     if (circle == 1)
	       ns=zerocd;
	     else if (triangle == 1)
	       ns=twocd;
	     else if (pentagon == 1)
	       ns=zerocd;
		  else
			 ns = threeca;
			end
		
	   else
	     ns = threeca;
	   
	end
	zerocd: begin
	   if (coinInserted == 0)
	     ns=zeroca;
	   else
	     ns=zeroc;
	end
	onecd: begin
	   if (coinInserted==0)
	     ns=oneca;
	   else
	     ns=onec;
	end
	twocd: begin
	   if (coinInserted==0)
	     ns=twoca;
	   else
	     ns=twoc;
	end
	threecd: begin
	   if (coinInserted==0)
	     ns=threeca;
	   else
	     ns=threec;
	end
	zeroc: begin
	   if (coinInserted==1)
	     ns=zeroc;
	   else
	     ns=zeroca;
	end
	onec: begin
	   if (coinInserted==1)
	     ns=onec;
	   else
	     ns=oneca;
	end
	twoc: begin
	   if (coinInserted==1)
	     ns=twoc;
	   else
	     ns=twoca;
	end
	threec: begin
	   if (coinInserted==1)
	     ns=threec;
	   else
	     ns=threeca;
	end
      endcase // case (s)
       		    

   //OUTPUT LOGIC
   assign drop = s[2];
   assign credit = ((s[1]<<1) + s[0]);

   
   always_ff @(posedge clock, negedge reset_L)
     if (reset_L == 0)
       s <= zeroca;
     else
       s <= ns;

   
endmodule: myCoinAccepterFSM


module adder
  #(parameter w = 8)
   (input logic [w-1:0] a,b,
    input logic Cin,
    output logic Cout,
    output logic [w-1:0] sum);

   assign {Cout,sum} = a+b+Cin;

endmodule: adder

module four1bitadder
  (input logic a,b,c,d,
   output logic [3:0] sum);

   logic [3:0] 	      s1,s2;
   
   
   adder #(4) a1({3'b000,a},{3'b000,b},1'b0,,s1);
   adder #(4) a2({3'b000,c},{3'b000,d},1'b0,,s2);
   adder #(4) a3(s1,s2,1'b0,,sum);

endmodule: four1bitadder

module comparator
  #(parameter w = 8)
   (input logic [w-1:0] a,b,
    input logic en,
    output logic AltB, AeqB, AgtB);

   always_comb begin
      AltB = 0; AeqB = 0; AgtB = 0;
      
      if (en==1) begin
	 if (a<b)
	   AltB = 1;
	 else if (a==b)
	   AeqB = 1;
	 else
	   AgtB = 1;
      end
   end // always_comb begin
   
   
endmodule: comparator


module demux1to4
  #(parameter w = 8)
   (input logic [w-1:0] I,
    input logic [1:0] sel,
    output logic [w-1:0] D0,D1,D2,D3);


   always_comb begin
      D0 = 0; D1 = 0; D2 = 0; D3 = 0;
      case (sel)
       0: D0 = I;
       1: D1 = I;
       2: D2 = I;
       3: D3 = I;
     endcase // case (sel)
   end

endmodule: demux1to4

module register
  #(parameter w = 6)
   (input logic [w-1:0] D,
    input logic clk,reset_L,ld_L,cl_L,
    output logic [w-1:0] Q);

   always_ff @(posedge clk, negedge reset_L)
     if (reset_L == 0)
       Q <= 0;
     else if (cl_L == 0)
       Q <= 0;
     else if (ld_L == 0)
       Q <= D;
     else
       Q <= Q;

endmodule: register
       

module creditFSM
  (input logic addCredit, removeCredit,clk,rst_L,
   output logic [3:0] creditsAvail);

   logic [2:0] 	      s, ns;

   always_ff @(posedge clk, negedge rst_L)
     if (rst_L == 0)
       s <= 3'b000;
     else
       s <= ns;

   always_comb begin
      if (addCredit == 1)
	ns = (s == 3'b111) ? 3'b111 : s + 1;
      else if (removeCredit == 1)
	ns = (s == 3'b000) ? 3'b000 : s - 1;
      else
	ns = s;
   end
   
   assign creditsAvail = s;
      
endmodule: creditFSM

module coinHandler
  (input logic [1:0] CoinValue, 
  input logic coinInserted,
   input logic clk, rst_L,removeCredit,
   output logic [3:0] creditsAvail);

   logic 	drop;
   
   myCoinAccepterFSM f1(CoinValue,coinInserted,drop,,clk,rst_L);
   creditFSM f2(drop,removeCredit,clk,rst_L,creditsAvail);

endmodule: coinHandler


module creditFSM_test();
   logic addCredit, removeCredit,clk,rst_L;
   logic [3:0] creditsAvail;

   creditFSM dut(.*);
   
   initial begin
      clk = 0;
      forever #10 clk = ~clk;
   end

   initial begin
      $monitor($time," %b AC = %b, RC = %b, credits = %d, state = %d",clk,addCredit,removeCredit,creditsAvail,dut.s);

      rst_L = 0;
      addCredit = 0;
      removeCredit = 0;

      @(posedge clk); #1 rst_L=1;      
      @(posedge clk);
      @(posedge clk);
      #1 addCredit = 1;
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      #1 addCredit = 0; removeCredit = 1;
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      #1 rst_L = 0;
      @(posedge clk);
      #1;
      $finish;
   end // initial begin
endmodule: creditFSM_test
      


module gameControlFSM
  (input logic StartGame, GameWon,clk,rst_L,GradeIt,
   input logic [3:0] RoundNumber, CreditsAvail,
   input logic [2:0] S0,S1,S2,S3,g0,g1,g2,g3,
   output logic ingame,removeCredit,clear_regs_L, clear_shapes_L,GradeShapes,incRd);

   enum logic [2:0] {noGame = 3'b000, playing = 3'b001, RC = 3'b010, GameOver= 3'b011,Grading = 3'b100 } s, ns;
   
   always_ff @(posedge clk, negedge rst_L)
     if (rst_L == 0)
       s <= noGame;
     else 
       s <= ns;
   logic grade;
	assign grade = (GradeIt == 1 && (g0 != 0 && g0 != 7) && (g1 != 0 && g1 != 7) && (g2 !=0 && g2 != 7) && (g3 != 0 && g3 != 7));

   always_comb begin
      case (s)
	noGame: if (StartGame == 1 && (S0 != 0 && S0 != 7) && (S1 != 0 && S1 != 7) && (S2 !=0 && S2 != 7) && (S3 != 0 && S3 != 7) && CreditsAvail != 0)
	  ns = RC;
	else
	  ns = noGame;
	RC:
	  ns = playing;
	playing: if (RoundNumber > 7 || GameWon == 1)
	  ns = GameOver;
	else if (grade==1)
	  ns = Grading;
	else
	  ns= playing;
	GameOver: ns = noGame;
	Grading: ns = (grade==0) ? playing : Grading;
      endcase
      end // always_comb begin

   assign ingame = (s == playing || s == Grading);
   assign removeCredit = (s == RC);
   assign clear_regs_L = ~(s == RC);
   assign clear_shapes_L = ~(s==GameOver);
   assign GradeShapes = (s == playing && grade == 1);
	assign incRd = (s == Grading && grade == 0);
   
   
   
endmodule: gameControlFSM

module gameControlFSM_test();
   logic StartGame, GameWon,clk,rst_L;
   logic [3:0] CreditsAvail,RoundNumber;
   logic [2:0] S0,S1,S2,S3,g0,g1,g2,g3;
   logic       ingame,removeCredit,clear_regs_L,clear_shapes_L,GradeShapes, incRd,GradeIt;
   
   

   gameControlFSM dut(.*);
   
   initial begin
      clk = 0;
      forever #10 clk = ~clk;
   end

   initial begin
      $monitor($time," %b SG=%b,GW=%b,credits=%d,rd=%d,shape1=%b,inGame=%b,RC=%b,clear=%b",
	       clk,StartGame,GameWon,CreditsAvail,RoundNumber,S0,ingame,removeCredit,clear_regs_L);

      rst_L = 0;
      StartGame = 0;
      GameWon = 0;
      CreditsAvail = 0;
      RoundNumber = 0;
      S0=0;
      S1=0;
      S2=0;
      S3=0;
      @(posedge clk); #1 rst_L=1;      
      @(posedge clk); #1 StartGame = 1;
      @(posedge clk); #1 StartGame = 0;
      CreditsAvail= 2;
      @(posedge clk); #1 StartGame = 1;
      @(posedge clk); #1 StartGame = 0;
      @(posedge clk); #1 S0 = 3'b001;S1 = 3'b001; S2 = 3'b001;S3 = 3'b001;
      @(posedge clk); #1 StartGame = 1;
      @(posedge clk); #1 StartGame = 0;
      @(posedge clk); #1 RoundNumber = 8;
      @(posedge clk); #1 RoundNumber = 0; StartGame = 1;
      @(posedge clk); #1 StartGame = 0;
      @(posedge clk); #1 GameWon = 1;
      @(posedge clk);
      
      rst_L = 0;
      @(posedge clk);
      #1;
      $finish;
   end // initial begin
endmodule: gameControlFSM_test




module masterCombinationCreator
  (input logic [2:0] LoadShape,
   input logic [1:0] ShapeLocation,
   input logic LoadShapeNow,clk,rst_L,clear_regs_L,
   output logic [2:0] S0,S1,S2,S3);

   logic [3:0] 	      D0,D1,D2,D3;
   logic [2:0] 	      Q0,Q1,Q2,Q3;
   logic 	      load0_L,load1_L,load2_L,load3_L;
   assign load0_L = ~(D0[3] & (Q0 == 3'b000 || Q0 == 3'b111));
   assign load1_L = ~(D1[3] & (Q1 == 3'b000 || Q1 == 3'b111));
   assign load2_L = ~(D2[3] & (Q2 == 3'b000 || Q2 == 3'b111));
   assign load3_L = ~(D3[3] & (Q3 == 3'b000 || Q3 == 3'b111));
   
   demux1to4 #(4) dm1({LoadShapeNow,LoadShape},ShapeLocation,D0,D1,D2,D3);
   register #(3) r0(D0[2:0],clk,rst_L,load0_L,clear_regs_L,Q0);
   register #(3) r1(D1[2:0],clk,rst_L,load1_L,clear_regs_L,Q1);
   register #(3) r2(D2[2:0],clk,rst_L,load2_L,clear_regs_L,Q2);
   register #(3) r3(D3[2:0],clk,rst_L,load3_L,clear_regs_L,Q3);

   assign S0 = Q0;
   assign S1 = Q1;
   assign S2 = Q2;
   assign S3 = Q3;
  
endmodule: masterCombinationCreator

module masterCombinationCreator_test();
   logic [2:0] S0,S1,S2,S3,LoadShape;
   logic [1:0] ShapeLocation;
   logic       LoadShapeNow,clk,rst_L,clear_regs_L;


   masterCombinationCreator dut(.*);

   initial begin
      clk = 0;
      forever #10 clk = ~clk;
   end

   initial begin
      $monitor($time," %b, loadShape=%b, shapeLoc=%b, LSN = %b, clear_regs=%b, %b %b %b %b",
	       clk,LoadShape,ShapeLocation,LoadShapeNow,clear_regs_L,S0,S1,S2,S3);

      rst_L = 0;
      LoadShape = 3'b000;
      ShapeLocation = 2'b00;
      LoadShapeNow = 1'b0;
      clear_regs_L = 1;
      

      @(posedge clk); #1 rst_L = 1;
      @(posedge clk); #1 LoadShapeNow = 1'b1;
      @(posedge clk); #1 LoadShapeNow = 1'b0;
      @(posedge clk); #1 LoadShape = 3'b010;
      @(posedge clk); #1 ShapeLocation = 2'b10;
      @(posedge clk); #1 LoadShapeNow = 1'b1;
      @(posedge clk); #1 LoadShape = 3'b001;
      @(posedge clk); #1 ShapeLocation = 2'b00;
      @(posedge clk); #1 ShapeLocation = 2'b01;
      @(posedge clk); #1 ShapeLocation = 2'b11;
      @(posedge clk);
      @(posedge clk); #1 LoadShape = 3'b111; LoadShapeNow = 0;
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk); #1 clear_regs_L = 0;
      @(posedge clk);
      #10;
      
      $finish;

   end // initial begin

endmodule: masterCombinationCreator_test

module zoodScore
    (input logic z0,z1,z2,z3,
     input logic [2:0] g0,g1,g2,g3,s0,s1,s2,s3,
     output logic [3:0] Zood);

   logic 		g0eqs1,g0eqs2,g0eqs3,g1eqs0,g1eqs2,g1eqs3,g2eqs0,g2eqs1,g2eqs3,g3eqs0,g3eqs1,g3eqs2;
   
   logic 		en0;
   
   //G0 tier
   assign en0 = ~(z0|z1);
   comparator #(3) c1(g0,s1,en0,,g0eqs1,);
   comparator #(3) c2(g0,s2,~(z0|z2|g0eqs1),,g0eqs2,);
   comparator #(3) c3(g0,s3,~(z0|z3|g0eqs1|g0eqs2),,g0eqs3,);
   //G1 tier
   comparator #(3) c4(g1,s0,~(z1|z0),,g1eqs0,);
   comparator #(3) c5(g1,s2,~(z1|z2|g0eqs2|g1eqs0),,g1eqs2,);
   comparator #(3) c6(g1,s3,~(z1|z3|g0eqs3|g1eqs0|g1eqs2),,g1eqs3,);
   //G2 tier
   comparator #(3) c7(g2,s0, ~(z2|z0|g1eqs0),,g2eqs0,);
   comparator #(3) c8(g2,s1, ~(z2|z1|g0eqs1|g2eqs0),,g2eqs1,);
   comparator #(3) c9(g2,s3, ~(z2|z3|g0eqs3|g2eqs0|g2eqs1|g1eqs3),,g2eqs3,);
   //G3 tier
   comparator #(3) c10(g3,s0, ~(z3|z0|g1eqs0|g2eqs0),,g3eqs0,);
   comparator #(3) c11(g3,s1, ~(z3|z1|g0eqs1|g2eqs1|g3eqs0),,g3eqs1,);
   comparator #(3) c12(g3,s2, ~(z3|z2|g0eqs2|g1eqs2|g3eqs0|g3eqs1),,g3eqs2,);

   logic 		zood0,zood1,zood2,zood3;
   
   assign zood0 = g0eqs1 | g0eqs2 | g0eqs3;
   assign zood1 = g1eqs0|g1eqs2|g1eqs3;
   assign zood2 = g2eqs0|g2eqs1|g2eqs3;
   assign zood3 = g3eqs0|g3eqs1|g3eqs2;

   four1bitadder a1(zood0,zood1,zood2,zood3,Zood);

endmodule: zoodScore

module zoodScore_test();
   logic z0,z1,z2,z3;
   logic [2:0] g0,g1,g2,g3,s0,s1,s2,s3;
   logic [3:0] Zood;

   zoodScore dut(.*);

   initial begin
      $monitor($time, "  %b%b%b%b, master = %d%d%d%d guess = %d%d%d%d, Zood = %d ",
	       z0,z1,z2,z3,s0,s1,s2,s3,g0,g1,g2,g3,Zood);

      z0=0;
      z1=0;
      z2=0;
      z3=0;
      
      #10 s0 =3'b001;
      s1 = 3'b010;
      s2 = 3'b100;
      s3 = 3'b110;
      

      g0 = 3'b010;
      g1 = 3'b001;
      g2 = 3'b110;
      g3 = 3'b100;

      #10 s0 =3'b001;
      s1 = 3'b010;
      s2 = 3'b110;
      s3 = 3'b110;
      

      g0 = 3'b100;
      g1 = 3'b110;
      g2 = 3'b100;
      g3 = 3'b100;

      #10 s0 =3'b001;
      s1 = 3'b010;
      s2 = 3'b100;
      s3 = 3'b110;
      

      g0 = 3'b111;
      g1 = 3'b001;
      g2 = 3'b001;
      g3 = 3'b111;

      #10 s0 =3'b001;
      s1 = 3'b100;
      s2 = 3'b100;
      s3 = 3'b110;
      

      g0 = 3'b100;
      g1 = 3'b111;
      g2 = 3'b111;
      g3 = 3'b100;


      #10 s0 =3'b001; z0=1;
      s1 = 3'b010;
      s2 = 3'b100;
      s3 = 3'b110;
      

      g0 = 3'b001;
      g1 = 3'b001;
      g2 = 3'b111;
      g3 = 3'b111;

      #10 s0 =3'b001; z0=1; z1 = 1;
      s1 = 3'b001;
      s2 = 3'b100;
      s3 = 3'b111;
      

      g0 = 3'b001;
      g1 = 3'b001;
      g2 = 3'b111;
      g3 = 3'b100;

      #10 s0 =3'b001; 
      s1 = 3'b001;
      s2 = 3'b100;
      s3 = 3'b110;
      

      g0 = 3'b001;
      g1 = 3'b001;
      g2 = 3'b110;
      g3 = 3'b111;

      #10 s0 =3'b001; z0=0; z1=0; z3= 1;
      s1 = 3'b010;
      s2 = 3'b100;
      s3 = 3'b111;
      

      g0 = 3'b001;
      g1 = 3'b001;
      g2 = 3'b001;
      g3 = 3'b111;
      #10;
      

      $finish;
   end // initial begin

endmodule: zoodScore_test

module ZnarlyScore
  (input logic [2:0] g0,g1,g2,g3,s0,s1,s2,s3,
   output logic [3:0] Znarly,
   output logic znar0,znar1,znar2,znar3);
   
   comparator #(3) c1(g0,s0,1'b1,,znar0,);
   comparator #(3) c2(g1,s1,1'b1,,znar1,);
   comparator #(3) c3(g2,s2,1'b1,,znar2,);
   comparator #(3) c4(g3,s3,1'b1,,znar3,);

   four1bitadder a1(znar0,znar1,znar2,znar3,Znarly);
   
endmodule: ZnarlyScore

module ZnarlyScore_test();
   logic [2:0] g0,g1,g2,g3,s0,s1,s2,s3;
   logic [3:0] Znarly;
   logic       znar0,znar1,znar2,znar3;

   ZnarlyScore dut(.*);

   initial begin
      $monitor($time, " Master = %d%d%d%d, guess = %d%d%d%d Znar = %d %b%b%b%b",
	       s0,s1,s2,s3,g0,g1,g2,g3,Znarly,znar0,znar1,znar2,znar3);

      s0 =3'b001;
      s1 = 3'b010;
      s2 = 3'b100;
      s3 = 3'b110;
      
      g0 = 3'b010;
      g1 = 3'b001;
      g2 = 3'b110;
      g3 = 3'b100;

      #10 s0 =3'b001;
      s1 = 3'b010;
      s2 = 3'b100;
      s3 = 3'b110;
      

      g0 = 3'b001;
      g1 = 3'b001;
      g2 = 3'b110;
      g3 = 3'b100;

      #10 s0 =3'b001;
      s1 = 3'b010;
      s2 = 3'b100;
      s3 = 3'b110;
      

      g0 = 3'b001;
      g1 = 3'b010;
      g2 = 3'b110;
      g3 = 3'b100;

      #10 s0 =3'b001;
      s1 = 3'b010;
      s2 = 3'b100;
      s3 = 3'b110;
      

      g0 = 3'b001;
      g1 = 3'b010;
      g2 = 3'b100;
      g3 = 3'b100;

      #10 s0 =3'b001;
      s1 = 3'b010;
      s2 = 3'b100;
      s3 = 3'b110;
      

      g0 = 3'b001;
      g1 = 3'b010;
      g2 = 3'b100;
      g3 = 3'b110;
      #10;

      $finish;

   end // initial begin
endmodule: ZnarlyScore_test
      
module checkGuess
  (input logic [2:0] g0,g1,g2,g3,s0,s1,s2,s3,
   input logic clk,rst_L, clear_regs_L, GradeIt,incRd,
   output logic [3:0] Zood, Znarly, RoundNumber,
   output logic GameWon);
   logic 	znar0, znar1, znar2, znar3;
   logic [3:0] 	ZnarlyTemp, ZoodTemp, RoundNumberTemp, RN;
   logic 	gameWonTemp;
   logic 	load_regs_L;

   ZnarlyScore z1(g0,g1,g2,g3,s0,s1,s2,s3,ZnarlyTemp,znar0,znar1,znar2,znar3);
   zoodScore z2(znar0,znar1,znar2,znar3,g0,g1,g2,g3,s0,s1,s2,s3,ZoodTemp);
   register #(4) r0(ZnarlyTemp,clk,rst_L,~GradeIt,clear_regs_L,Znarly);
   register #(4) r1(ZoodTemp,clk,rst_L,~GradeIt,clear_regs_L,Zood);
   register #(4) r2(RoundNumberTemp,clk,rst_L,~incRd,clear_regs_L,RoundNumber);
   register #(1) r3(gameWonTemp,clk,rst_L,~GradeIt,clear_regs_L,GameWon);
   adder #(4) a1(RoundNumber, 4'b0001,1'b0,, RoundNumberTemp);
   comparator #(4) c1(ZnarlyTemp,4'd4,1'b1,,gameWonTemp,);
endmodule: checkGuess


module checkGuess_test();
   logic [2:0] g0,g1,g2,g3,s0,s1,s2,s3;
   logic       clk,rst_L, clear_regs_L, GradeIt,incRd;
   
   logic [3:0] Zood, Znarly, RoundNumber;
   logic       GameWon;

   checkGuess dut(.*);
   
   initial begin
      clk=0;
      forever #10 clk=~clk;
   end
   initial begin
      
      $monitor ($time," %b %b master: %d%d%d%d guess: %d%d%d%d, gradeIt %b, Zood:%d, Znarly:%d, Round %d, GameWon %b",
		clk,rst_L,s0,s1,s2,s3,g0,g1,g2,g3,GradeIt, Zood,Znarly, RoundNumber, GameWon);
      rst_L=0;
      s0=3'b110;
      s1=3'b001;
      s2=3'b111;
      s3=3'b100;
      
      g0=3'b111;
      g1=3'b011;
      g2=3'b101;
      g3=3'b100;
      GradeIt=0;
      clear_regs_L=1;  
      @(posedge clk); #1 rst_L=1;      
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1
      g0=3'b111;
      g1=3'b001;
      g2=3'b101;
      g3=3'b100;
      @(posedge clk); #1
      g0=3'b111;
      g1=3'b011;
      g2=3'b111;
      g3=3'b100;
      @(posedge clk); #1 
      @(posedge clk); #1 
      @(posedge clk); #1 
      @(posedge clk); #1 
      @(posedge clk); #1
      @(posedge clk);
      @(posedge clk); #1 rst_L=0;
      @(posedge clk); #1 rst_L=1;
      @(posedge clk); #1
      s0=3'b110;
      s1=3'b001;
      s2=3'b111;
      s3=3'b100;
      g0=3'b110;
      g1=3'b001;
      g2=3'b111;
      g3=3'b100;
      @(posedge clk); #1 GradeIt=1;
      @(posedge clk);
      @(posedge clk);
      #1;
     
      $finish;
      


    end // initial begin
   
      
   
endmodule: checkGuess_test

module top
  (input logic [1:0] CoinValue,ShapeLocation,
   input logic CoinInserted,StartGame,GradeIt,LoadShapeNow, rst_L, clk,
   input logic [2:0] LoadShape,
   input logic [11:0] Guess,
   output logic [3:0] Znarly, Zood, RoundNumber,NumGames,
   output logic GameWon);

   logic 	removeCredit,clear_regs_L,clear_shapes_L,GradeShapes,coinInserted,incRd,inGame;
   logic [2:0] 	s0,s1,s2,s3;
   
   
   gameControlFSM f1(StartGame,GameWon,clk,rst_L,GradeIt,RoundNumber,NumGames,s0,s1,s2,s3,Guess[2:0],Guess[5:3],Guess[8:6],Guess[11:9],inGame,removeCredit,clear_regs_L,clear_shapes_L,GradeShapes,incRd);
   coinHandler m1(CoinValue,coinInserted,clk,rst_L,removeCredit,NumGames);
   masterCombinationCreator m2(LoadShape,ShapeLocation,LoadShapeNow,clk,rst_L,clear_shapes_L,s0,s1,s2,s3);
   checkGuess m3(Guess[2:0],Guess[5:3],Guess[8:6],Guess[11:9],s0,s1,s2,s3,clk,rst_L,clear_regs_L,GradeShapes,incRd,Zood,Znarly,RoundNumber,GameWon);

endmodule: top

module top_test();
   logic [1:0] CoinValue,ShapeLocation;
   logic       CoinInserted,StartGame,GradeIt,LoadShapeNow, rst_L, clk;
   logic [2:0] LoadShape;
   logic [11:0] Guess;
   logic [3:0] 	Znarly, Zood, RoundNumber,NumGames;
   logic 	GameWon,inGame,incRd;

   top dut(.*);
   
   initial begin
      clk = 0;
      forever #10 clk = ~clk;
   end

   initial begin
      $monitor($time," %b%b drop %s  CV: %b, Cred %d SG: %b GI: %b Guess: %d%d%d%d Master = %d%d%d%d Znarly %d Zood %d RN %d GW %b LS: %d SL: %b LSN: %b",
	       clk,rst_L,dut.m1.f1.s.name,CoinValue,NumGames,StartGame,GradeIt,Guess[2:0],Guess[5:3],Guess[8:6],Guess[11:9],dut.s0,dut.s1,dut.s2,dut.s3,Znarly,Zood,RoundNumber,
	       GameWon,LoadShape,ShapeLocation,LoadShapeNow);

      CoinValue = 2'b00;
      ShapeLocation = 2'b00;
      StartGame = 0;
      GradeIt = 0;
      LoadShapeNow = 0;
      rst_L = 0;
      LoadShape = 0;
      Guess = 0;
      @(posedge clk); #1 rst_L = 1;
      @(posedge clk); #1 CoinValue = 2'b01;
      @(posedge clk); #1 CoinValue = 2'b00;
      @(posedge clk); #1 CoinValue = 2'b10;
      @(posedge clk); #1 CoinValue = 2'b00;
      @(posedge clk); #1 StartGame = 1;
      @(posedge clk); #1 StartGame = 0;
      @(posedge clk); #1 LoadShape = 3'b001; LoadShapeNow=1;
      @(posedge clk); #1 ShapeLocation = 2'b01;
      @(posedge clk); #1 ShapeLocation = 2'b10;
      @(posedge clk); #1 ShapeLocation = 2'b11;
      @(posedge clk); #1 LoadShapeNow = 0; StartGame = 1;
      @(posedge clk);
      @(posedge clk); #1 Guess = 12'b001100101111; GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0; Guess= 12'b001001001001;
      @(posedge clk); #1 Guess = 12'b111111111111; GradeIt = 1;
      @(posedge clk); #1 Guess = 12'b001001110111;
      @(posedge clk); #1 GradeIt = 0; Guess = 12'b001001001001;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;
      @(posedge clk); #1 Guess = 12'b001001001001;
      @(posedge clk); #1 GradeIt = 0;
      @(posedge clk); #1 GradeIt = 1;

      $finish;
      
   end // initial begin

endmodule: top_test
     
      
      
module chipInterface
  (input logic CLOCK_50,
   input logic [17:0] SW,
   input logic [3:0] KEY,
   output logic [6:0] HEX0,HEX1,HEX2,HEX3,
   output logic [7:0] LEDG,
   output logic [7:0] VGA_R,VGA_G,VGA_B,
   output logic VGA_BLANK_N,VGA_CLK,VGA_SYNC_N,VGA_VS,VGA_HS);

   logic 	removeCredit,clear_regs_L,clear_shapes_L,GradeShapes,key1,key2,key3,inGame,incRd;
   logic [2:0] 	s0,s1,s2,s3;
   logic [3:0] 	RoundNumber,NumGames,Znarly,Zood;
 
   assign key1 = ~(KEY[1]);
   assign key2 = ~(KEY[2]);
   assign key3 = ~(KEY[3]);
   
   gameControlFSM f1(key2,LEDG[0],CLOCK_50,KEY[0],key3,RoundNumber,NumGames,s0,s1,s2,s3,SW[2:0],SW[5:3],SW[8:6],SW[11:9],inGame,removeCredit,clear_regs_L,clear_shapes_L,GradeShapes,incRd);
   coinHandler m1(SW[17:16],key1,CLOCK_50,KEY[0],removeCredit,NumGames);
   masterCombinationCreator m2(SW[2:0],SW[4:3],key3,CLOCK_50,KEY[0],clear_shapes_L,s0,s1,s2,s3);
   checkGuess m3(SW[2:0],SW[5:3],SW[8:6],SW[11:9],s0,s1,s2,s3,CLOCK_50,KEY[0],clear_regs_L,GradeShapes,incRd,Zood,Znarly,RoundNumber,LEDG[0]);
   mastermindVGA m4(CLOCK_50,VGA_R,VGA_G,VGA_B,VGA_BLANK_N,VGA_CLK,VGA_SYNC_N,VGA_VS,VGA_HS,NumGames,1'b1,RoundNumber,SW[11:0],inGame,Znarly,Zood,incRd,~clear_regs_L,{s3,s2,s1,s0},SW[15],~KEY[0]);
   

   SevenSegmentDigit ss1(RoundNumber,HEX1,1'b0),
     ss2(NumGames,HEX0,1'b0),
     ss3(Znarly,HEX3,1'b0),
     ss4(Zood,HEX2,1'b0);
endmodule: chipInterface