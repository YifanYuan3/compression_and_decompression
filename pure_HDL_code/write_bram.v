`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2017 03:16:13 PM
// Design Name: 
// Module Name: write_bram
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


module write_bram(

    input                                                clk,
    input                                                resetn,
    
//signals of axi-stream
    input                    [ 271 : 0 ]                 tdata,
   // input                    [ 33 : 0 ]                  tkeep,
    input                                                tlast,
    input                                                tvalid,
    
    input                    [ 9 : 0 ]                   sig_bytes, 
    
    output                                               wen,
    output                   [ 9 : 0 ]                   waddr,
    output                   [ 255 : 0 ]                 wdata,
    
    output                   [ 9 : 0 ]                   saddr,
    output                   [ 10 : 0 ]                  sbytes,
    output                                               svalid

    );
    
    
    
    wire                     [ 255 : 0 ]                din_buffer;
    wire                     [ 255 : 0 ]                dout_buffer;
    
    wire                     [ 9 : 0 ]                  sum;     
    wire                     [ 9 : 0 ]                  act_length;  
   
    reg                      [ 9 : 0 ]                  length0;//total significant bytes
    reg                      [ 9 : 0 ]                  length1;

    reg                      [ 255 : 0 ]                dataout;
    reg                      [ 255 : 0 ]                data;
  
  
    reg                                                 w_en;
    reg                      [ 9 : 0 ]                  w_addr;
    reg                      [ 9 : 0 ]                  w_addr0;
    reg                      [ 9 : 0 ]                  s_addr;
    reg                      [ 10 : 0 ]                 s_bytes;
    wire                     [ 10 : 0 ]                 s_bytes0;
    
    wire                     [ 9 : 0 ]                  a;
    wire                     [ 9 : 0 ]                  b;
    reg                                                 temp;
    reg                                                 addr_status;
    reg                                                 last_status;
     
    reg                                                 tlast0;   
    
    reg                                                 s_valid;
    
    
 //   reg                      [ 9 : 0 ]                  length; 
    
    
    assign saddr = s_addr;
    assign sbytes = s_bytes;
    assign svalid = s_valid;
    
  //  assign din_buffer = ( temp == 0 ) ? tdata << length0*8 : tdata << length1*8;
  //  assign dout_buffer = ( temp == 0 ) ? tdata >> ( 32 - length0 )*8 : tdata >> ( 32 - length1 )*8;
    
    assign din_buffer = ( temp == 0 ) ? tdata << ( length0 << 3 ) : tdata << ( length1 << 3 );
    assign dout_buffer = ( temp == 0 ) ? tdata >> ( ( 32 - length0 ) << 3 ): tdata >> ( ( 32 - length1 ) << 3 );
    
    
    assign sum = ( temp == 0 ) ? ( length0 + sig_bytes ) : ( length1 + sig_bytes );  
    assign a = ( sig_bytes + length0 >= 32 ) ? ( sig_bytes + length0 -32 ) : ( sig_bytes + length0 );
    assign b = ( sig_bytes + length1 >= 32 ) ? ( sig_bytes + length1 -32 ) : ( sig_bytes + length1 ); 
    assign act_length = ( resetn == 0 ) ? 0 : ( ( temp == 0 ) ? a : b );
    
    assign wen = w_en;
    assign wdata = dataout;
    assign waddr = w_addr;

   
       
    always@ ( posedge clk or negedge resetn )
         begin
             if ( !resetn ) tlast0 <= 0;
             else tlast0 <= tlast;
         end
 /*   
    always@ ( posedge clk or negedge resetn )
         begin
             if ( !resetn )
                 begin
                     length0 <= 0;
                     length1 <= 0;
                     temp <= 0;
                 end
             else 
                 begin
                     if ( temp == 0 && tvalid == 1 )
                         begin
                             temp <= 1;
                             length1 <= act_length;
                         end
                     else if ( temp == 1 && tvalid == 1 )
                         begin
                             temp <= 0;
                             length0 <= act_length;
                         end
                 end        
         end 
         */
 //   always@ ( posedge clk or negedge resetn )
   //           begin
     //             if ( !resetn ) length <= 0;
       //           else if ( tvalid == 1 ) length <= act_length;      
         //     end 
        
    always@ ( posedge clk or negedge resetn )
              begin
                  if ( !resetn )
                      begin
                          length0 <= 0;
                          length1 <= 0;
                          temp <= 0;
                      end
                  else 
                      begin
                          if ( tvalid == 1 )
                              begin
                                  if ( temp == 0 )
                                      begin
                                          temp <= 1;
                                          length1 <= act_length;
                                      end
                                  else
                                      begin
                                          temp <= 0;
                                          length0 <= act_length;
                                      end
                              end
                      end        
              end 
                
         
    always@ ( posedge clk or negedge resetn )
        begin
            if ( !resetn ) last_status <= 0;
            else if ( tlast == 1 && sum >= 32 ) last_status <= 1;
        end

    always@ ( posedge clk or negedge resetn )
         begin
             if ( !resetn )
                 begin
                     data <= 0;
                     dataout <= 0;
                 end
             else 
                 begin
                 
                   //  if ( sum == 10'b0000100010 ) haha <= 1;
                 //    if ( sum != 0 ) $display("sum=%d,tvalid=%d,sig_bytes=%d\n",sum,tvalid,sig_bytes);	
                     if ( tlast == 0 && tlast0 == 0 )
                         begin
                             if ( sum >= 32 )
                                 begin
                                     data <= dout_buffer;
                                     dataout <= data | din_buffer;                         
                                 end
                         
                             else if ( sum < 32 )
                                 begin                                          
                                     data <= data | din_buffer;
                                 end
                         end
                         
                     else if ( tlast == 1 )
                         begin
                             if ( sum >= 32 )
                             begin
                                 data <= dout_buffer;
                                 dataout <= data | din_buffer;                         
                             end
                     
                         else if ( sum < 32 )
                             begin                                          
                                 dataout <= data | din_buffer;
                                 data <= dout_buffer;
                             end
                     end   
                     
                     else if ( tlast0 == 1 )
                         begin
                             data <= 0;
                             dataout <= ( data != 0 ) ? data : 0;
                         end
                             
              //       if ( tlast0 == 1 && data != 0  ) dataout <= data;     
                                    
                 end        
         end  

/*  
always@ ( posedge clk or negedge resetn )
         begin
             if ( !resetn )
                 begin
                     data <= 0;
                     dataout <= 0;
                 end
             else 
                 begin
                     if ( tlast0 == 0 )
                         begin
                             if ( tlast == 0 )
                                 begin
                                     if ( sum >= 32 )
                                         begin
                                             data <= dout_buffer;
                                             dataout <= data | din_buffer;                         
                                         end
                         
                                     else
                                         begin                                          
                                             data <= data | din_buffer;
                                         end
                                 end
                         
                             else
                                 begin
                                     if ( sum >= 32 )
                                         begin
                                             data <= dout_buffer;
                                             dataout <= data | din_buffer;                         
                                         end
                     
                                     else
                                         begin                                          
                                             dataout <= data | din_buffer;
                                             data <= dout_buffer;
                                         end
                                 end
                         end   
                     
                     else
                         begin
                             data <= 0;
                             dataout <= ( data != 0 ) ? data : 0;
                         end
                             
                                    
                 end        
         end  
         
 */                
    always@ ( posedge clk or negedge resetn )
              begin
                  if ( !resetn )
                      begin
                          w_en <= 0;
                          w_addr <= 0;
                          w_addr0 <= 1;
                          addr_status <= 0;
                      end
                  else 
                      begin
                          
                      
                          if ( addr_status == 0 && tvalid == 1 ) addr_status <= 1;

                          w_en <= ( sum >= 32 || tlast == 1 || last_status == 1 ) ? 1 : 0;                     
                          w_addr <= ( addr_status == 1 && w_addr0 == 1) ? ( ( sum >= 32 || tlast == 1 || last_status == 1 ) ? w_addr + 1 : w_addr ) : 0;
                          
                      end        
              end           

          
    always@ ( posedge clk or negedge resetn )
              begin
                  if ( !resetn )
                      begin
                          s_bytes <= 0;
                          s_addr <= 0;
                          s_valid <= 0;
                      end
                  else 
                      begin
                          if ( tvalid == 1 ) s_bytes <= s_bytes + sig_bytes;
                          if ( tlast == 1 ) s_valid <= 1;                  
                      end        
              end   
    
    always@ ( posedge clk )
        begin
        
            if ( tvalid == 1 ) w_addr0 <= 1;
        
            if ( tlast0 == 1 )
                begin
                    
                    if ( w_addr >= 950 ) w_addr0 <= 0;
                     
                    s_bytes <= 0;
                    s_addr <= ( w_addr < 950 ) ? ( ( last_status == 1 ) ? w_addr + 2 : w_addr + 1 ) : 0;
                    s_valid <= 0;
                    
                    temp <= 0;
                    length0 <= 0;
                    length1 <= 0;
                    
                    last_status <= 0;
                
                end
                
        end
                    
                    
                  
                           
endmodule
