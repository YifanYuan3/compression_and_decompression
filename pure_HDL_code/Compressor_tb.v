`timescale 1ns/1ns
// 	input 																			clk,
// 	input 																			reset, 
// 	input 																			wrt_en,
// 	input 	[`DATA_WIDTH * `NUM_DATA - 1 	: 0] 	data_in,
// 	input 																			tvalid,
// 	input																				tlast,
// 	output																			tready,
// 	output	[`DATA_WIDTH * `NUM_DATA - 1 	: 0]	data_out
	
module Compressor_tb;
	
	reg 										clk;
	reg											reset;
	reg 										wrtEn; 
	reg											tvalid_in;
	reg											tlast_in;
	reg											tready_in;
	reg 	[32 * 8 - 1 : 0]	data_in;
	wire  [32 * 8 - 1 : 0]  data_out;
	wire										tready_out;
	wire										tvalid_out;
	wire										tlast_out;
	
	initial 
	begin
		
		clk = 0;
		reset = 1;
		wrtEn = 1;
		@(negedge clk);;
		reset = 0;
		tvalid_in = 1;
		tlast_in = 0;
		tready_in = 1;
		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		data_in[111:96] = 16'h0008;
		data_in[143:128] = 16'hdc05;
		data_in[127:120] = 8'h28;
		data_in[191:184] = 8'h06;
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		data_in = 256'hBA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC;
		$display("data_out %h", data_out);
		@(negedge clk);
		tlast_in = 1;
		data_in = 256'hFEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98;
		$display("data_out %h", data_out);
		@(negedge clk);
		tvalid_in = 0;
		$display("data_out %h", data_out);
		@(negedge clk);
// 		@(negedge clk);
// 		tlast_in = 0;
// 		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
// 		data_in[111:96] = 16'h0008;
// 		data_in[143:128] = 16'hdc03;
// 		data_in[127:120] = 8'h28;
// 		data_in[191:184] = 8'h06;
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		data_in = 256'hBA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC;
// 		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);			
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);			
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		tvalid_in = 1;
// 		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
// 		data_in[111:96] = 16'h0008;
// 		data_in[143:128] = 16'hdc05;
// 		data_in[127:120] = 8'h28;
// 		data_in[191:184] = 8'h06;
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		data_in = 256'hBA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC;
// 		$display("data_out %h", data_out);			
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);			
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
		$display("data_out %h", data_out);
		@(negedge clk);
// 		tlast_in = 1;
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		tlast_in = 0;
// 		data_in = 256'h1000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
// 		data_in[111:96] = 16'h0008;
// 		data_in[143:128] = 16'hdc00;
// 		data_in[127:120] = 8'h28;
// 		data_in[191:184] = 8'h06;
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		data_in = 256'hFEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98;
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
// 		$display("data_out %h", data_out);
// 		@(negedge clk);
		$finish;
	end
  
  Compressor cmprs (clk, reset, wrtEn, data_in, tvalid_in, tlast_in, tready_in, data_out, tready_out, tvalid_out, tlast_out);
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("compressor.vcd");
    $dumpvars(0, Compressor_tb);
  end

endmodule