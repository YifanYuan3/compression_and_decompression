`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2017 11:00:40 PM
// Design Name: 
// Module Name: compressor_unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module compressor_unit(
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
    .data_in(data_in), 
    .data_out(compressor_8_out)
);

compressor_16 c16(
    .data_in(data_in), 
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
