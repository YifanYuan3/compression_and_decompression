module compressor_8(
    input [31:0] data_in, 
    output [7:0] data_out
);

wire sign;
wire [7:0] exponent;
wire [7:0] shift;
wire [22:0] mantissa;
wire [23:0] hidden_mantissa;
wire [23:0] result_mantissa;

assign sign = data_in[31];
assign exponent = data_in[30:23];
assign mantissa = data_in[22:0];

assign shift = 127 - exponent;
assign hidden_mantissa = {1'b1, mantissa};
assign result_mantissa = hidden_mantissa >> shift;

assign data_out = {sign, result_mantissa[22:16]};

endmodule