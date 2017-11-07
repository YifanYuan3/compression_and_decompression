`timescale 1ns / 1ps



module compress_unit(
    input [31:0] data_in, 
    output reg [1:0] bitmap, 
    output reg [31:0] data_out
    );

wire [7:0] exponent;

wire [31:0] res_0;
wire [31:0] res_8;
wire [31:0] res_16;
wire [31:0] res_32;

wire [7:0] compressor_8_out;
wire [15:0] compressor_16_out;

assign res_0 = 32'b0;
assign res_8 = {24'b0, compressor_8_out};
assign res_16 = {16'b0, compressor_16_out};
assign res_32 = data_in;

assign exponent = data_in[30:23];
    
compressor_8 c8(
    .data_in({data_in[7:0],data_in[15:8],data_in[23:16],data_in[31:24]}), 
    .data_out(compressor_8_out)
);

compressor_16 c16(
    .data_in({data_in[7:0],data_in[15:8],data_in[23:16],data_in[31:24]}), 
    .data_out(compressor_16_out)
);

always@ (*) begin
    if (exponent < 112) begin
        bitmap = 2'b00; 
        data_out = res_0;
    end
    else if (exponent < 120) begin
        bitmap = 2'b10;
        data_out = res_16;
    end
    else if (exponent < 127) begin
        bitmap = 2'b01;
        data_out = res_8;
    end
    else begin
        bitmap = 2'b11;
        data_out = res_32;
    end
end

endmodule

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

module compressor_16(
    input [31:0] data_in, 
    output [15:0] data_out
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

assign data_out = {sign, result_mantissa[22:8]};

endmodule
