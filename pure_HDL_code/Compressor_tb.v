`timescale 1ns/1ns

module Compressor_tb;

	reg 										clk;
	reg											reset;
	reg 										wrtEn; 
	reg											push_infifo;
	reg 	[32 * 8 - 1 : 0]	data_in;
	wire  [32 * 8 - 1 : 0]  data_out;
	wire	[2  * 8 - 1 : 0]  tagOut;
	
	initial 
	begin
		
		clk = 1;
		reset = 1;
		@(posedge clk);;
		reset = 0;
		wrtEn = 1;
		push_infifo = 0;
		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		@(posedge clk);
		reset = 0;
		push_infifo = 1;
		data_in = 256'hFEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98;
		$display("data_out %h", data_out);
		@(posedge clk);
		data_in = 256'h1000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		$display("data_out %h", data_out);
		@(posedge clk);
		data_in = 256'h2000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);			
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$display("data_out %h", data_out);
		@(posedge clk);
		$finish;
	end
  
  Compressor cmprs (clk, reset, wrtEn, data_in, push_infifo, data_out);
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("compressor.vcd");
    $dumpvars(0, Compressor_tb);
  end

endmodule