module DataStreamer #(
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
	output		[LEN_WIDTH  		    : 0] 	newLenSum
);
	wire																valid;

	wire 			[LEN_WIDTH  				: 0]  shiftedLen;
	wire 			[LEN_WIDTH  				: 0]  totalLen;
	wire 			[LEN_WIDTH  				: 0] 	lenSum;

	assign shiftedLen = len << 3;
	assign totalLen   = lenSum + shiftedLen + 16;
	assign valid 			= (totalLen > 256) ? 1'b1 : 1'b0;
	assign newLenSum  = valid ? totalLen - 256 : totalLen;
	
	Register #(
		.BIT_WIDTH(LEN_WIDTH + 1)
	) lenreg (
		clk,
		reset,
		wrtEn,
		newLenSum,
		lenSum
	);

endmodule