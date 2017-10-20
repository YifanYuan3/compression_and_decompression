`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2017 01:54:45 PM
// Design Name: 
// Module Name: compress_unit_tb
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


module compress_unit_tb;
    
   reg clk=1;
   reg resetn = 1;
 //  reg enable = 0;
    
 //  reg [255 : 0] din;
 //  wire [271 : 0] dout;
   
   reg                  [ 255 : 0 ]                 tdata;
   reg                  [ 31 : 0 ]                  tkeep;
   wire                                             tready;
   reg                                              tvalid;
   reg                                              tlast;
   
//output signals    
  // wire                 [ 255 : 0 ]                 dout;
  // wire                                             is_header;
  // wire                 [ 31 : 0 ]                  keep;
  // reg                                              ready;
 //  wire                                             valid;
 //  wire                                             last;
   
 //  wire                 [ 271 : 0 ]                 dataout;
 //  wire                 [ 33 : 0 ]                  t_keep;
 //  wire                 [ 5 : 0 ]                   sig_bytes;


 //  wire                                             wen;
 //  wire                 [ 5 : 0 ]                   waddr;
 //  wire                 [ 255 : 0 ]                 wdata;
   
 //  wire                 [ 9 : 0 ]                   saddr;
 //  wire                 [ 10 : 0 ]                  sbytes;
 //  wire                                             svalid;
   reg                                         m_axis_mm2s_tready = 1;
   wire                [ 255 : 0 ]             m_axis_mm2s_tdata;
   wire                [ 31 : 0 ]              m_axis_mm2s_tkeep;
   wire                                        m_axis_mm2s_tvalid;
   wire                                        m_axis_mm2s_tlast;
   
    always #5 clk = ~clk;
    
     initial 
        fork
          //  #0 ready = 1;
            #0 tkeep = 32'hffffffff;
            #0 tvalid = 0;
            #0 tlast = 0;
            
            #30 resetn = 0;
            #40 resetn = 1;
            
        
            #50 tdata = { 32'hbaa2be86 , 32'hbb4bc612 , 32'hbb807e40 , 32'hbba216c1 , 
                          32'hbb93d35c , 32'hbb8d9bca , 32'hbaca1d9b , 32'hbaaaeafb };
                        
            #100 tvalid = 1;
            
            #130 tdata = { 32'h6b40cba1 , 32'h45b6f385 , 32'h8440df4f , 32'h8d976e0e ,
                           32'h76403789 , 32'h4160e53a , 32'h7840d7a3 , 32'h703d0aab };
            
//            #140 tdata = 0;
            
            
            #140 tdata = { 32'h00000000 , 32'h00000000 , 32'h0000ffff , 32'hffffffff ,
                           32'hffffffff , 32'h5c8fc2f5 , 32'h28905c8f , 32'hc2f52890 };
            
            #140 tlast = 1;
         //   #160 tkeep = 32'h003fffff;
            
            #150 tlast = 0;
            #150 tvalid = 0;
            
            #250 tdata = { 32'hbaa2be86 , 32'hbb4bc612 , 32'hbb807e40 , 32'hbba216c1 , 
                           32'hbb93d35c , 32'hbb8d9bca , 32'hbaca1d9b , 32'hbaaaeafb };
                        
            #300 tvalid = 1;
            
            #330 tdata = { 32'hffffffff , 32'hffffffff , 32'hffffffff , 32'hffffffff ,
                           32'hffffffff , 32'hffffffff , 32'hffffffff , 32'hffffffff };
            
            #340 tdata = 0;
            
            
            #360 tdata = { 32'hffff0000 , 32'h0000ffff , 32'h00000000 , 32'hffffffff ,
                           32'h00000000 , 32'h00000000 , 32'h00000000 , 32'hffffffff };
            
            #360 tlast = 1;
            #360 tkeep = 32'h003fffff;
            
            #370 tlast = 0;
            #370 tvalid = 0;
        join

   // compress_unit comp_unit( .clk(clk) , .resetn(resetn) , .enable(enable), 
     //                         .din(din) , .dout(dout) , .status(status) );
    //trans trans(.din(din) , .dout(dout) );
 //   compression_design comp_unit( .clk(clk) , .resetn(resetn) , .enable(enable), 
   //                               .din(din) , .dout(dout) );
   //    shift shift( .clk(clk) , .resetn(resetn), .tdata(tdata) , .tkeep(tkeep) , .tready(tready) , .tvalid(tvalid) , .tlast(tlast) ,
     //           .dout(dout) , .is_header(is_header) , .keep(keep), .ready(ready), .valid(valid), .last(last) );
   
  //  compression_design comp_unit( .clk(clk) , .resetn(resetn) , .enable(tvalid), 
     //                             .din(dout) ,.is_header(is_header) , .dout(dataout),
       //                           .tkeep(t_keep) , .sig_bytes(sig_bytes));
      

                 
   // write_bram wbram(.clk(clk) , .resetn(resetn), .tdata(dataout) , .tkeep(t_keep) , .tlast(tlast) , /*.tready(tready) ,*/ .tvalid(tvalid) ,.sig_bytes(sig_bytes),
     //           .wen(wen), . waddr(waddr), .wdata(wdata));
 
 
   system_design sytm (  .clk(clk) , .resetn(resetn),  .tready(tready) ,.tdata(tdata) , /*.tkeep(tkeep) ,*/ .tvalid(tvalid) , .tlast(tlast) ,
                       .m_axis_mm2s_tready(m_axis_mm2s_tready),.m_axis_mm2s_tdata(m_axis_mm2s_tdata),
                       .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),.m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
                       .m_axis_mm2s_tlast(m_axis_mm2s_tlast) );
                 
endmodule
