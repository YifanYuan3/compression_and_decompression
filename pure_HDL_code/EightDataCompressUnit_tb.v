`timescale 1ns/1ns
// 	input																								clk,
// 	input																								reset,
// 	input																								wrtEn,
// 	input		[3																		:	0]	flags_in, // valid[3], tlast_in[2] + flag_compression[1] + is_header[0]
// 	input		[DATA_WIDTH * `NUM_COMPRESS_UNITS - 1 : 0]	dataIn,
// 	output	[DATA_WIDTH * `NUM_COMPRESS_UNITS - 1 : 0]	dataOut,
// 	output	[TAG_WIDTH  * `NUM_COMPRESS_UNITS - 1 : 0]	tagOut,
// 	output  [LEN_WIDTH                        - 1 : 0]  lenOut,
// 	output	[3																		:	0]	flags_out

module EightDataCompressUnit_tb;

	reg 										clk;
	reg											reset;
	reg 										wrtEn; 
	reg 	[3					: 0]	flags_in; 
	reg 	[32 * 8 - 1 : 0]	dataIn;
	wire  [32 * 8 - 1 : 0]  dataOut;
	wire	[2  * 8 - 1 : 0]  tagOut;
	wire  [7          : 0]  lenOut;
	wire 	[3					: 0]	flags_out; 
	
	initial 
	begin
		
		clk = 0;
		reset = 1;
		wrtEn = 1;
		flags_in = 4'b0000;
		@(negedge clk);
		reset = 0;
		flags_in = 4'b1011;
		dataIn = 256'hBA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC;
// 		dataIn = 256'h1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111;
		$display("dataOut %h", dataOut);
		@(negedge clk);
		flags_in = 4'b1010;
// 		dataIn = 256'h2222_2222_2222_2222_2222_2222_2222_2222_2222_2222_2222_2222_2222_2222_2222_2222;
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$finish;
	end
  
  EightDataCompressUnit 
  	cu8 (
  	clk, 
  	reset, 
  	wrtEn, 
  	flags_in,
  	dataIn, 
  	dataOut, 
  	tagOut, 
  	lenOut,
  	flags_out
  );
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("eight.vcd");
    $dumpvars(0, EightDataCompressUnit_tb);
  end

endmodule