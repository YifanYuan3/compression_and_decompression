module CompressUnitTB;

  reg  [31:0] data_in;
  wire [31:0] data_out;
  wire [1:0] status;
  
  reg clk;
  reg reset;
  reg enable;

  integer i;
  initial begin
    clk = 0;
    reset = 0;
    enable = 1;
	  data_in = 2;
	  @(negedge clk);
	  data_in = 101;
	  @(negedge clk);	  
	  data_in = 1001;
    $finish;
  end

  always #1 clk = ~clk;

	compress_unit cu (clk, resetn, enable, data_in, data_out, status);

  initial
  begin
    $dumpfile("jongse.vcd");
    $dumpvars(0,CompressUnitTB);
  end

endmodule
