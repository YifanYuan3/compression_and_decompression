module Shifter #(
	parameter 														DATA_WIDTH 	= 32,
	parameter 														LEN_WIDTH		= 8
)
(
	input 		[DATA_WIDTH     - 1 : 0]		dataIn,
	input 		[LEN_WIDTH      - 1 : 0]		len,
	output 		[DATA_WIDTH * 2 - 1 : 0]		dataOut
);
	assign 		dataOut		= dataIn << (len << 3);
endmodule