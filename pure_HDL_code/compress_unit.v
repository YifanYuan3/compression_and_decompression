`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2017 01:50:28 PM
// Design Name: 
// Module Name: compress_unit
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


module compress_unit
(
    input                                          clk,
    input                                          resetn,
    input                                          enable,
    
    input              [ 31 : 0 ]                  din,
    output             [ 31 : 0 ]                  dout,
    output             [ 1 : 0 ]                   status//indicate whether the abs value of the data is less than 1 
    );
    
    wire               [ 7 : 0 ]                   exp;//exponent part of the data
    wire               [ 23 : 0 ]                  mts;//mantissa part of the data
    wire               [ 31 : 0 ]                  sum;
    
 //   wire                                           ADD0VALID;//valid signal for adder0
    wire               [ 31 : 0 ]                  dataout0;
    wire               [ 31 : 0 ]                  dataout1;
    wire               [ 31 : 0 ]                  dataout2;   
    
    wire               [ 31 : 0 ]                  dataout;
    wire               [ 1 : 0 ]                   statusout; 
    wire               [ 1 : 0 ]                   a;
    wire               [ 31 : 0 ]                  b;


    
        
    assign exp = din[ 30 : 23 ];
    assign mts = { din[ 31 ] , din[ 22 : 0 ] };
    assign dout = dataout;
    assign status = statusout;

    trans trans ( .din(din),.dout(sum) );
    
    assign statusout = ( exp > 127 ) ? 2'b11 : a;
    assign a = ( exp <= 111 ) ? 2'b00 : 2'b10;
    
    
    assign dataout0 = { din[ 31 ] , sum[ 22 : 8 ] , 16'b0 } ;
    assign dataout1 = 32'b0;
    assign dataout2 = din;
    
    assign dataout = ( statusout == 2'b11 ) ? dataout2 : b;
    assign b = ( statusout == 2'b10  ) ? dataout0 : dataout1;
 
 
endmodule 