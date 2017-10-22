module compressor_top(
    input [31:0] fp_in, 
    output [1:0] bitmap, 
    output [31:0] fp_out
);

compressor_unit compressor_unit_inst(
    .data_in(fp_in), 
    .bitmap(bitmap), 
    .data_out(fp_out)
);

endmodule