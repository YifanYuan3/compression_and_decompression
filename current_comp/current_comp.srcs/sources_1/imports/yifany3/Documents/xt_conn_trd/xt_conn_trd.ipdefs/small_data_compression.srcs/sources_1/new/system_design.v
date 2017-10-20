`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2017 02:51:24 PM
// Design Name: 
// Module Name: system_design
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


module system_design(
    input                                         clk,
    input                                         resetn,
    
    output                                        tready,
    input                 [ 255 : 0 ]             tdata,
  //  input                 [ 31 : 0 ]              tkeep,
    input                                         tvalid,
    input                                         tlast,

//signals for dma    
    input                                         m_axis_mm2s_tready,
    output                [ 255 : 0 ]             m_axis_mm2s_tdata,
    output                [ 31 : 0 ]              m_axis_mm2s_tkeep,
    output                                        m_axis_mm2s_tvalid,
    output                                        m_axis_mm2s_tlast
     

    );
//signals for writing bram    
    wire                  [ 255 : 0 ]             wdata;
    wire                  [ 9 : 0 ]               waddr;
    wire                                          wen;
    
    wire                  [ 255 : 0 ]             dout;
    wire                                          is_header;
  //  wire                  [ 31 : 0 ]              keep;
    wire                                          ready;
    wire                                          last;
    
    wire                  [ 271 : 0 ]             dataout;
   // wire                  [ 33 : 0 ]              t_keep;
    wire                  [ 9 : 0 ]               sig_bytes;

//signals for controller   
    wire                                          bram_en_a;
    wire                  [ 14 : 0 ]              bram_addr_a; 
    wire                  [ 255 : 0 ]             bram_rddata_a;

// signals for sg_bram controller
	wire										sg_bram_w_en;
	wire										sg_bram_r_en;
	wire					[0 : 0]				sg_bram_w_we;
	wire					[6 : 0]				sg_bram_w_addr;
	wire					[255 : 0]			sg_bram_w_din;
	wire					[11 : 0]			sg_bram_r_addr;
	wire					[31 : 0]			sg_bram_r_dout;
    
   
//signals for dma and controller    
    wire                  [ 31 : 0 ]              m_axi_mm2s_araddr;
    wire                  [ 7 : 0 ]               m_axi_mm2s_arlen;
    wire                  [ 2 : 0 ]               m_axi_mm2s_arsize;
    wire                  [ 1 : 0 ]               m_axi_mm2s_arburst;
    wire                  [ 2 : 0 ]               m_axi_mm2s_arprot;
    wire                  [ 3 : 0 ]               m_axi_mm2s_arcache;
    wire                                          m_axi_mm2s_arvalid;
    wire                                          m_axi_mm2s_arready;
    wire                  [ 255 : 0 ]             m_axi_mm2s_rdata;
    wire                  [ 1 : 0 ]               m_axi_mm2s_rresp;
    wire                                          m_axi_mm2s_rlast;
    wire                                          m_axi_mm2s_rvalid;
    wire                                          m_axi_mm2s_rready;

// signals for DMA S/G BRAM
	wire				 [31 : 0] 					m_axi_sg_awaddr;
	wire				 [7 : 0]					m_axi_sg_awlen;
	wire				 [2 : 0]					m_axi_sg_awsize;
	wire				 [1 : 0]					m_axi_sg_awburst;
	wire				 [2 : 0]					m_axi_sg_awprot;
	wire				 [3 : 0]					m_axi_sg_awcache;
	wire				  							m_axi_sg_awvalid;
	wire											m_axi_sg_awready;
	wire				 [31 : 0]					m_axi_sg_wdata;
	wire				 [3 : 0]					m_axi_sg_wstrb;
	wire											m_axi_sg_wlast;
	wire											m_axi_sg_wvalid;
	wire											m_axi_sg_wready;
	wire				 [1 : 0]					m_axi_sg_bresp;
	wire											m_axi_sg_bvalid;
	wire											m_axi_sg_bready;
	wire				 [31 : 0]					m_axi_sg_araddr;
	wire				 [7 : 0]					m_axi_sg_arlen;
	wire				 [2 : 0]					m_axi_sg_arsize;
	wire				 [1 : 0]					m_axi_sg_arburst;
	wire				 [2 : 0]					m_axi_sg_arprot;
	wire				 [3 : 0]					m_axi_sg_arcache;
	wire											m_axi_sg_arvalid;
	wire											m_axi_sg_arready;
	wire				 [31 : 0]					m_axi_sg_rdata;
	wire				 [1 : 0]					m_axi_sg_rresp;
	wire											m_axi_sg_rlast;
	wire											m_axi_sg_rvalid;
	wire											m_axi_sg_rready;

//signals for dma command 
    wire                                          m_axi_lite_wvalid;
    wire                  [ 31 : 0 ]              m_axi_lite_wdata;
    wire                                          m_axi_lite_wready;
    wire                                          m_axi_lite_awvalid;
    wire                  [ 9 : 0 ]               m_axi_lite_awaddr;
    wire                                          m_axi_lite_awready;
    
    wire                  [ 9 : 0 ]               saddr;
    wire                  [ 10 : 0 ]              sbytes;
    wire                                          svalid;
    wire                                          comp_valid;
    wire                                          comp_last;
    
    
    

    
 //   shift_debug shift( .clk(clk) , .resetn(resetn), .tdata(tdata) , /*.tkeep(tkeep) ,*/ .tready(tready) , .tvalid(tvalid) , .tlast(tlast) ,
   //                 .dout(dout) , .is_header(is_header) ,/* .keep(keep),*/ .ready(m_axis_mm2s_tready), .valid(valid), .last(last) );
     shift_debug shift( .clk(clk) , .resetn(resetn), .tdata(tdata) , /*.tkeep(tkeep) ,*/ .tready(tready) , .tvalid(tvalid) , .tlast(tlast) ,
                                       .dout(dout) , .is_header(is_header) ,/* .keep(keep),*/ .ready(m_axis_mm2s_tready), .valid0(valid), .last0(last) );
                                     
       
    //compression_design comp_unit( .clk(clk) , .resetn(resetn) , .enable(valid), 
      //                            .din(dout) ,.is_header(is_header) , .dout(dataout),
        //                         /* .tkeep(t_keep)*,*/ .sig_bytes(sig_bytes));
          
  compression_design comp_unit( .clk(clk) , .resetn(resetn) , .enable(valid), .is_last(last),
                                        .din(dout) ,.is_header(is_header) , .dataout0(dataout), .valid(comp_valid), .last(comp_last),
                                       /* .tkeep(t_keep)*,*/ .sig_bytes0(sig_bytes));    
                     
    write_bram wbram(.clk(clk) , .resetn(resetn), .tdata(dataout) ,/* .tkeep(t_keep),*/ .tlast(comp_last) , /*.tready(tready) ,*/ 
                     .tvalid(comp_valid) ,.sig_bytes(sig_bytes), .wen(wen), . waddr(waddr), .wdata(wdata),
                     .saddr(saddr) , .sbytes(sbytes) , .svalid(svalid) );
                     
    dout_bram dout_bram (.clka(clk), .wea(wen),.addra(waddr), .dina(wdata),  
                       .clkb(clk),.enb(bram_en_a), .addrb(bram_addr_a[ 14 : 5 ]),.doutb(bram_rddata_a) );
                       
    controller controller (
                         .s_axi_aclk(clk),        // input wire s_axi_aclk
                         .s_axi_aresetn(resetn),  // input wire s_axi_aresetn
                         
                         .s_axi_awaddr({ 15'b0 }),    // input wire [14 : 0] s_axi_awaddr
                         .s_axi_awlen({ 8'b0 }),      // input wire [7 : 0] s_axi_awlen
                         .s_axi_awsize({ 3'b0 }),    // input wire [2 : 0] s_axi_awsize
                         .s_axi_awburst({ 2'b0 }),  // input wire [1 : 0] s_axi_awburst
                         .s_axi_awlock({ 1'b0 }),    // input wire s_axi_awlock
                         .s_axi_awcache({ 4'b0 }),  // input wire [3 : 0] s_axi_awcache
                         .s_axi_awprot({ 3'b0 }),    // input wire [2 : 0] s_axi_awprot
                         .s_axi_awvalid({ 1'b0 }),  // input wire s_axi_awvalid
                         .s_axi_awready(),  // output wire s_axi_awready
                         .s_axi_wdata({ 256'b0 }),      // input wire [255 : 0] s_axi_wdata
                         .s_axi_wstrb({ 32'b0 }),      // input wire [31 : 0] s_axi_wstrb
                         .s_axi_wlast({ 1'b0 }),      // input wire s_axi_wlast
                         .s_axi_wvalid({ 1'b0 }),    // input wire s_axi_wvalid
                         .s_axi_wready(),    // output wire s_axi_wready
                         .s_axi_bresp(),      // output wire [1 : 0] s_axi_bresp
                         .s_axi_bvalid(),    // output wire s_axi_bvalid
                         .s_axi_bready({ 1'b1 }),    // input wire s_axi_bready
                         
                         .s_axi_araddr(m_axi_mm2s_araddr[ 14 : 0 ]),    // input wire [14 : 0] s_axi_araddr
                         .s_axi_arlen(m_axi_mm2s_arlen),      // input wire [7 : 0] s_axi_arlen
                         .s_axi_arsize(m_axi_mm2s_arsize),    // input wire [2 : 0] s_axi_arsize
                         .s_axi_arburst(m_axi_mm2s_arburst),  // input wire [1 : 0] s_axi_arburst                         
                         .s_axi_arlock({ 1'b0 }),    // input wire s_axi_arlock                        
                         .s_axi_arcache(m_axi_mm2s_arcache),  // input wire [3 : 0] s_axi_arcache
                         .s_axi_arprot(m_axi_mm2s_arprot),    // input wire [2 : 0] s_axi_arprot
                         .s_axi_arvalid( m_axi_mm2s_arvalid),  // input wire s_axi_arvalid
                         .s_axi_arready(m_axi_mm2s_arready),  // output wire s_axi_arready
                         .s_axi_rdata(m_axi_mm2s_rdata),      // output wire [255 : 0] s_axi_rdata
                         .s_axi_rresp(m_axi_mm2s_rresp),      // output wire [1 : 0] s_axi_rresp
                         .s_axi_rlast(m_axi_mm2s_rlast),      // output wire s_axi_rlast
                         .s_axi_rvalid(m_axi_mm2s_rvalid),    // output wire s_axi_rvalid
                         .s_axi_rready(m_axi_mm2s_rready),    // input wire s_axi_rready
                         
                         .bram_rst_a(),        // output wire bram_rst_a
                         .bram_clk_a(),        // output wire bram_clk_a
                         .bram_en_a(bram_en_a),          // output wire bram_en_a
                         .bram_we_a(),          // output wire [31 : 0] bram_we_a
                         .bram_addr_a(bram_addr_a),      // output wire [14 : 0] bram_addr_a
                         .bram_wrdata_a(),  // output wire [255 : 0] bram_wrdata_a
                         .bram_rddata_a(bram_rddata_a)  // input wire [255 : 0] bram_rddata_a
                       );
                       
sg_bram_controller sg_bram_controller_inst (
                         .s_axi_aclk(clk),        // input wire s_axi_aclk
                         .s_axi_aresetn(resetn),  // input wire s_axi_aresetn
                         .s_axi_awaddr(m_axi_sg_awaddr[11:0]),    // input wire [11 : 0] s_axi_awaddr
                         .s_axi_awlen(m_axi_sg_awlen),      // input wire [7 : 0] s_axi_awlen
                         .s_axi_awsize(m_axi_sg_awsize),    // input wire [2 : 0] s_axi_awsize
                         .s_axi_awburst(m_axi_sg_awburst),  // input wire [1 : 0] s_axi_awburst
                         .s_axi_awlock(1'b0),    // input wire s_axi_awlock
                         .s_axi_awcache(m_axi_sg_awcache),  // input wire [3 : 0] s_axi_awcache
                         .s_axi_awprot(m_axi_sg_awprot),    // input wire [2 : 0] s_axi_awprot
                         .s_axi_awvalid(m_axi_sg_awvalid),  // input wire s_axi_awvalid
                         .s_axi_awready(m_axi_sg_awready),  // output wire s_axi_awready
                         .s_axi_wdata(m_axi_sg_wdata),      // input wire [31 : 0] s_axi_wdata
                         .s_axi_wstrb(m_axi_sg_wstrb),      // input wire [3 : 0] s_axi_wstrb
                         .s_axi_wlast(m_axi_sg_wlast),      // input wire s_axi_wlast
                         .s_axi_wvalid(m_axi_sg_wvalid),    // input wire s_axi_wvalid
                         .s_axi_wready(m_axi_sg_wready),    // output wire s_axi_wready
                         .s_axi_bresp(m_axi_sg_bresp),      // output wire [1 : 0] s_axi_bresp
                         .s_axi_bvalid(m_axi_sg_bvalid),    // output wire s_axi_bvalid
                         .s_axi_bready(m_axi_sg_bready),    // input wire s_axi_bready
                         .s_axi_araddr(m_axi_sg_araddr[11:0]),    // input wire [11 : 0] s_axi_araddr
                         .s_axi_arlen(m_axi_sg_arlen),      // input wire [7 : 0] s_axi_arlen
                         .s_axi_arsize(m_axi_sg_arsize),    // input wire [2 : 0] s_axi_arsize
                         .s_axi_arburst(m_axi_sg_arburst),  // input wire [1 : 0] s_axi_arburst
                         .s_axi_arlock(1'b0),    // input wire s_axi_arlock
                         .s_axi_arcache(m_axi_sg_arcache),  // input wire [3 : 0] s_axi_arcache
                         .s_axi_arprot(m_axi_sg_arprot),    // input wire [2 : 0] s_axi_arprot
                         .s_axi_arvalid(m_axi_sg_arvalid),  // input wire s_axi_arvalid
                         .s_axi_arready(m_axi_sg_arready),  // output wire s_axi_arready
                         .s_axi_rdata(m_axi_sg_rdata),      // output wire [31 : 0] s_axi_rdata
                         .s_axi_rresp(m_axi_sg_rresp),      // output wire [1 : 0] s_axi_rresp
                         .s_axi_rlast(m_axi_sg_rlast),      // output wire s_axi_rlast
                         .s_axi_rvalid(m_axi_sg_rvalid),    // output wire s_axi_rvalid
                         .s_axi_rready(m_axi_sg_rready),    // input wire s_axi_rready
                         .bram_rst_a(),        // output wire bram_rst_a
                         .bram_clk_a(),        // output wire bram_clk_a
                         .bram_en_a(sg_bram_r_en),          // output wire bram_en_a
                         .bram_we_a(),          // output wire [3 : 0] bram_we_a
                         .bram_addr_a(sg_bram_r_addr),      // output wire [11 : 0] bram_addr_a
                         .bram_wrdata_a(),  // output wire [31 : 0] bram_wrdata_a
                         .bram_rddata_a(sg_bram_r_dout)  // input wire [31 : 0] bram_rddata_a
                       );
                       
sg_bram sg_bram_inst (
                         .clka(clk),    // input wire clka
                         .ena(sg_bram_w_en),      // input wire ena
                         .wea(sg_bram_w_we),      // input wire [0 : 0] wea
                         .addra(sg_bram_w_addr),  // input wire [6 : 0] addra
                         .dina(sg_bram_w_din),    // input wire [255 : 0] dina

                         .clkb(clk),    // input wire clkb
                         .enb(sg_bram_r_en),      // input wire enb
                         .addrb(sg_bram_r_addr[11 : 2]),  // input wire [9 : 0] addrb
                         .doutb(sg_bram_r_dout)  // output wire [31 : 0] doutb
                       );

                       
mm2s_sg_dma_cmd cmd(
                           .clk(clk), 
                           .aresetn(resetn),
                           
                           .valid(svalid), 
                           .addr({ 17'b0 , saddr , 5'b0 }), 
                           .bytes( { 12'b0 , sbytes } ), 
                           
                           .m_axi_lite_wvalid(m_axi_lite_wvalid), 
                           .m_axi_lite_wdata(m_axi_lite_wdata),
                           .m_axi_lite_wready(m_axi_lite_wready),
                           .m_axi_lite_awvalid(m_axi_lite_awvalid), 
                           .m_axi_lite_awaddr(m_axi_lite_awaddr),
                           .m_axi_lite_awready(m_axi_lite_awready), 

						   .sg_bram_w_en(sg_bram_w_en), 
						   .sg_bram_w_we(sg_bram_w_we), 
						   .sg_bram_w_addr(sg_bram_w_addr), 
						   .sg_bram_w_din(sg_bram_w_din)
                           );
                       
DMA dma (
                         .s_axi_lite_aclk(clk),                // input wire s_axi_lite_aclk
                         .m_axi_sg_aclk(clk),
                         .m_axi_mm2s_aclk(clk),                // input wire m_axi_mm2s_aclk
                         .axi_resetn(resetn),                          // input wire axi_resetn
                         
                         .s_axi_lite_awvalid(m_axi_lite_awvalid),          // input wire s_axi_lite_awvalid
                         .s_axi_lite_awready(m_axi_lite_awready),          // output wire s_axi_lite_awready
                         .s_axi_lite_awaddr(m_axi_lite_awaddr),            // input wire [9 : 0] s_axi_lite_awaddr
                         .s_axi_lite_wvalid(m_axi_lite_wvalid),            // input wire s_axi_lite_wvalid
                         .s_axi_lite_wready(m_axi_lite_wready),            // output wire s_axi_lite_wready
                         .s_axi_lite_wdata(m_axi_lite_wdata),              // input wire [31 : 0] s_axi_lite_wdata
                         .s_axi_lite_bresp(),              // output wire [1 : 0] s_axi_lite_bresp
                         .s_axi_lite_bvalid(),            // output wire s_axi_lite_bvalid
                         .s_axi_lite_bready({ 1'b1 }),            // input wire s_axi_lite_bready
                         
                         .s_axi_lite_arvalid({ 1'b0 }),          // input wire s_axi_lite_arvalid
                         .s_axi_lite_arready(),          // output wire s_axi_lite_arready
                         .s_axi_lite_araddr({ 10'b0 }),            // input wire [9 : 0] s_axi_lite_araddr
                         .s_axi_lite_rvalid(),            // output wire s_axi_lite_rvalid
                         .s_axi_lite_rready({ 1'b1 }),            // input wire s_axi_lite_rready
                         .s_axi_lite_rdata(),              // output wire [31 : 0] s_axi_lite_rdata
                         .s_axi_lite_rresp(),              // output wire [1 : 0] s_axi_lite_rresp
                         
                         .m_axi_sg_awaddr(m_axi_sg_awaddr),                // output wire [31 : 0] m_axi_sg_awaddr
                         .m_axi_sg_awlen(m_axi_sg_awlen),                  // output wire [7 : 0] m_axi_sg_awlen
                         .m_axi_sg_awsize(m_axi_sg_awsize),                // output wire [2 : 0] m_axi_sg_awsize
                         .m_axi_sg_awburst(m_axi_sg_awburst),              // output wire [1 : 0] m_axi_sg_awburst
                         .m_axi_sg_awprot(m_axi_sg_awprot),                // output wire [2 : 0] m_axi_sg_awprot
                         .m_axi_sg_awcache(m_axi_sg_awcache),              // output wire [3 : 0] m_axi_sg_awcache
                         .m_axi_sg_awvalid(m_axi_sg_awvalid),              // output wire m_axi_sg_awvalid
                         .m_axi_sg_awready(m_axi_sg_awready),              // input wire m_axi_sg_awready
                         .m_axi_sg_wdata(m_axi_sg_wdata),                  // output wire [31 : 0] m_axi_sg_wdata
                         .m_axi_sg_wstrb(m_axi_sg_wstrb),                  // output wire [3 : 0] m_axi_sg_wstrb
                         .m_axi_sg_wlast(m_axi_sg_wlast),                  // output wire m_axi_sg_wlast
                         .m_axi_sg_wvalid(m_axi_sg_wvalid),                // output wire m_axi_sg_wvalid
                         .m_axi_sg_wready(m_axi_sg_wready),                // input wire m_axi_sg_wready
                         .m_axi_sg_bresp(m_axi_sg_bresp),                  // input wire [1 : 0] m_axi_sg_bresp
                         .m_axi_sg_bvalid(m_axi_sg_bvalid),                // input wire m_axi_sg_bvalid
                         .m_axi_sg_bready(m_axi_sg_bready),                // output wire m_axi_sg_bready
                         .m_axi_sg_araddr(m_axi_sg_araddr),                // output wire [31 : 0] m_axi_sg_araddr
                         .m_axi_sg_arlen(m_axi_sg_arlen),                  // output wire [7 : 0] m_axi_sg_arlen
                         .m_axi_sg_arsize(m_axi_sg_arsize),                // output wire [2 : 0] m_axi_sg_arsize
                         .m_axi_sg_arburst(m_axi_sg_arburst),              // output wire [1 : 0] m_axi_sg_arburst
                         .m_axi_sg_arprot(m_axi_sg_arprot),                // output wire [2 : 0] m_axi_sg_arprot
                         .m_axi_sg_arcache(m_axi_sg_arcache),              // output wire [3 : 0] m_axi_sg_arcache
                         .m_axi_sg_arvalid(m_axi_sg_arvalid),              // output wire m_axi_sg_arvalid
                         .m_axi_sg_arready(m_axi_sg_arready),              // input wire m_axi_sg_arready
                         .m_axi_sg_rdata(m_axi_sg_rdata),                  // input wire [31 : 0] m_axi_sg_rdata
                         .m_axi_sg_rresp(m_axi_sg_rresp),                  // input wire [1 : 0] m_axi_sg_rresp
                         .m_axi_sg_rlast(m_axi_sg_rlast),                  // input wire m_axi_sg_rlast
                         .m_axi_sg_rvalid(m_axi_sg_rvalid),                // input wire m_axi_sg_rvalid
                         .m_axi_sg_rready(m_axi_sg_rready),                // output wire m_axi_sg_rready
                         
                         .m_axi_mm2s_araddr(m_axi_mm2s_araddr),            // output wire [31 : 0] m_axi_mm2s_araddr
                         .m_axi_mm2s_arlen(m_axi_mm2s_arlen),              // output wire [7 : 0] m_axi_mm2s_arlen
                         .m_axi_mm2s_arsize(m_axi_mm2s_arsize),            // output wire [2 : 0] m_axi_mm2s_arsize
                         .m_axi_mm2s_arburst(m_axi_mm2s_arburst),          // output wire [1 : 0] m_axi_mm2s_arburst
                         .m_axi_mm2s_arprot(m_axi_mm2s_arprot),            // output wire [2 : 0] m_axi_mm2s_arprot
                         .m_axi_mm2s_arcache(m_axi_mm2s_arcache),          // output wire [3 : 0] m_axi_mm2s_arcache
                         .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),          // output wire m_axi_mm2s_arvalid
                         .m_axi_mm2s_arready(m_axi_mm2s_arready),          // input wire m_axi_mm2s_arready
                         .m_axi_mm2s_rdata(m_axi_mm2s_rdata),              // input wire [255 : 0] m_axi_mm2s_rdata
                         .m_axi_mm2s_rresp(m_axi_mm2s_rresp),              // input wire [1 : 0] m_axi_mm2s_rresp
                         .m_axi_mm2s_rlast(m_axi_mm2s_rlast),              // input wire m_axi_mm2s_rlast
                         .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),            // input wire m_axi_mm2s_rvalid
                         .m_axi_mm2s_rready(m_axi_mm2s_rready),            // output wire m_axi_mm2s_rready
                         
                         .mm2s_prmry_reset_out_n(),  // output wire mm2s_prmry_reset_out_n
                         .m_axis_mm2s_tdata(m_axis_mm2s_tdata),            // output wire [255 : 0] m_axis_mm2s_tdata
                         .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),            // output wire [31 : 0] m_axis_mm2s_tkeep
                         .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),          // output wire m_axis_mm2s_tvalid
                         .m_axis_mm2s_tready(m_axis_mm2s_tready),          // input wire m_axis_mm2s_tready
                         .m_axis_mm2s_tlast(m_axis_mm2s_tlast),            // output wire m_axis_mm2s_tlast
                         .mm2s_introut(),                      // output wire mm2s_introut
                         
                         .axi_dma_tstvec()                  // output wire [31 : 0] axi_dma_tstvec
                       );
     
endmodule
