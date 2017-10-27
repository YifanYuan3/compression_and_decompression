module Compressor #(
	parameter 												DATA_WIDTH = 32,
	parameter 												TAG_WIDTH  = 2,
	parameter													LEN_WIDTH  = 8
)
(
	input															clk,
	input															reset,
	input															wrtEn,
	input		[DATA_WIDTH * 8 - 1 : 0]	dataIn,
	input		[DATA_WIDTH * 8 - 1 : 0]	cprDataIn,				// Debug: to be deleted
	input		[TAG_WIDTH  * 8 - 1 : 0]	tagIn,						// Debug: to be deleted
	output	[DATA_WIDTH * 8 - 1 : 0]	dataOut,
	output	[TAG_WIDTH  * 8 - 1 : 0]	tagOut
);

	wire		[LEN_WIDTH  - 1	: 0]			len			[0 : 7];

/**
	Debug
	This code needs to be uncommented to activate the compress_unit modules
	Plus, cprData and tag need to be deleted from input lists

	wire 		[DATA_WIDTH - 1 : 0]			cprData [0 : 7];
	wire		[TAG_WIDTH  - 1 : 0]			tag			[0 : 7];
	compress_unit cu7 (clk, reset, wrtEn, dataIn [DATA_WIDTH * 8 - 1 : DATA_WIDTH * 7], cprData	[7], tag[7]);
	compress_unit cu6 (clk, reset, wrtEn, dataIn [DATA_WIDTH * 7 - 1 : DATA_WIDTH * 6], cprData	[6], tag[6]);
	compress_unit cu5 (clk, reset, wrtEn, dataIn [DATA_WIDTH * 6 - 1 : DATA_WIDTH * 5], cprData	[5], tag[5]);
	compress_unit cu4 (clk, reset, wrtEn, dataIn [DATA_WIDTH * 5 - 1 : DATA_WIDTH * 4], cprData	[4], tag[4]);
	compress_unit cu3 (clk, reset, wrtEn, dataIn [DATA_WIDTH * 4 - 1 : DATA_WIDTH * 3], cprData	[3], tag[3]);
	compress_unit cu2 (clk, reset, wrtEn, dataIn [DATA_WIDTH * 3 - 1 : DATA_WIDTH * 2], cprData	[2], tag[2]);
	compress_unit cu1 (clk, reset, wrtEn, dataIn [DATA_WIDTH * 2 - 1 : DATA_WIDTH * 1], cprData	[1], tag[1]);
	compress_unit cu0 (clk, reset, wrtEn, dataIn [DATA_WIDTH * 1 - 1 : DATA_WIDTH * 0], cprData	[0], tag[0]);
*/

	// Debug
	// cprData and tag should not come as an inputs to this Compressor module
	// The following 18 lines should be deleted eventually
	wire		[DATA_WIDTH - 1 : 0]			cprData [0 : 7];	
	assign cprData[7] = cprDataIn [DATA_WIDTH * 8 - 1 : DATA_WIDTH * 7];
	assign cprData[6] = cprDataIn [DATA_WIDTH * 7 - 1 : DATA_WIDTH * 6];
	assign cprData[5] = cprDataIn [DATA_WIDTH * 6 - 1 : DATA_WIDTH * 5];
	assign cprData[4] = cprDataIn [DATA_WIDTH * 5 - 1 : DATA_WIDTH * 4];
	assign cprData[3] = cprDataIn [DATA_WIDTH * 4 - 1 : DATA_WIDTH * 3];
	assign cprData[2] = cprDataIn [DATA_WIDTH * 3 - 1 : DATA_WIDTH * 2];
	assign cprData[1] = cprDataIn [DATA_WIDTH * 2 - 1 : DATA_WIDTH * 1];
	assign cprData[0] = cprDataIn [DATA_WIDTH * 1 - 1 : DATA_WIDTH * 0];
	wire		[TAG_WIDTH - 1 : 0]				tag 		[0 : 7];	
	assign tag[7] = tagIn [TAG_WIDTH * 8 - 1 : TAG_WIDTH * 7];
	assign tag[6] = tagIn [TAG_WIDTH * 7 - 1 : TAG_WIDTH * 6];
	assign tag[5] = tagIn [TAG_WIDTH * 6 - 1 : TAG_WIDTH * 5];
	assign tag[4] = tagIn [TAG_WIDTH * 5 - 1 : TAG_WIDTH * 4];
	assign tag[3] = tagIn [TAG_WIDTH * 4 - 1 : TAG_WIDTH * 3];
	assign tag[2] = tagIn [TAG_WIDTH * 3 - 1 : TAG_WIDTH * 2];
	assign tag[1] = tagIn [TAG_WIDTH * 2 - 1 : TAG_WIDTH * 1];
	assign tag[0] = tagIn [TAG_WIDTH * 1 - 1 : TAG_WIDTH * 0];





  Tag2Len #(.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) tl7 (tag[7], len[7]);
  Tag2Len #(.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) tl6 (tag[6], len[6]);
  Tag2Len #(.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) tl5 (tag[5], len[5]);
  Tag2Len #(.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) tl4 (tag[4], len[4]);
  Tag2Len #(.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) tl3 (tag[3], len[3]);
  Tag2Len #(.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) tl2 (tag[2], len[2]);
  Tag2Len #(.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) tl1 (tag[1], len[1]);
  Tag2Len #(.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) tl0 (tag[0], len[0]);
		
	wire 		[DATA_WIDTH * 2 - 1 : 0] mgOut00, mgOut01, mgOut02, mgOut03;
	wire 		[LEN_WIDTH      - 1 : 0] mgLen00, mgLen01, mgLen02, mgLen03;
  Merger #(.DATA_IN_WIDTH(DATA_WIDTH), .LEN_IN_WIDTH(LEN_WIDTH)) mg03 (clk, reset, wrtEn, cprData[7], len[7], cprData[6], len[6], mgOut03, mgLen03);
  Merger #(.DATA_IN_WIDTH(DATA_WIDTH), .LEN_IN_WIDTH(LEN_WIDTH)) mg02 (clk, reset, wrtEn, cprData[5], len[5], cprData[4], len[4], mgOut02, mgLen02);
  Merger #(.DATA_IN_WIDTH(DATA_WIDTH), .LEN_IN_WIDTH(LEN_WIDTH)) mg01 (clk, reset, wrtEn, cprData[3], len[3], cprData[2], len[2], mgOut01, mgLen01);
  Merger #(.DATA_IN_WIDTH(DATA_WIDTH), .LEN_IN_WIDTH(LEN_WIDTH)) mg00 (clk, reset, wrtEn, cprData[1], len[1], cprData[0], len[0], mgOut00, mgLen00);
  
	wire		[DATA_WIDTH * 4 - 1 : 0] mgOut10, mgOut11;
	wire 		[LEN_WIDTH      - 1 : 0] mgLen10, mgLen11;
	Merger #(.DATA_IN_WIDTH(DATA_WIDTH * 2), .LEN_IN_WIDTH(LEN_WIDTH)) mg11 (clk, reset, wrtEn, mgOut03, mgLen03, mgOut02, mgLen02, mgOut11, mgLen11);
	Merger #(.DATA_IN_WIDTH(DATA_WIDTH * 2), .LEN_IN_WIDTH(LEN_WIDTH)) mg10 (clk, reset, wrtEn, mgOut01, mgLen01, mgOut00, mgLen00, mgOut10, mgLen10);
	
	wire		[DATA_WIDTH * 8 - 1 : 0] mgOut20;
	wire 		[LEN_WIDTH      - 1 : 0] mgLen20;	
	Merger #(.DATA_IN_WIDTH(DATA_WIDTH * 4), .LEN_IN_WIDTH(LEN_WIDTH)) mg20 (clk, reset, wrtEn, mgOut11, mgLen11, mgOut10, mgLen10, mgOut20, mgLen20);
	
	assign dataOut = mgOut20;
	assign tagOut  = tag[7] | tag[6] | tag[5] | tag[4] | tag[3] | tag[2] | tag[1] | tag[0];
	
endmodule