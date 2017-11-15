`timescale 1ns / 1ps

module decomp_top(
    input                aclk,
    input                aresetn,
    
    input      [255:0]    tdata_fifo,
    input      [31:0]     tkeep_fifo,
    input                 tvalid_fifo,
    input                 tlast_fifo,
    output      reg       tready_fifo,
    
    
    output   reg  [255:0]    tdata_dma,
    output   reg  [31:0]     tkeep_dma,
    output   reg             tvalid_dma,
    output   reg             tlast_dma,
    input                 tready_dma

    );
    
    
    wire [255:0]    tdata_dma1;
    wire [31:0]     tkeep_dma1;
    wire            tvalid_dma1;
    wire            tlast_dma1;
    
    wire [255:0]    tdata_dma2;
    wire [31:0]     tkeep_dma2;
    wire            tvalid_dma2;
    wire            tlast_dma2;
    
    wire            need_decomp_reg; 
    
    wire tready_fifo1;
    
    pip_1 pip_inst(
        .aclk(aclk),
        
        .data_in(tdata_fifo),
        .keep_in(tkeep_fifo),
        .last_in(tlast_fifo),
        .valid_in(tvalid_fifo),
        
        .ready_control(tready_dma),
        
        .data_out(tdata_dma2),
        .keep_out(tkeep_dma2),
        .last_out(tlast_dma2),
        .valid_out(tvalid_dma2)
    );  
    
    always@(*)begin
        if(need_decomp_reg == 0)begin
            tdata_dma <= tdata_dma2;
            tkeep_dma <= tkeep_dma2;
            tvalid_dma <= tvalid_dma2;
            tlast_dma <= tlast_dma2;
            tready_fifo <= tready_dma;
        end
        else begin
            tdata_dma <= tdata_dma1;
            tkeep_dma <= tkeep_dma1;
            tvalid_dma <= tvalid_dma1;
            tlast_dma <= tlast_dma1;
            tready_fifo <= tready_fifo1; 
        end
    end       
  
    
    frontend_top ft_inst(
        .aclk(aclk),
        .aresetn(aresetn),
        
        .axis_tdata(tdata_fifo),
        .axis_tkeep(tkeep_fifo),
        .axis_tvalid(tvalid_fifo),
        .axis_tlast(tlast_fifo),
        .axis_tready1(tready_fifo1),
        
        .dma_tdata(tdata_dma1),
        .dma_tkeep(tkeep_dma1),
        .dma_tvalid(tvalid_dma1),
        .dma_tlast(tlast_dma1),
        .dma_tready(tready_dma),       

        .need_decomp_reg(need_decomp_reg)
    );
    
endmodule

module pip_1(
    input aclk,
    
    input [255:0] data_in,
    input [31:0] keep_in,
    input last_in,
    input valid_in,
    
    input ready_control,
    
    output reg [255:0] data_out,
    output reg [31:0] keep_out,
    output reg last_out,
    output reg valid_out
);

always@(posedge aclk)begin
    if(ready_control == 1)begin
        data_out <= data_in;
        keep_out <= keep_in;
        last_out <= last_in;
        valid_out <= valid_in;
    end
    else begin
        data_out <= data_out;
        keep_out <= keep_out;
        last_out <= last_out;
        valid_out <= valid_out;
    end
end

endmodule
