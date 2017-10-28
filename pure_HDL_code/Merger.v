module Merger #(
	parameter 												DATA_WIDTH = 32,
	parameter													TAG_WIDTH  = 2,
	parameter 												LEN_WIDTH  = 8
)
(
	input															clk,
	input															reset,
	input															wrtEn,
	input 	[DATA_WIDTH     - 1 : 0] 	dataIn0,
	input 	[TAG_WIDTH      - 1 : 0] 	inTag0,
	input 	[LEN_WIDTH      - 1 : 0] 	inLen0,
	input 	[DATA_WIDTH     - 1 : 0] 	dataIn1,
	input 	[TAG_WIDTH      - 1 : 0] 	inTag1,
	input  	[LEN_WIDTH      - 1 : 0] 	inLen1,
	output 	[DATA_WIDTH * 2 - 1 : 0] 	dataOut,
	output 	[TAG_WIDTH  * 2 - 1 : 0] 	outTag,
	output 	[LEN_WIDTH      - 1 : 0] 	outLen
);

	wire    [DATA_WIDTH * 2 - 1 : 0] 	shiftedDataIn1;
	wire    [DATA_WIDTH * 2 - 1 : 0] 	mergedOut;
	wire    [TAG_WIDTH  * 2 - 1 : 0] 	mergedTag;
	wire    [LEN_WIDTH      - 1 : 0] 	mergedLen;

	Shifter #(.DATA_WIDTH(DATA_WIDTH), .LEN_WIDTH(LEN_WIDTH)) sh (dataIn1, inLen0, inLen1, shiftedDataIn1);
	
	assign mergedOut = (dataIn0 << DATA_WIDTH) | shiftedDataIn1;
	assign mergedTag = (inTag0 << TAG_WIDTH)   | inTag1;
	assign mergedLen = inLen0 + inLen1;
	
	Register #(.BIT_WIDTH(DATA_WIDTH * 2))	outreg (clk, reset, wrtEn, mergedOut, dataOut);
	Register #(.BIT_WIDTH(TAG_WIDTH  * 2))	tagreg (clk, reset, wrtEn, mergedTag, outTag);
	Register #(.BIT_WIDTH(LEN_WIDTH     ))	lenreg (clk, reset, wrtEn, mergedLen, outLen);

endmodule