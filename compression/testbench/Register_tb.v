`timescale 1ns/1ns
// module Register #(
// 	parameter 													BIT_WIDTH 	= 32,
// 	parameter 													RESET_VALUE = 0
// )
// (
// 	input 															clk,
// 	input			  												reset,
// 	input																wrtEn,
// 	input				[BIT_WIDTH - 1: 0] 			dataIn,
// 	output			[BIT_WIDTH - 1: 0] 			dataOut
// );
// 
// 	reg					[BIT_WIDTH - 1: 0] 			dataOut;
// 	
// 	always @(posedge clk) begin
// 		if (reset == 1'b1)
// 			dataOut <= RESET_VALUE;
// 		else if (wrtEn == 1'b1)
// 			dataOut <= dataIn;
// 	end
// 	
// endmodule

module Register_tb;
	reg clk;
	reg reset;
	reg wrt_en;
	reg data_in;
	wire data_out;
	
	initial 
	begin
		clk = 1;
		reset = 1;
		wrt_en = 1;
		@(posedge clk);
		reset = 0;
		data_in = 0;
		@(posedge clk);
		data_in = 1;
		@(posedge clk);
		@(posedge clk);
		$finish;
	end
  
	Register #(
		.BIT_WIDTH(1)
	) one_bit_reg (
		clk, 
		reset, 
		wrt_en, 
		data_in, 
		data_out
	);
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("register.vcd");
    $dumpvars(0, Register_tb);
  end
endmodule