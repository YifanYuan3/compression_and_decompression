`timescale 1ns/1ns
// module FIFO
// #(  // Parameters
//     parameter   DATA_WIDTH          = 64,
//     parameter   INIT                = "init.mif",
//     parameter   ADDR_WIDTH          = 4,
//     parameter   RAM_DEPTH           = (1 << ADDR_WIDTH),
//     parameter   INITIALIZE_FIFO     = "no",
//     parameter   TYPE                = "MLAB"
// )(  // Ports
//     input  wire                         clk,
//     input  wire                         reset,
//     input  wire                         push,
//     input  wire                         pop,
//     input  wire [ DATA_WIDTH -1 : 0 ]   data_in,
//     output reg  [ DATA_WIDTH -1 : 0 ]   data_out,
//     output reg                          empty,
//     output reg                          full,
//     output reg													almost_full,
//     output reg  [ ADDR_WIDTH    : 0 ]   fifo_count
// );

module FIFO_tb;

	reg 				clk, reset, push, pop;
	reg  [31:0]	data_in;
	wire [31:0] data_out;
	wire [5:0]  addedLen;
	wire 				empty, full, almost_full;
	wire [4:0]	fifo_count;
	
	initial 
	begin
		clk = 1;
		reset = 1;
		push = 0;
		pop = 0;
		data_in = 0;
		@(posedge clk);
		reset = 0;
		push = 1;
		data_in = 32'h1234;
		@(posedge clk);
		push = 0;
		pop = 1;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
	  $finish;
	end
  
  always #1 clk = ~clk;
  
  FIFO #(
  	.DATA_WIDTH(32),
  	.ADDR_WIDTH(4)
  ) fifo0 (
  	clk, 
  	reset, 
  	push,
  	pop,
  	data_in,
  	data_out,
  	empty,
  	full,
  	almost_full,
  	fifo_count
  );
  
  initial
  begin
    $dumpfile("fifo.vcd");
    $dumpvars(0, FIFO_tb);
  end

endmodule