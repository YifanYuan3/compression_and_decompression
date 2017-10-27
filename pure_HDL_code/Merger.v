module Merger #(
	parameter 													DATA_IN_WIDTH = 32,
	parameter 													LEN_IN_WIDTH  = 8
)
(
	input																clk,
	input																reset,
	input																wrtEn,
	input 	[DATA_IN_WIDTH     - 1 : 0] dataIn0,
	input 	[LEN_IN_WIDTH      - 1 : 0] inLen0,
	input 	[DATA_IN_WIDTH     - 1 : 0] dataIn1,
	input  	[LEN_IN_WIDTH      - 1 : 0] inLen1,
	output 	[DATA_IN_WIDTH * 2 - 1 : 0] dataOut,
	output 	[LEN_IN_WIDTH      - 1 : 0] outLen
);

	wire    [DATA_IN_WIDTH * 2 - 1 : 0] shiftedDataIn1;
	wire    [DATA_IN_WIDTH * 2 - 1 : 0] mergedOut;
	wire    [LEN_IN_WIDTH      - 1 : 0] mergedLen;

	Shifter #(.DATA_IN_WIDTH(DATA_IN_WIDTH), .LEN_IN_WIDTH(LEN_IN_WIDTH)) sh (dataIn1, inLen0, inLen1, shiftedDataIn1, mergedLen);
	
	assign mergedOut = (dataIn0 << DATA_IN_WIDTH) | shiftedDataIn1;
	
	Register #(.BIT_WIDTH(DATA_IN_WIDTH * 2))	outreg (clk, reset, wrtEn, mergedOut, dataOut);
	Register #(.BIT_WIDTH(LEN_IN_WIDTH))	lenreg (clk, reset, wrtEn, mergedLen, outLen);

endmodule