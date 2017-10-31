`define NUM_COMPRESS_UNITS 8

module EightDataCompressUnit #(
	parameter 																					DATA_WIDTH = 32,
	parameter 																					TAG_WIDTH  = 2,
	parameter																						LEN_WIDTH  = 8
)
(
	input																								clk,
	input																								reset,
	input																								wrtEn,
	input																								validIn,
	input		[DATA_WIDTH * `NUM_COMPRESS_UNITS - 1 : 0]	dataIn,
	output	[DATA_WIDTH * `NUM_COMPRESS_UNITS - 1 : 0]	dataOut,
	output	[TAG_WIDTH  * `NUM_COMPRESS_UNITS - 1 : 0]	tagOut,
	output  [LEN_WIDTH                        - 1 : 0]  lenOut,
	output																							validOut
);
	
	genvar i;
	wire	valid0, valid1, valid2;
	
	generate 
		for (i = 0; i < `NUM_COMPRESS_UNITS; i = i + 1)
		begin: CU

			wire 	[DATA_WIDTH - 1 : 0] 	cprData, 	tmpCprData;
			wire 	[TAG_WIDTH  - 1 : 0]	tag, 			tmpTag;				
			wire 	[LEN_WIDTH  - 1 : 0]	len, 			tmpLen;

			compress_unit 
				cu (
				clk, 
				reset, 
				wrtEn, 
				dataIn [DATA_WIDTH * (i + 1) - 1 : DATA_WIDTH * i], 
				tmpCprData, 
				tmpTag
			);

			Tag2Len #(
				.TAG_WIDTH(TAG_WIDTH), 
				.LEN_WIDTH(LEN_WIDTH)
			) tu (
				tmpTag, 
				tmpLen
			);

			Register #(.BIT_WIDTH(DATA_WIDTH))	cprDataReg 	(clk, reset, wrtEn, tmpCprData, cprData);
			Register #(.BIT_WIDTH(TAG_WIDTH ))	tagReg 			(clk, reset, wrtEn, tmpTag, 		tag);
			Register #(.BIT_WIDTH(LEN_WIDTH ))	lenReg 			(clk, reset, wrtEn, tmpLen, 		len);
		end
	endgenerate
	Register #(.BIT_WIDTH(1)) valid0reg	(clk, reset, wrtEn, validIn, valid0);
// 	generate
// 		for (i = 0; i < `NUM_COMPRESS_UNITS; i = i + 1)
// 		begin: CU
// 			
// 			wire [DATA_WIDTH - 1 : 0] cprData, 	tmpCprData;
// 			wire [TAG_WIDTH  - 1 : 0]	tag, 			tmpTag;				
// 			wire [LEN_WIDTH  - 1 : 0]	len, 			tmpLen;
// 			
// 			assign tmpCprData = cprDataIn [DATA_WIDTH * (i + 1) - 1 : DATA_WIDTH * i];
// 			assign tmpTag     = tagIn     [TAG_WIDTH  * (i + 1) - 1 : TAG_WIDTH  * i];
// 			
// 			Tag2Len #(
// 				.TAG_WIDTH(TAG_WIDTH), 
// 				.LEN_WIDTH(LEN_WIDTH)
// 			) tu (
// 				tmpTag, 
// 				tmpLen
// 			);
// 			
// 			Register #(.BIT_WIDTH(DATA_WIDTH))	cprDataReg 	(clk, reset, wrtEn, tmpCprData, cprData);
// 			Register #(.BIT_WIDTH(TAG_WIDTH ))	tagReg 			(clk, reset, wrtEn, tmpTag, 		tag);
// 			Register #(.BIT_WIDTH(LEN_WIDTH ))	lenReg 			(clk, reset, wrtEn, tmpLen, 		len);
// 		end
// 	endgenerate
		
	wire 		[DATA_WIDTH * 2 - 1 : 0] mgOut00, mgOut01, mgOut02, mgOut03;
	wire 		[TAG_WIDTH  * 2 - 1 : 0] mgTag00, mgTag01, mgTag02, mgTag03;
	wire 		[LEN_WIDTH      - 1 : 0] mgLen00, mgLen01, mgLen02, mgLen03;
  Merger #(.DATA_WIDTH(DATA_WIDTH),	.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) mg03 (clk, reset, wrtEn, CU[7].cprData, CU[7].tag, CU[7].len,	CU[6].cprData, CU[6].tag, CU[6].len, mgOut03, mgTag03, mgLen03);
  Merger #(.DATA_WIDTH(DATA_WIDTH),	.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) mg02 (clk, reset, wrtEn, CU[5].cprData, CU[5].tag, CU[5].len,	CU[4].cprData, CU[4].tag, CU[4].len, mgOut02, mgTag02, mgLen02);
  Merger #(.DATA_WIDTH(DATA_WIDTH),	.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) mg01 (clk, reset, wrtEn, CU[3].cprData, CU[3].tag, CU[3].len,	CU[2].cprData, CU[2].tag, CU[2].len, mgOut01, mgTag01, mgLen01);
  Merger #(.DATA_WIDTH(DATA_WIDTH),	.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) mg00 (clk, reset, wrtEn, CU[1].cprData, CU[1].tag, CU[1].len,	CU[0].cprData, CU[0].tag, CU[0].len, mgOut00, mgTag00, mgLen00);
	Register #(.BIT_WIDTH(1)) valid1reg	(clk, reset, wrtEn, valid0, valid1);
  
	wire		[DATA_WIDTH * 4 - 1 : 0] mgOut10, mgOut11;
	wire 		[TAG_WIDTH  * 4 - 1 : 0] mgTag10, mgTag11;
	wire 		[LEN_WIDTH      - 1 : 0] mgLen10, mgLen11;
	Merger #(.DATA_WIDTH(DATA_WIDTH * 2), .TAG_WIDTH(TAG_WIDTH * 2), .LEN_WIDTH(LEN_WIDTH)) mg11 (clk, reset, wrtEn, mgOut03, mgTag03, mgLen03, mgOut02, mgTag02, mgLen02, mgOut11, mgTag11, mgLen11);
	Merger #(.DATA_WIDTH(DATA_WIDTH * 2), .TAG_WIDTH(TAG_WIDTH * 2), .LEN_WIDTH(LEN_WIDTH)) mg10 (clk, reset, wrtEn, mgOut01, mgTag01, mgLen01, mgOut00, mgTag00, mgLen00,	mgOut10, mgTag10, mgLen10);
	Register #(.BIT_WIDTH(1)) valid2reg	(clk, reset, wrtEn, valid1, valid2);
	 	
	wire		[DATA_WIDTH * 8 - 1 : 0] mgOut20;
	wire 		[TAG_WIDTH  * 8 - 1 : 0] mgTag20;
	wire 		[LEN_WIDTH      - 1 : 0] mgLen20;	
	Merger #(.DATA_WIDTH(DATA_WIDTH * 4), .TAG_WIDTH(TAG_WIDTH * 4), .LEN_WIDTH(LEN_WIDTH)) mg20 (clk, reset, wrtEn, mgOut11, mgTag11, mgLen11, mgOut10, mgTag10, mgLen10,	mgOut20, mgTag20, mgLen20);
	Register #(.BIT_WIDTH(1)) valid3reg	(clk, reset, wrtEn, valid2, validOut);
		
	assign dataOut 	= (validOut == 1'b1) ? mgOut20 : 0;
	assign tagOut  	= (validOut == 1'b1) ? mgTag20 : 0;
	assign lenOut 	= (validOut == 1'b1) ? mgLen20 + 2 : 0; // 16 bits for tags
		
endmodule