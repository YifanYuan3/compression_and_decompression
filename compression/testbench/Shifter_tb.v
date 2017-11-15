`timescale 1ns/1ns
// module Shifter(dataIn, len0, len1, dataOut, addedLen);
// 	parameter DATA_IN_WIDTH 	= 32;
// 	parameter LEN_IN_WIDTH 		= 3;
// 	
// 	input 		[DATA_IN_WIDTH - 1 : 0]				dataIn;
// 	input 		[LEN_IN_WIDTH - 1 : 0]				len0;
// 	input 		[LEN_IN_WIDTH - 1 : 0]				len1;
// 	output 		[DATA_IN_WIDTH * 2 - 1 : 0]		dataOut;
// 	output		[LEN_IN_WIDTH * 2 - 1 : 0]		addedLen;
// 	
// 	assign addedLen <= len0 + len1;
// 	assign dataOut <= dataIn << len0;
// 	
// endmodule

module Shifter_tb;

	reg  [31:0] dataIn;
	reg  [7:0]  len;
	wire [63:0] dataOut;
	wire [5:0]  addedLen;
	
	initial 
	begin
		dataIn = 0;
		len   = 0;
	  #3;
		dataIn = 32'h00002222;
		len   = 8'b00000001;
		#3;
	  $stop;
	end
  
  Shifter sh (dataIn, len, dataOut);
  
  initial
  begin
    $dumpfile("shifter.vcd");
    $dumpvars(0, Shifter_tb);
  end

endmodule