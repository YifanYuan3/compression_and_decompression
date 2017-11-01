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
	input		[3																		:	0]	flags_in, // valid[3], tlast_in[2] + flag_compression[1] + is_header[0]
	input		[DATA_WIDTH * `NUM_COMPRESS_UNITS - 1 : 0]	dataIn,
	output	[DATA_WIDTH * `NUM_COMPRESS_UNITS - 1 : 0]	dataOut,
	output	[TAG_WIDTH  * `NUM_COMPRESS_UNITS - 1 : 0]	tagOut,
	output  [LEN_WIDTH                        - 1 : 0]  lenOut,
	output	[3																		:	0]	flags_out
);
	
	genvar 	i;
	wire		[3																		:	0]	flags0, flags1, flags2;
	wire		[(DATA_WIDTH >> 1) - 1								:	0]	half;				
	
	Register #(
		.BIT_WIDTH(DATA_WIDTH >> 1)
	) half_reg	(
		clk, 
		reset, 
		wrtEn, 
		dataIn[DATA_WIDTH * `NUM_COMPRESS_UNITS - 1 : DATA_WIDTH * `NUM_COMPRESS_UNITS - (DATA_WIDTH>>1)], 
		half
	);
	
	wire		[DATA_WIDTH * `NUM_COMPRESS_UNITS - 1 : 0]	dataIn_;
	assign	dataIn_ = (flags_in[0] == 1'b1) ? dataIn : ((dataIn << (DATA_WIDTH >> 1)) | half);
	
	generate 
		for (i = 0; i < `NUM_COMPRESS_UNITS; i = i + 1)
		begin: CU
			wire 	[DATA_WIDTH - 1 : 0] 	cprData, 	tmpCprData, tmpCprData_;
			wire 	[TAG_WIDTH  - 1 : 0]	tag, 			tmpTag,			tmpTag_;				
			wire 	[LEN_WIDTH  - 1 : 0]	len, 			tmpLen,			tmpLen_;

			compress_unit 
				cu (
				clk, 
				reset, 
				wrtEn, 
				dataIn_ [DATA_WIDTH * (i + 1) - 1 : DATA_WIDTH * i], 
				tmpCprData_, 
				tmpTag_
			);
			
			assign tmpCprData = (flags_in[1] == 1'b0 || flags_in[0] == 1'b1) ? dataIn_ [DATA_WIDTH * (i + 1) - 1 : DATA_WIDTH * i] : tmpCprData_;
			assign tmpTag			=	(flags_in[1] == 1'b0 || flags_in[0] == 1'b1) ? 16'hFFFF : tmpTag_;

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
	Register #(.BIT_WIDTH(4)) flagsreg0	(clk, reset, wrtEn, flags_in, flags0);
		
	wire 		[DATA_WIDTH * 2 - 1 : 0] 	mgOut00, mgOut01, mgOut02, mgOut03;
	wire 		[TAG_WIDTH  * 2 - 1 : 0] 	mgTag00, mgTag01, mgTag02, mgTag03;
	wire 		[LEN_WIDTH      - 1 : 0] 	mgLen00, mgLen01, mgLen02, mgLen03;
  Merger #(.DATA_WIDTH(DATA_WIDTH),	.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) mg03 (clk, reset, wrtEn, CU[7].cprData, CU[7].tag, CU[7].len,	CU[6].cprData, CU[6].tag, CU[6].len, mgOut03, mgTag03, mgLen03);
  Merger #(.DATA_WIDTH(DATA_WIDTH),	.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) mg02 (clk, reset, wrtEn, CU[5].cprData, CU[5].tag, CU[5].len,	CU[4].cprData, CU[4].tag, CU[4].len, mgOut02, mgTag02, mgLen02);
  Merger #(.DATA_WIDTH(DATA_WIDTH),	.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) mg01 (clk, reset, wrtEn, CU[3].cprData, CU[3].tag, CU[3].len,	CU[2].cprData, CU[2].tag, CU[2].len, mgOut01, mgTag01, mgLen01);
  Merger #(.DATA_WIDTH(DATA_WIDTH),	.TAG_WIDTH(TAG_WIDTH), .LEN_WIDTH(LEN_WIDTH)) mg00 (clk, reset, wrtEn, CU[1].cprData, CU[1].tag, CU[1].len,	CU[0].cprData, CU[0].tag, CU[0].len, mgOut00, mgTag00, mgLen00);
	Register #(.BIT_WIDTH(4)) flagsreg1	(clk, reset, wrtEn, flags0, flags1);
  
	wire		[DATA_WIDTH * 4 - 1 : 0] 	mgOut10, mgOut11;
	wire 		[TAG_WIDTH  * 4 - 1 : 0] 	mgTag10, mgTag11;
	wire 		[LEN_WIDTH      - 1 : 0] 	mgLen10, mgLen11;
	Merger #(.DATA_WIDTH(DATA_WIDTH * 2), .TAG_WIDTH(TAG_WIDTH * 2), .LEN_WIDTH(LEN_WIDTH)) mg11 (clk, reset, wrtEn, mgOut03, mgTag03, mgLen03, mgOut02, mgTag02, mgLen02, mgOut11, mgTag11, mgLen11);
	Merger #(.DATA_WIDTH(DATA_WIDTH * 2), .TAG_WIDTH(TAG_WIDTH * 2), .LEN_WIDTH(LEN_WIDTH)) mg10 (clk, reset, wrtEn, mgOut01, mgTag01, mgLen01, mgOut00, mgTag00, mgLen00,	mgOut10, mgTag10, mgLen10);
	Register #(.BIT_WIDTH(4)) flagsreg2	(clk, reset, wrtEn, flags1, flags2);
	 	
	wire		[DATA_WIDTH * 8 - 1 : 0] 	mgOut20;
	wire 		[TAG_WIDTH  * 8 - 1 : 0] 	mgTag20;
	wire 		[LEN_WIDTH      - 1 : 0] 	mgLen20;	
	Merger #(.DATA_WIDTH(DATA_WIDTH * 4), .TAG_WIDTH(TAG_WIDTH * 4), .LEN_WIDTH(LEN_WIDTH)) mg20 (clk, reset, wrtEn, mgOut11, mgTag11, mgLen11, mgOut10, mgTag10, mgLen10,	mgOut20, mgTag20, mgLen20);
	Register #(.BIT_WIDTH(4)) flagsreg3	(clk, reset, wrtEn, flags2, flags_out);
		
	wire															valid, flag_compression, is_header;
	wire 		[LEN_WIDTH      - 1 : 0] 	mgLen20_;

	assign 	valid							= flags_out[3];
	assign	flag_compression	=	flags_out[1];
	assign	is_header					= flags_out[0];
	
	assign 	dataOut 					= (valid == 1'b1) ? mgOut20 : 0;
	assign 	tagOut  					= (valid == 1'b1) ? mgTag20 : 0;
	assign 	mgLen20_					=	(flag_compression == 1'b0 || is_header == 1'b1) ? mgLen20 : mgLen20 + 2;	 // 16 bits for tags
	assign 	lenOut 						= (valid == 1'b1) ? mgLen20_ : 0; 
		
endmodule