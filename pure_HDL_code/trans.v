`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2017 12:30:54 PM
// Design Name: 
// Module Name: trans
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


module trans(

    input [31 : 0] din,
    output [31 : 0]dout

    );
    
    wire [8 : 0] exp;
    wire [22 : 0] mantissa;
    wire [22 : 0] e = 23'b1;
    wire [22 : 0] f;
    wire [22 : 0] g;
    
    assign mantissa = din[22 : 0] >> (127-exp);
    assign f = e << (exp - 104);
    assign g = f | mantissa;
    assign exp = din[30 : 23];
    assign dout = { din[31] , 8'b01111111 , g };
    
    
endmodule
