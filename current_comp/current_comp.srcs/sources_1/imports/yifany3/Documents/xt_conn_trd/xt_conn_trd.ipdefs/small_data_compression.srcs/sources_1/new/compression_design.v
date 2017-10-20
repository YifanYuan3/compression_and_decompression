`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2017 04:03:18 PM
// Design Name: 
// Module Name: compression_design
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


module compression_design#(
    parameter                                         ERRBOUND = 16
    )
    (
    input                                             clk,
    input                                             resetn,
    input                                             enable,
    input                                             is_last,
    input                [ 255 : 0 ]                  din,   
    input                                             is_header,  
  //  output               [ 271 : 0 ]                  dout,
    output   reg         [ 271 : 0 ]                  dataout0,
    output   reg                                      valid, 
    output   reg                                      last,
    output   reg         [ 9 : 0 ]                    sig_bytes0    
   // output               [ 33 : 0 ]                   tkeep,
  //  output               [ 9 : 0 ]                    sig_bytes

    );
    
    wire                 [ 31 : 0 ]                   datain    [ 7 : 0 ];
    wire                 [ 31 : 0 ]                   dataout   [ 7 : 0 ];
    wire                 [ 1 : 0 ]                    statusout [ 7 : 0 ];
    wire                 [ 5 : 0 ]                    address   [ 7 : 0 ];
    wire                 [ 2 : 0 ]                    statusout7;
    wire                 [ 2 : 0 ]                    statusout6;
    wire                 [ 2 : 0 ]                    statusout5;
    wire                 [ 2 : 0 ]                    statusout4;
    wire                 [ 2 : 0 ]                    statusout3;
    wire                 [ 2 : 0 ]                    statusout2;
    wire                 [ 2 : 0 ]                    statusout1;
    wire                 [ 2 : 0 ]                    statusout0;   
    wire                 [ 255 : 0 ]                  data      [ 7 : 0 ];
    
    wire                 [ 271 : 0 ]                  dout;
    wire                 [ 9 : 0 ]                    sig_bytes;
    
    
 //   wire                 [ 5 : 0 ]                    a;
    
    
    
 //   assign a = ( enable == 1 ) ? ( address[ 7 ] + statusout7 + 2 ) : 0;
    assign sig_bytes = ( is_header == 0 ) ? ( ( enable == 1 ) ? ( address[ 7 ] + statusout7 + 2 ) : 0 ) : 32;
//    assign sig_bytes = ( is_header == 0 ) ? ( address[ 7 ] + statusout7 + 2 ) : 32;
    assign { datain[7] , datain[6] , datain[5] , datain[4] , datain[3] , datain[2] , datain[1] , datain[0] } = din;
                
    compress_unit comp_unit1(.clk(clk),.resetn(resetn),.enable(enable),
                             .din(datain[7]),.dout(dataout[7]),.status(statusout[7]));
                             
    compress_unit comp_unit2(.clk(clk),.resetn(resetn),.enable(enable),
                             .din(datain[6]),.dout(dataout[6]),.status(statusout[6]));
                             
    compress_unit comp_unit3(.clk(clk),.resetn(resetn),.enable(enable),
                              .din(datain[5]),.dout(dataout[5]),.status(statusout[5]));
    
    compress_unit comp_unit4(.clk(clk),.resetn(resetn),.enable(enable),
                              .din(datain[4]),.dout(dataout[4]),.status(statusout[4]));
                                                                                                                   
    compress_unit comp_unit5(.clk(clk),.resetn(resetn),.enable(enable),
                              .din(datain[3]),.dout(dataout[3]),.status(statusout[3]));
                              
    compress_unit comp_unit6(.clk(clk),.resetn(resetn),.enable(enable),
                              .din(datain[2]),.dout(dataout[2]),.status(statusout[2]));
                              
    compress_unit comp_unit7(.clk(clk),.resetn(resetn),.enable(enable),
                              .din(datain[1]),.dout(dataout[1]),.status(statusout[1]));
            
    compress_unit comp_unit8(.clk(clk),.resetn(resetn),.enable(enable),
                              .din(datain[0]),.dout(dataout[0]),.status(statusout[0]));  
                              
    assign statusout7 = (statusout[7] == 2'b11) ? statusout[7] + 1 : { 1'b0 , statusout[7] };       
    assign statusout6 = (statusout[6] == 2'b11) ? statusout[6] + 1 : { 1'b0 , statusout[6] };   
    assign statusout5 = (statusout[5] == 2'b11) ? statusout[5] + 1 : { 1'b0 , statusout[5] };   
    assign statusout4 = (statusout[4] == 2'b11) ? statusout[4] + 1 : { 1'b0 , statusout[4] };   
    assign statusout3 = (statusout[3] == 2'b11) ? statusout[3] + 1 : { 1'b0 , statusout[3] };   
    assign statusout2 = (statusout[2] == 2'b11) ? statusout[2] + 1 : { 1'b0 , statusout[2] };   
    assign statusout1 = (statusout[1] == 2'b11) ? statusout[1] + 1 : { 1'b0 , statusout[1] };   
    assign statusout0 = (statusout[0] == 2'b11) ? statusout[0] + 1 : { 1'b0 , statusout[0] };   
    //assign status7 = (status[7] == 2'b11)? ststus[7] + 1 : { 1'b0 , status[7] };          
    
    
    assign address[ 7 ] = statusout6 + statusout5 + statusout4 + statusout3 + statusout2 + statusout1 + statusout0;
    assign address[ 6 ] = statusout5 + statusout4 + statusout3 + statusout2 + statusout1 + statusout0; 
    assign address[ 5 ] = statusout4 + statusout3 + statusout2 + statusout1 + statusout0; 
    assign address[ 4 ] = statusout3 + statusout2 + statusout1 + statusout0;
    assign address[ 3 ] = statusout2 + statusout1 + statusout0; 
    assign address[ 2 ] = statusout1 + statusout0; 
    assign address[ 1 ] = statusout0; 
    assign address[ 0 ] = statusout0; 
                                                           
    assign data[7] = ( { 224'b0 , dataout[7] } << address[ 7 ]*8 ) >> ( 4 - statusout7 )*8;
    assign data[6] = ( { 224'b0 , dataout[6] } << address[ 6 ]*8 ) >> ( 4 - statusout6 )*8;
    assign data[5] = ( { 224'b0 , dataout[5] } << address[ 5 ]*8 ) >> ( 4 - statusout5 )*8;
    assign data[4] = ( { 224'b0 , dataout[4] } << address[ 4 ]*8 ) >> ( 4 - statusout4 )*8;
    assign data[3] = ( { 224'b0 , dataout[3] } << address[ 3 ]*8 ) >> ( 4 - statusout3 )*8;
    assign data[2] = ( { 224'b0 , dataout[2] } << address[ 2 ]*8 ) >> ( 4 - statusout2 )*8;
    assign data[1] = ( { 224'b0 , dataout[1] } << address[ 1 ]*8 ) >> ( 4 - statusout1 )*8;
    assign data[0] = { 224'b0 , dataout[0] } >> ( 4 - address[ 0 ] )*8;


                                 
    assign dout[ 271 : 0 ] = ( enable == 1 ) ? ( ( is_header == 0 ) ? { data[7] | data[6] | data[5] | data[4] | data[3] | data[2] | data[1] | data[0] , 
                               statusout[ 7 ] , statusout[ 6 ] , statusout[ 5 ] , statusout[ 4 ] ,
                               statusout[ 3 ] , statusout[ 2 ] , statusout[ 1 ] , statusout[ 0 ] } : { 16'b0 , din } ) : 0;
                               
    always@ ( posedge clk or negedge resetn)
        begin
            if ( !resetn )
                begin
                    dataout0 <= 0;
                    sig_bytes0 <= 0;
                    valid <= 0;
                    last <= 0;
                end
            else 
                begin
                    dataout0 <= dout;
                    sig_bytes0 <= sig_bytes;
                    valid <= enable;
                    last <= is_last;
                end
        end
  //  assign tkeep = ( is_header == 0 ) ? { 32'hffffffff , 2'b11 } >> ( 34 - address[ 7 ] - statusout7 - 2 ) : { 2'b0 , 32'hffffffff };
    
                                 
         
endmodule
