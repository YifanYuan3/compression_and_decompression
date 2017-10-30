module Aligner #(
	parameter DATA_IN_WIDTH 	= 272,
	parameter LEN_WIDTH     	= 8,
	parameter DATA_OUT_WIDTH 	= 256
)
(
	input																clk,
	input 															reset,
	input 															wrtEn,
	input 		[DATA_IN_WIDTH 	- 1	: 0] 	dataIn,
	input 		[LEN_WIDTH  		- 1	: 0] 	len,
	output		[DATA_OUT_WIDTH - 1 : 0] 	dataOut,
	output															valid,
	output															stall,
	output		[LEN_WIDTH  		    : 0] 	remainedDataOut
);
	wire																valid;
	wire																stall;

	wire 			[LEN_WIDTH  				: 0]  inDataLen;
	wire 			[LEN_WIDTH  				: 0]  mergedLen;
	wire 			[LEN_WIDTH  				: 0] 	remainedDataIn;

	assign inDataLen 				= len << 3;
	assign mergedLen   			= remainedDataOut + inDataLen + 16;
	assign valid 						= (mergedLen > 256) ? 1'b1 : 1'b0;
	assign remainedDataIn   = valid ? mergedLen - 256 : mergedLen;
	assign stall						= mergedLen >= 512 ? 1'b1 : 1'b0;
		
	Register #(.BIT_WIDTH(LEN_WIDTH + 1)) lenReg 			(clk, reset, wrtEn, remainedDataIn, remainedDataOut);
	
endmodule