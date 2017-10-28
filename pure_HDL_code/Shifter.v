module Shifter #(
	parameter 														DATA_WIDTH 	= 32,
	parameter 														LEN_WIDTH		= 8
)
(
	input 		[DATA_WIDTH     - 1 : 0]		dataIn,
	input 		[LEN_WIDTH      - 1 : 0]		len0,
	input 		[LEN_WIDTH      - 1 : 0]		len1,
	output 		[DATA_WIDTH * 2 - 1 : 0]		dataOut,
	output		[LEN_WIDTH      - 1 : 0]		addedLen
);
	wire 			[LEN_WIDTH      - 1 : 0]   	bitlen;
	wire 		  [DATA_WIDTH * 2 - 1 : 0]		tmpDataOut0;
	wire 		  [DATA_WIDTH * 2 - 1 : 0]		tmpDataOut1;

	assign 		bitlen   			= (len0 << 3);
	assign 		tmpDataOut0  	= dataIn;
	assign 		tmpDataOut1		= tmpDataOut0 << DATA_WIDTH;
	assign 		dataOut  			= tmpDataOut1 >> bitlen;	
	assign 		addedLen 			= len0 + len1;
endmodule