`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2017 01:23:19 PM
// Design Name: 
// Module Name: sg_dma_command
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



module mm2s_sg_dma_cmd(
    input                  clk, 
    input                  aresetn,
    
    input                  valid, 
    input   [31:0]         addr, 
    input   [22:0]         bytes, 
    
    output  reg            m_axi_lite_wvalid, 
    output  reg [31:0]     m_axi_lite_wdata,
    input                  m_axi_lite_wready,
    output  reg            m_axi_lite_awvalid, 
    output  reg [9:0]      m_axi_lite_awaddr,
    input                  m_axi_lite_awready, 

	output  reg				sg_bram_w_en, 
	output	reg [0:0]		sg_bram_w_we, 
	output	reg [6:0] 		sg_bram_w_addr, 
	output	reg [255:0]		sg_bram_w_din
    );
    
reg     [4:0]       state;    
reg     [31:0]      addr_i;
reg     [22:0]      bytes_i;
reg		[6:0]		sg_bram_pointer;

wire	[31:0]		next_desc;
wire	[31:0]		buffer_addr;
wire	[31:0]		control;

assign next_desc = {19'b0, sg_bram_pointer+1, 6'b0};
assign buffer_addr = addr_i;
assign control = {4'b0, 2'b11, 3'b0, bytes_i};

`define STATE_RECV          	5'b00001
`define STATE_WRITE_SG_BRAM  	5'b00010
`define STATE_SEND_CUR_DESC     5'b00100
`define STATE_SEND_CONTROL    	5'b01000
`define STATE_SEND_TAIL_DESC    5'b10000


always @(posedge clk or negedge aresetn) begin
    if (aresetn == 1'b0) begin
		state <= `STATE_RECV;
		addr_i <= 32'b0;
		bytes_i <= 23'b0;
		sg_bram_pointer <= 7'b0;
		m_axi_lite_wvalid <= 1'b0;
		m_axi_lite_wdata <= 32'b0;
		m_axi_lite_awvalid <= 1'b0;
		m_axi_lite_awaddr <= 10'b0;
		sg_bram_w_en <= 1'b0;
		sg_bram_w_we <= 1'b0;
		sg_bram_w_addr <= 7'b0;
		sg_bram_w_din <= 256'b0;
    end
    else begin
		case (state)
			`STATE_RECV : begin
				m_axi_lite_wvalid <= 1'b0;
				m_axi_lite_awvalid <= 1'b0;
				sg_bram_w_en <= 1'b0;
				if (valid == 1'b1) begin
					state <= `STATE_WRITE_SG_BRAM;
					addr_i <= addr;
					bytes_i <= bytes;
				end
			end
			`STATE_WRITE_SG_BRAM : begin
				sg_bram_w_en <= 1'b1;
				sg_bram_w_we <= 1'b1;
				sg_bram_w_addr <= sg_bram_pointer;
				sg_bram_pointer <= sg_bram_pointer+2;
				sg_bram_w_din <= {32'b0, control, 96'b0, buffer_addr, 32'b0, next_desc};
				state <= `STATE_SEND_CUR_DESC;
			end
			`STATE_SEND_CUR_DESC : begin
				sg_bram_w_en <= 1'b0;
				m_axi_lite_awvalid <= 1'b1;
				m_axi_lite_awaddr <= 10'h08;
				m_axi_lite_wvalid <= 1'b1;
				m_axi_lite_wdata <= {25'b0, sg_bram_pointer-2} << 6;
				if (m_axi_lite_awready == 1'b1 && m_axi_lite_wready == 1'b1) begin
					state <= `STATE_SEND_CONTROL;
					m_axi_lite_awvalid <= 1'b0;
					m_axi_lite_wvalid <= 1'b0;
				end
			end
			`STATE_SEND_CONTROL : begin
				m_axi_lite_awvalid <= 1'b1;
				m_axi_lite_awaddr <= 10'h00;
				m_axi_lite_wvalid <= 1'b1;
				m_axi_lite_wdata <= 32'h27001;
				if (m_axi_lite_awready == 1'b1 && m_axi_lite_wready == 1'b1) begin
					state <= `STATE_SEND_TAIL_DESC;
			        m_axi_lite_awvalid <= 1'b0;
                    m_axi_lite_wvalid <= 1'b0;
				end
			end
			`STATE_SEND_TAIL_DESC : begin
				m_axi_lite_awvalid <= 1'b1;
				m_axi_lite_awaddr <= 10'h10;
				m_axi_lite_wvalid <= 1'b1;
				m_axi_lite_wdata <= {25'b0, sg_bram_pointer-2} << 6;
				if (m_axi_lite_awready == 1'b1 && m_axi_lite_wready == 1'b1) begin
					state <= `STATE_RECV;
					m_axi_lite_awvalid <= 1'b0;
                    m_axi_lite_wvalid <= 1'b0;
				end
			end
		endcase
    end
end

initial begin
	state <= `STATE_RECV;
	addr_i <= 32'b0;
	bytes_i <= 23'b0;
	sg_bram_pointer <= 7'b0;
	m_axi_lite_wvalid <= 1'b0;
	m_axi_lite_wdata <= 32'b0;
	m_axi_lite_awvalid <= 1'b0;
	m_axi_lite_awaddr <= 10'b0;
	sg_bram_w_en <= 1'b0;
	sg_bram_w_we <= 1'b0;
	sg_bram_w_addr <= 7'b0;
	sg_bram_w_din <= 256'b0;
end
    
    
endmodule
