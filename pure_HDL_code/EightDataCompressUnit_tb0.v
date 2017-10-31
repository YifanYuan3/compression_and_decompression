`timescale 1ns/1ns

module EightDataCompressUnit_tb;

	reg 										clk;
	reg											reset;
	reg 										wrtEn; 
	reg 	[32 * 8 - 1 : 0]	dataIn;
	reg 	[32 * 8 - 1 : 0]	cprDataIn;	// debug
	reg		[2  * 8 - 1 : 0]  tagIn;		// debug
	wire  [32 * 8 - 1 : 0]  dataOut;
	wire	[2  * 8 - 1 : 0]  tagOut;
	wire  [7          : 0]  lenOut;
	
	initial 
	begin
		
		clk = 0;
		reset = 0;
		wrtEn = 1;
		@(negedge clk);
		
		// len = F
		cprDataIn = 256'hFEDC_BA98_0000_7654_0000_0032_1FED_CBA9_0000_8765_0000_0043_0000_0000_0000_0021;
		tagIn		= 16'b1110011110010001;
		@(negedge clk);
		// len = B
// 		cprDataIn = 256'h0000_0000_0000_0076_0000_5432_0000_001F_0000_00ED_0000_CBA9_0000_8765_0000_4321;
// 		tagIn		= 16'b0001100101101010;
// 		@(negedge clk);
// 		// len = 7
// 		cprDataIn = 256'h0000_001F_0000_00ED_0000_CBA9_0000_0000_0000_6543_0000_0021_0000_0000_0000_0000;
// 		tagIn		= 16'b0101100010010000;
// 		@(negedge clk);
// 		// len = 8
// 		cprDataIn = 256'h1FED_CBA9_8765_4321_0000_0000_0000_00FE_DCBA_9876_5432_1FED_CBA9_8765_0000_4321;
// 		tagIn		= 16'b1111000111111110;
// 		@(negedge clk);
// 		// len = 0
// 		cprDataIn = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
// 		tagIn		= 16'b0000000000000000;
// 		@(negedge clk);
// 		// len = 20
// 		cprDataIn = 256'h4321_FEDC_BA98_7654_321F_EDCB_A987_6543_21FE_DCBA_9876_5432_1FED_CBA9_8765_4321;
// 		tagIn		= 16'b1111111111111111;
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		$finish;
	end
  
  EightDataCompressUnit 
  	cu8 (
  	clk, 
  	reset, 
  	wrtEn, 
  	dataIn, 
  	cprDataIn, 
  	tagIn, 
  	dataOut, 
  	tagOut, 
  	lenOut
  );
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("eight.vcd");
    $dumpvars(0, EightDataCompressUnit_tb);
  end

endmodule