`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 09:30:16 PM
// Design Name: 
// Module Name: signal_gen_top
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


module signal_gen_top #(
        parameter integer G_ADDR_W        = 12,               //  AXIL xADDR width
        parameter integer G_DATA_B        = 4,                //  AXIL xDATA byte width        
        parameter integer G_DATA_W        = G_DATA_B << 3    //  AXIL xDATA width
        ) (
        
        input wire i_resetn,
        
        (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_axil" *)
    input wire i_clk,

    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)

          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *)
output  wire s_axil_awready,  
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *)
input   wire s_axil_awvalid,  
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *)
input wire [G_ADDR_W - 1 : 0]  s_axil_awaddr,   
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWPROT" *)
input wire  [2 : 0]             s_axil_awprot,                      //  write addr
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *)
output  wire s_axil_wready,   
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *)
input   wire s_axil_wvalid,   
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *)
input wire [G_DATA_W - 1 : 0]  s_axil_wdata,    
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *)
input wire    [G_DATA_B - 1 : 0]  s_axil_wstrb,                       //  write data 
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *)
input   wire s_axil_bready,   
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *)
output  wire s_axil_bvalid,   
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *)
output wire [1 : 0]             s_axil_bresp,                                                                   //  write resp 
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *)
output  wire s_axil_arready,  
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *)
input   wire s_axil_arvalid,  
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *)
input wire [G_ADDR_W - 1 : 0]  s_axil_araddr,   
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARPROT" *)
input wire  [2 : 0]             s_axil_arprot,                      //  read addr 
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *)
input   wire s_axil_rready,   
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *)
output  wire s_axil_rvalid,   
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *)
output wire [G_DATA_W - 1 : 0]  s_axil_rdata,   
          (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *)
output wire    [1 : 0]             s_axil_rresp,
    
        output wire [31:0] s_axis_tdata,
        output wire [1:0] o_dat_chn,
        output wire s_axis_tvalid,
        output wire s_axis_tlast
    );
    
    signal_gen u_gen(
        .i_clk(i_clk),
        .i_rst(!i_resetn),
    
        .s_axil_awready  (s_axil_awready),  // output wire s_axil_awready
        .s_axil_awvalid  (s_axil_awvalid),  // input wire s_axil_awvalid
        .s_axil_awaddr   (s_axil_awaddr),    // input wire [7 : 0] s_axil_awaddr
        .s_axil_awprot   (s_axil_awprot),    // input wire [2 : 0] s_axil_awprot
        .s_axil_wready   (s_axil_wready),    // output wire s_axil_wready
        .s_axil_wvalid   (s_axil_wvalid),    // input wire s_axil_wvalid
        .s_axil_wdata    (s_axil_wdata),      // input wire [63 : 0] s_axil_wdata
        .s_axil_wstrb    (s_axil_wstrb),      // input wire [7 : 0] s_axil_wstrb
        .s_axil_bready   (s_axil_bready),    // input wire s_axil_bready
        .s_axil_bvalid   (s_axil_bvalid),    // output wire s_axil_bvalid
        .s_axil_bresp    (s_axil_bresp),      // output wire [1 : 0] s_axil_bresp
        .s_axil_arready  (s_axil_arready),  // output wire s_axil_arready
        .s_axil_arvalid  (s_axil_arvalid),  // input wire s_axil_arvalid
        .s_axil_araddr   (s_axil_araddr),    // input wire [7 : 0] s_axil_araddr
        .s_axil_arprot   (s_axil_arprot),    // input wire [2 : 0] s_axil_arprot
        .s_axil_rready   (s_axil_rready),    // input wire s_axil_rready
        .s_axil_rvalid   (s_axil_rvalid),    // output wire s_axil_rvalid
        .s_axil_rdata    (s_axil_rdata),      // output wire [63 : 0] s_axil_rdata
        .s_axil_rresp    (s_axil_rresp),      // output wire [1 : 0] s_axil_rresp
    
        .o_dat_chn(o_dat_chn),
        .o_dat_osc(s_axis_tdata),
        .o_vld(s_axis_tvalid),
        .o_tlast(s_axis_tlast)
    );
    
endmodule
