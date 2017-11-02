module Register #(
	parameter 													BIT_WIDTH 	= 32,
	parameter 													RESET_VALUE = 0
)
(
	input 															clk,
	input			  												reset,
	input																wrtEn,
	input				[BIT_WIDTH - 1: 0] 			dataIn,
	output		reg	[BIT_WIDTH - 1: 0] 			dataOut
);


	
	always @(posedge clk) begin
		if (reset == 1'b1)
			dataOut <= RESET_VALUE;
		else if (wrtEn == 1'b1)
			dataOut <= dataIn;
	end
	
endmodule
