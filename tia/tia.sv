

module TIA(input logic [5:0] addr,
		   input logic read, clk,
		   input logic [5:0] data,
		   inout logic D6, D7,
		   input logic [5:0] I,
		   output logic sync, rdy, AUD0, AUD1);


  logic [3:0] AUDC0,AUDC1,AUDV0,AUDV1; //Declare registers
  logic [4:0] AUDF0,AUDF1;


  audio aud(.AUDC0(AUDC0),.AUDC1(AUDC1),.AUDF0(AUDF0),
            .AUDF1(AUDF1),.CLK_30(CLK_30),.AUD0(AUD0),.AUD1(AUD1));


  always_ff @(posedge clk) begin //register write logic
    case (addr)
      6'h15: AUDC0 <= data[3:0];
      6'h16: AUDC1 <= data[3:0];
      6'h17: AUDF0 <= data[4:0];
      6'h18: AUDF1 <= data[4:0];
      6'h19: AUDV0 <= data[3:0];
      6'h1a: AUDV1 <= data[3:0];
    endcase
  end






endmodule: TIA