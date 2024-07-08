//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Mon Jul  8 16:05:34 2024
//Host        : Griffon running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_I5GH1N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_ISHMZ8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [11:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [11:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [11:0]auto_ds_to_auto_rs_ARADDR;
  wire [2:0]auto_ds_to_auto_rs_ARPROT;
  wire auto_ds_to_auto_rs_ARREADY;
  wire auto_ds_to_auto_rs_ARVALID;
  wire [11:0]auto_ds_to_auto_rs_AWADDR;
  wire [2:0]auto_ds_to_auto_rs_AWPROT;
  wire auto_ds_to_auto_rs_AWREADY;
  wire auto_ds_to_auto_rs_AWVALID;
  wire auto_ds_to_auto_rs_BREADY;
  wire [1:0]auto_ds_to_auto_rs_BRESP;
  wire auto_ds_to_auto_rs_BVALID;
  wire [31:0]auto_ds_to_auto_rs_RDATA;
  wire auto_ds_to_auto_rs_RREADY;
  wire [1:0]auto_ds_to_auto_rs_RRESP;
  wire auto_ds_to_auto_rs_RVALID;
  wire [31:0]auto_ds_to_auto_rs_WDATA;
  wire auto_ds_to_auto_rs_WREADY;
  wire [3:0]auto_ds_to_auto_rs_WSTRB;
  wire auto_ds_to_auto_rs_WVALID;
  wire [11:0]auto_rs_to_m00_couplers_ARADDR;
  wire [2:0]auto_rs_to_m00_couplers_ARPROT;
  wire auto_rs_to_m00_couplers_ARREADY;
  wire auto_rs_to_m00_couplers_ARVALID;
  wire [11:0]auto_rs_to_m00_couplers_AWADDR;
  wire [2:0]auto_rs_to_m00_couplers_AWPROT;
  wire auto_rs_to_m00_couplers_AWREADY;
  wire auto_rs_to_m00_couplers_AWVALID;
  wire auto_rs_to_m00_couplers_BREADY;
  wire [1:0]auto_rs_to_m00_couplers_BRESP;
  wire auto_rs_to_m00_couplers_BVALID;
  wire [31:0]auto_rs_to_m00_couplers_RDATA;
  wire auto_rs_to_m00_couplers_RREADY;
  wire [1:0]auto_rs_to_m00_couplers_RRESP;
  wire auto_rs_to_m00_couplers_RVALID;
  wire [31:0]auto_rs_to_m00_couplers_WDATA;
  wire auto_rs_to_m00_couplers_WREADY;
  wire [3:0]auto_rs_to_m00_couplers_WSTRB;
  wire auto_rs_to_m00_couplers_WVALID;
  wire [19:0]m00_couplers_to_m00_data_fifo_ARADDR;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARPROT;
  wire m00_couplers_to_m00_data_fifo_ARREADY;
  wire m00_couplers_to_m00_data_fifo_ARVALID;
  wire [19:0]m00_couplers_to_m00_data_fifo_AWADDR;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWPROT;
  wire m00_couplers_to_m00_data_fifo_AWREADY;
  wire m00_couplers_to_m00_data_fifo_AWVALID;
  wire m00_couplers_to_m00_data_fifo_BREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_BRESP;
  wire m00_couplers_to_m00_data_fifo_BVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_RDATA;
  wire m00_couplers_to_m00_data_fifo_RREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_RRESP;
  wire m00_couplers_to_m00_data_fifo_RVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_WDATA;
  wire m00_couplers_to_m00_data_fifo_WREADY;
  wire [7:0]m00_couplers_to_m00_data_fifo_WSTRB;
  wire m00_couplers_to_m00_data_fifo_WVALID;
  wire [11:0]m00_data_fifo_to_auto_ds_ARADDR;
  wire [2:0]m00_data_fifo_to_auto_ds_ARPROT;
  wire m00_data_fifo_to_auto_ds_ARREADY;
  wire m00_data_fifo_to_auto_ds_ARVALID;
  wire [11:0]m00_data_fifo_to_auto_ds_AWADDR;
  wire [2:0]m00_data_fifo_to_auto_ds_AWPROT;
  wire m00_data_fifo_to_auto_ds_AWREADY;
  wire m00_data_fifo_to_auto_ds_AWVALID;
  wire m00_data_fifo_to_auto_ds_BREADY;
  wire [1:0]m00_data_fifo_to_auto_ds_BRESP;
  wire m00_data_fifo_to_auto_ds_BVALID;
  wire [63:0]m00_data_fifo_to_auto_ds_RDATA;
  wire m00_data_fifo_to_auto_ds_RREADY;
  wire [1:0]m00_data_fifo_to_auto_ds_RRESP;
  wire m00_data_fifo_to_auto_ds_RVALID;
  wire [63:0]m00_data_fifo_to_auto_ds_WDATA;
  wire m00_data_fifo_to_auto_ds_WREADY;
  wire [7:0]m00_data_fifo_to_auto_ds_WSTRB;
  wire m00_data_fifo_to_auto_ds_WVALID;

  assign M_AXI_araddr[11:0] = auto_rs_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_rs_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_rs_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[11:0] = auto_rs_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_rs_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_rs_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_rs_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_rs_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_rs_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_rs_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_rs_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_m00_data_fifo_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_data_fifo_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_data_fifo_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_m00_data_fifo_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_data_fifo_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_data_fifo_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_data_fifo_WREADY;
  assign auto_rs_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_rs_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_rs_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_rs_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_rs_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_rs_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_rs_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_rs_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_data_fifo_ARADDR = S_AXI_araddr[19:0];
  assign m00_couplers_to_m00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_data_fifo_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_data_fifo_AWADDR = S_AXI_awaddr[19:0];
  assign m00_couplers_to_m00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_data_fifo_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_data_fifo_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_data_fifo_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_m00_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_m00_data_fifo_WVALID = S_AXI_wvalid;
  system_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_rs_ARADDR),
        .m_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .m_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .m_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_rs_AWADDR),
        .m_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .m_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .m_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .m_axi_bready(auto_ds_to_auto_rs_BREADY),
        .m_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .m_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .m_axi_rready(auto_ds_to_auto_rs_RREADY),
        .m_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .m_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .m_axi_wready(auto_ds_to_auto_rs_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_rs_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_data_fifo_to_auto_ds_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_data_fifo_to_auto_ds_ARPROT),
        .s_axi_arready(m00_data_fifo_to_auto_ds_ARREADY),
        .s_axi_arvalid(m00_data_fifo_to_auto_ds_ARVALID),
        .s_axi_awaddr(m00_data_fifo_to_auto_ds_AWADDR),
        .s_axi_awprot(m00_data_fifo_to_auto_ds_AWPROT),
        .s_axi_awready(m00_data_fifo_to_auto_ds_AWREADY),
        .s_axi_awvalid(m00_data_fifo_to_auto_ds_AWVALID),
        .s_axi_bready(m00_data_fifo_to_auto_ds_BREADY),
        .s_axi_bresp(m00_data_fifo_to_auto_ds_BRESP),
        .s_axi_bvalid(m00_data_fifo_to_auto_ds_BVALID),
        .s_axi_rdata(m00_data_fifo_to_auto_ds_RDATA),
        .s_axi_rready(m00_data_fifo_to_auto_ds_RREADY),
        .s_axi_rresp(m00_data_fifo_to_auto_ds_RRESP),
        .s_axi_rvalid(m00_data_fifo_to_auto_ds_RVALID),
        .s_axi_wdata(m00_data_fifo_to_auto_ds_WDATA),
        .s_axi_wready(m00_data_fifo_to_auto_ds_WREADY),
        .s_axi_wstrb(m00_data_fifo_to_auto_ds_WSTRB),
        .s_axi_wvalid(m00_data_fifo_to_auto_ds_WVALID));
  system_auto_rs_0 auto_rs
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_to_m00_couplers_ARADDR),
        .m_axi_arprot(auto_rs_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_rs_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_rs_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_rs_to_m00_couplers_AWADDR),
        .m_axi_awprot(auto_rs_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_rs_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_rs_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_rs_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_rs_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_rs_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_rs_to_m00_couplers_RDATA),
        .m_axi_rready(auto_rs_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_rs_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_rs_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_rs_to_m00_couplers_WDATA),
        .m_axi_wready(auto_rs_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_rs_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_rs_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_rs_ARADDR),
        .s_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .s_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .s_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_rs_AWADDR),
        .s_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .s_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .s_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .s_axi_bready(auto_ds_to_auto_rs_BREADY),
        .s_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .s_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .s_axi_rready(auto_ds_to_auto_rs_RREADY),
        .s_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .s_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .s_axi_wready(auto_ds_to_auto_rs_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_rs_WVALID));
  system_m00_data_fifo_0 m00_data_fifo
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(m00_data_fifo_to_auto_ds_ARADDR),
        .m_axi_arprot(m00_data_fifo_to_auto_ds_ARPROT),
        .m_axi_arready(m00_data_fifo_to_auto_ds_ARREADY),
        .m_axi_arvalid(m00_data_fifo_to_auto_ds_ARVALID),
        .m_axi_awaddr(m00_data_fifo_to_auto_ds_AWADDR),
        .m_axi_awprot(m00_data_fifo_to_auto_ds_AWPROT),
        .m_axi_awready(m00_data_fifo_to_auto_ds_AWREADY),
        .m_axi_awvalid(m00_data_fifo_to_auto_ds_AWVALID),
        .m_axi_bready(m00_data_fifo_to_auto_ds_BREADY),
        .m_axi_bresp(m00_data_fifo_to_auto_ds_BRESP),
        .m_axi_bvalid(m00_data_fifo_to_auto_ds_BVALID),
        .m_axi_rdata(m00_data_fifo_to_auto_ds_RDATA),
        .m_axi_rready(m00_data_fifo_to_auto_ds_RREADY),
        .m_axi_rresp(m00_data_fifo_to_auto_ds_RRESP),
        .m_axi_rvalid(m00_data_fifo_to_auto_ds_RVALID),
        .m_axi_wdata(m00_data_fifo_to_auto_ds_WDATA),
        .m_axi_wready(m00_data_fifo_to_auto_ds_WREADY),
        .m_axi_wstrb(m00_data_fifo_to_auto_ds_WSTRB),
        .m_axi_wvalid(m00_data_fifo_to_auto_ds_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_data_fifo_ARADDR[11:0]),
        .s_axi_arprot(m00_couplers_to_m00_data_fifo_ARPROT),
        .s_axi_arready(m00_couplers_to_m00_data_fifo_ARREADY),
        .s_axi_arvalid(m00_couplers_to_m00_data_fifo_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_data_fifo_AWADDR[11:0]),
        .s_axi_awprot(m00_couplers_to_m00_data_fifo_AWPROT),
        .s_axi_awready(m00_couplers_to_m00_data_fifo_AWREADY),
        .s_axi_awvalid(m00_couplers_to_m00_data_fifo_AWVALID),
        .s_axi_bready(m00_couplers_to_m00_data_fifo_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_data_fifo_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_data_fifo_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_data_fifo_RDATA),
        .s_axi_rready(m00_couplers_to_m00_data_fifo_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_data_fifo_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_data_fifo_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_data_fifo_WDATA),
        .s_axi_wready(m00_couplers_to_m00_data_fifo_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_data_fifo_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_data_fifo_WVALID));
endmodule

module m01_couplers_imp_1TZHJB9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [4:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_ds_to_auto_rs_ARADDR;
  wire [2:0]auto_ds_to_auto_rs_ARPROT;
  wire auto_ds_to_auto_rs_ARREADY;
  wire auto_ds_to_auto_rs_ARVALID;
  wire [31:0]auto_ds_to_auto_rs_AWADDR;
  wire [2:0]auto_ds_to_auto_rs_AWPROT;
  wire auto_ds_to_auto_rs_AWREADY;
  wire auto_ds_to_auto_rs_AWVALID;
  wire auto_ds_to_auto_rs_BREADY;
  wire [1:0]auto_ds_to_auto_rs_BRESP;
  wire auto_ds_to_auto_rs_BVALID;
  wire [31:0]auto_ds_to_auto_rs_RDATA;
  wire auto_ds_to_auto_rs_RREADY;
  wire [1:0]auto_ds_to_auto_rs_RRESP;
  wire auto_ds_to_auto_rs_RVALID;
  wire [31:0]auto_ds_to_auto_rs_WDATA;
  wire auto_ds_to_auto_rs_WREADY;
  wire [3:0]auto_ds_to_auto_rs_WSTRB;
  wire auto_ds_to_auto_rs_WVALID;
  wire [4:0]auto_rs_to_m01_couplers_ARADDR;
  wire [2:0]auto_rs_to_m01_couplers_ARPROT;
  wire auto_rs_to_m01_couplers_ARREADY;
  wire auto_rs_to_m01_couplers_ARVALID;
  wire [4:0]auto_rs_to_m01_couplers_AWADDR;
  wire [2:0]auto_rs_to_m01_couplers_AWPROT;
  wire auto_rs_to_m01_couplers_AWREADY;
  wire auto_rs_to_m01_couplers_AWVALID;
  wire auto_rs_to_m01_couplers_BREADY;
  wire [1:0]auto_rs_to_m01_couplers_BRESP;
  wire auto_rs_to_m01_couplers_BVALID;
  wire [31:0]auto_rs_to_m01_couplers_RDATA;
  wire auto_rs_to_m01_couplers_RREADY;
  wire [1:0]auto_rs_to_m01_couplers_RRESP;
  wire auto_rs_to_m01_couplers_RVALID;
  wire [31:0]auto_rs_to_m01_couplers_WDATA;
  wire auto_rs_to_m01_couplers_WREADY;
  wire [3:0]auto_rs_to_m01_couplers_WSTRB;
  wire auto_rs_to_m01_couplers_WVALID;
  wire [19:0]m01_couplers_to_m01_data_fifo_ARADDR;
  wire [2:0]m01_couplers_to_m01_data_fifo_ARPROT;
  wire m01_couplers_to_m01_data_fifo_ARREADY;
  wire m01_couplers_to_m01_data_fifo_ARVALID;
  wire [19:0]m01_couplers_to_m01_data_fifo_AWADDR;
  wire [2:0]m01_couplers_to_m01_data_fifo_AWPROT;
  wire m01_couplers_to_m01_data_fifo_AWREADY;
  wire m01_couplers_to_m01_data_fifo_AWVALID;
  wire m01_couplers_to_m01_data_fifo_BREADY;
  wire [1:0]m01_couplers_to_m01_data_fifo_BRESP;
  wire m01_couplers_to_m01_data_fifo_BVALID;
  wire [63:0]m01_couplers_to_m01_data_fifo_RDATA;
  wire m01_couplers_to_m01_data_fifo_RREADY;
  wire [1:0]m01_couplers_to_m01_data_fifo_RRESP;
  wire m01_couplers_to_m01_data_fifo_RVALID;
  wire [63:0]m01_couplers_to_m01_data_fifo_WDATA;
  wire m01_couplers_to_m01_data_fifo_WREADY;
  wire [7:0]m01_couplers_to_m01_data_fifo_WSTRB;
  wire m01_couplers_to_m01_data_fifo_WVALID;
  wire [4:0]m01_data_fifo_to_auto_ds_ARADDR;
  wire [2:0]m01_data_fifo_to_auto_ds_ARPROT;
  wire m01_data_fifo_to_auto_ds_ARREADY;
  wire m01_data_fifo_to_auto_ds_ARVALID;
  wire [4:0]m01_data_fifo_to_auto_ds_AWADDR;
  wire [2:0]m01_data_fifo_to_auto_ds_AWPROT;
  wire m01_data_fifo_to_auto_ds_AWREADY;
  wire m01_data_fifo_to_auto_ds_AWVALID;
  wire m01_data_fifo_to_auto_ds_BREADY;
  wire [1:0]m01_data_fifo_to_auto_ds_BRESP;
  wire m01_data_fifo_to_auto_ds_BVALID;
  wire [63:0]m01_data_fifo_to_auto_ds_RDATA;
  wire m01_data_fifo_to_auto_ds_RREADY;
  wire [1:0]m01_data_fifo_to_auto_ds_RRESP;
  wire m01_data_fifo_to_auto_ds_RVALID;
  wire [63:0]m01_data_fifo_to_auto_ds_WDATA;
  wire m01_data_fifo_to_auto_ds_WREADY;
  wire [7:0]m01_data_fifo_to_auto_ds_WSTRB;
  wire m01_data_fifo_to_auto_ds_WVALID;

  assign M_AXI_araddr[4:0] = auto_rs_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_rs_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_rs_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = auto_rs_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_rs_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_rs_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_rs_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_rs_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_rs_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_rs_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_rs_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_m01_data_fifo_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_data_fifo_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_data_fifo_BVALID;
  assign S_AXI_rdata[63:0] = m01_couplers_to_m01_data_fifo_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_data_fifo_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_data_fifo_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_data_fifo_WREADY;
  assign auto_rs_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_rs_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_rs_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_rs_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_rs_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_rs_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_rs_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_rs_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_data_fifo_ARADDR = S_AXI_araddr[19:0];
  assign m01_couplers_to_m01_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_data_fifo_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_data_fifo_AWADDR = S_AXI_awaddr[19:0];
  assign m01_couplers_to_m01_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_data_fifo_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_data_fifo_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_data_fifo_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign m01_couplers_to_m01_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign m01_couplers_to_m01_data_fifo_WVALID = S_AXI_wvalid;
  system_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_rs_ARADDR),
        .m_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .m_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .m_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_rs_AWADDR),
        .m_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .m_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .m_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .m_axi_bready(auto_ds_to_auto_rs_BREADY),
        .m_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .m_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .m_axi_rready(auto_ds_to_auto_rs_RREADY),
        .m_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .m_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .m_axi_wready(auto_ds_to_auto_rs_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_rs_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m01_data_fifo_to_auto_ds_ARADDR}),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_data_fifo_to_auto_ds_ARPROT),
        .s_axi_arready(m01_data_fifo_to_auto_ds_ARREADY),
        .s_axi_arvalid(m01_data_fifo_to_auto_ds_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m01_data_fifo_to_auto_ds_AWADDR}),
        .s_axi_awprot(m01_data_fifo_to_auto_ds_AWPROT),
        .s_axi_awready(m01_data_fifo_to_auto_ds_AWREADY),
        .s_axi_awvalid(m01_data_fifo_to_auto_ds_AWVALID),
        .s_axi_bready(m01_data_fifo_to_auto_ds_BREADY),
        .s_axi_bresp(m01_data_fifo_to_auto_ds_BRESP),
        .s_axi_bvalid(m01_data_fifo_to_auto_ds_BVALID),
        .s_axi_rdata(m01_data_fifo_to_auto_ds_RDATA),
        .s_axi_rready(m01_data_fifo_to_auto_ds_RREADY),
        .s_axi_rresp(m01_data_fifo_to_auto_ds_RRESP),
        .s_axi_rvalid(m01_data_fifo_to_auto_ds_RVALID),
        .s_axi_wdata(m01_data_fifo_to_auto_ds_WDATA),
        .s_axi_wready(m01_data_fifo_to_auto_ds_WREADY),
        .s_axi_wstrb(m01_data_fifo_to_auto_ds_WSTRB),
        .s_axi_wvalid(m01_data_fifo_to_auto_ds_WVALID));
  system_auto_rs_1 auto_rs
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_to_m01_couplers_ARADDR),
        .m_axi_arprot(auto_rs_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_rs_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_rs_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_rs_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_rs_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_rs_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_rs_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_rs_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_rs_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_rs_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_rs_to_m01_couplers_RDATA),
        .m_axi_rready(auto_rs_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_rs_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_rs_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_rs_to_m01_couplers_WDATA),
        .m_axi_wready(auto_rs_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_rs_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_rs_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_rs_ARADDR[4:0]),
        .s_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .s_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .s_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_rs_AWADDR[4:0]),
        .s_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .s_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .s_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .s_axi_bready(auto_ds_to_auto_rs_BREADY),
        .s_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .s_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .s_axi_rready(auto_ds_to_auto_rs_RREADY),
        .s_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .s_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .s_axi_wready(auto_ds_to_auto_rs_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_rs_WVALID));
  system_m01_data_fifo_0 m01_data_fifo
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(m01_data_fifo_to_auto_ds_ARADDR),
        .m_axi_arprot(m01_data_fifo_to_auto_ds_ARPROT),
        .m_axi_arready(m01_data_fifo_to_auto_ds_ARREADY),
        .m_axi_arvalid(m01_data_fifo_to_auto_ds_ARVALID),
        .m_axi_awaddr(m01_data_fifo_to_auto_ds_AWADDR),
        .m_axi_awprot(m01_data_fifo_to_auto_ds_AWPROT),
        .m_axi_awready(m01_data_fifo_to_auto_ds_AWREADY),
        .m_axi_awvalid(m01_data_fifo_to_auto_ds_AWVALID),
        .m_axi_bready(m01_data_fifo_to_auto_ds_BREADY),
        .m_axi_bresp(m01_data_fifo_to_auto_ds_BRESP),
        .m_axi_bvalid(m01_data_fifo_to_auto_ds_BVALID),
        .m_axi_rdata(m01_data_fifo_to_auto_ds_RDATA),
        .m_axi_rready(m01_data_fifo_to_auto_ds_RREADY),
        .m_axi_rresp(m01_data_fifo_to_auto_ds_RRESP),
        .m_axi_rvalid(m01_data_fifo_to_auto_ds_RVALID),
        .m_axi_wdata(m01_data_fifo_to_auto_ds_WDATA),
        .m_axi_wready(m01_data_fifo_to_auto_ds_WREADY),
        .m_axi_wstrb(m01_data_fifo_to_auto_ds_WSTRB),
        .m_axi_wvalid(m01_data_fifo_to_auto_ds_WVALID),
        .s_axi_araddr(m01_couplers_to_m01_data_fifo_ARADDR[4:0]),
        .s_axi_arprot(m01_couplers_to_m01_data_fifo_ARPROT),
        .s_axi_arready(m01_couplers_to_m01_data_fifo_ARREADY),
        .s_axi_arvalid(m01_couplers_to_m01_data_fifo_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_data_fifo_AWADDR[4:0]),
        .s_axi_awprot(m01_couplers_to_m01_data_fifo_AWPROT),
        .s_axi_awready(m01_couplers_to_m01_data_fifo_AWREADY),
        .s_axi_awvalid(m01_couplers_to_m01_data_fifo_AWVALID),
        .s_axi_bready(m01_couplers_to_m01_data_fifo_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_data_fifo_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_data_fifo_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_data_fifo_RDATA),
        .s_axi_rready(m01_couplers_to_m01_data_fifo_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_data_fifo_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_data_fifo_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_data_fifo_WDATA),
        .s_axi_wready(m01_couplers_to_m01_data_fifo_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_data_fifo_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_data_fifo_WVALID));
endmodule

module m01_couplers_imp_1UBGIXM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_1IESD87
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [19:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [19:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [19:0]auto_ds_to_m02_couplers_ARADDR;
  wire [2:0]auto_ds_to_m02_couplers_ARPROT;
  wire auto_ds_to_m02_couplers_ARREADY;
  wire auto_ds_to_m02_couplers_ARVALID;
  wire [19:0]auto_ds_to_m02_couplers_AWADDR;
  wire [2:0]auto_ds_to_m02_couplers_AWPROT;
  wire auto_ds_to_m02_couplers_AWREADY;
  wire auto_ds_to_m02_couplers_AWVALID;
  wire auto_ds_to_m02_couplers_BREADY;
  wire [1:0]auto_ds_to_m02_couplers_BRESP;
  wire auto_ds_to_m02_couplers_BVALID;
  wire [31:0]auto_ds_to_m02_couplers_RDATA;
  wire auto_ds_to_m02_couplers_RREADY;
  wire [1:0]auto_ds_to_m02_couplers_RRESP;
  wire auto_ds_to_m02_couplers_RVALID;
  wire [31:0]auto_ds_to_m02_couplers_WDATA;
  wire auto_ds_to_m02_couplers_WREADY;
  wire [3:0]auto_ds_to_m02_couplers_WSTRB;
  wire auto_ds_to_m02_couplers_WVALID;
  wire [19:0]m02_couplers_to_auto_ds_ARADDR;
  wire [2:0]m02_couplers_to_auto_ds_ARPROT;
  wire m02_couplers_to_auto_ds_ARREADY;
  wire m02_couplers_to_auto_ds_ARVALID;
  wire [19:0]m02_couplers_to_auto_ds_AWADDR;
  wire [2:0]m02_couplers_to_auto_ds_AWPROT;
  wire m02_couplers_to_auto_ds_AWREADY;
  wire m02_couplers_to_auto_ds_AWVALID;
  wire m02_couplers_to_auto_ds_BREADY;
  wire [1:0]m02_couplers_to_auto_ds_BRESP;
  wire m02_couplers_to_auto_ds_BVALID;
  wire [63:0]m02_couplers_to_auto_ds_RDATA;
  wire m02_couplers_to_auto_ds_RREADY;
  wire [1:0]m02_couplers_to_auto_ds_RRESP;
  wire m02_couplers_to_auto_ds_RVALID;
  wire [63:0]m02_couplers_to_auto_ds_WDATA;
  wire m02_couplers_to_auto_ds_WREADY;
  wire [7:0]m02_couplers_to_auto_ds_WSTRB;
  wire m02_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[19:0] = auto_ds_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_ds_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = auto_ds_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[19:0] = auto_ds_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_ds_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = auto_ds_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = m02_couplers_to_auto_ds_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_ds_ARADDR = S_AXI_araddr[19:0];
  assign m02_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[19:0];
  assign m02_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign m02_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign m02_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  system_auto_ds_2 auto_ds
       (.m_axi_araddr(auto_ds_to_m02_couplers_ARADDR),
        .m_axi_arprot(auto_ds_to_m02_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_ds_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m02_couplers_AWADDR),
        .m_axi_awprot(auto_ds_to_m02_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_ds_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m02_couplers_RDATA),
        .m_axi_rready(auto_ds_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m02_couplers_WDATA),
        .m_axi_wready(auto_ds_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_ds_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_ds_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_ds_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_ds_AWADDR),
        .s_axi_awprot(m02_couplers_to_auto_ds_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_ds_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_ds_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_ds_RDATA),
        .s_axi_rready(m02_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_ds_WDATA),
        .s_axi_wready(m02_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_ds_WVALID));
endmodule

module m02_couplers_imp_1J5P44O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_T17W6X
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_TJ7Q06
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [11:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [11:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [11:0]auto_ds_to_m03_couplers_ARADDR;
  wire [2:0]auto_ds_to_m03_couplers_ARPROT;
  wire auto_ds_to_m03_couplers_ARREADY;
  wire auto_ds_to_m03_couplers_ARVALID;
  wire [11:0]auto_ds_to_m03_couplers_AWADDR;
  wire [2:0]auto_ds_to_m03_couplers_AWPROT;
  wire auto_ds_to_m03_couplers_AWREADY;
  wire auto_ds_to_m03_couplers_AWVALID;
  wire auto_ds_to_m03_couplers_BREADY;
  wire [1:0]auto_ds_to_m03_couplers_BRESP;
  wire auto_ds_to_m03_couplers_BVALID;
  wire [31:0]auto_ds_to_m03_couplers_RDATA;
  wire auto_ds_to_m03_couplers_RREADY;
  wire [1:0]auto_ds_to_m03_couplers_RRESP;
  wire auto_ds_to_m03_couplers_RVALID;
  wire [31:0]auto_ds_to_m03_couplers_WDATA;
  wire auto_ds_to_m03_couplers_WREADY;
  wire [3:0]auto_ds_to_m03_couplers_WSTRB;
  wire auto_ds_to_m03_couplers_WVALID;
  wire [19:0]m03_couplers_to_auto_ds_ARADDR;
  wire [2:0]m03_couplers_to_auto_ds_ARPROT;
  wire m03_couplers_to_auto_ds_ARREADY;
  wire m03_couplers_to_auto_ds_ARVALID;
  wire [19:0]m03_couplers_to_auto_ds_AWADDR;
  wire [2:0]m03_couplers_to_auto_ds_AWPROT;
  wire m03_couplers_to_auto_ds_AWREADY;
  wire m03_couplers_to_auto_ds_AWVALID;
  wire m03_couplers_to_auto_ds_BREADY;
  wire [1:0]m03_couplers_to_auto_ds_BRESP;
  wire m03_couplers_to_auto_ds_BVALID;
  wire [63:0]m03_couplers_to_auto_ds_RDATA;
  wire m03_couplers_to_auto_ds_RREADY;
  wire [1:0]m03_couplers_to_auto_ds_RRESP;
  wire m03_couplers_to_auto_ds_RVALID;
  wire [63:0]m03_couplers_to_auto_ds_WDATA;
  wire m03_couplers_to_auto_ds_WREADY;
  wire [7:0]m03_couplers_to_auto_ds_WSTRB;
  wire m03_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[11:0] = auto_ds_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_ds_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = auto_ds_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[11:0] = auto_ds_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_ds_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = auto_ds_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = m03_couplers_to_auto_ds_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_ds_ARADDR = S_AXI_araddr[19:0];
  assign m03_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[19:0];
  assign m03_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign m03_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign m03_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  system_auto_ds_3 auto_ds
       (.m_axi_araddr(auto_ds_to_m03_couplers_ARADDR),
        .m_axi_arprot(auto_ds_to_m03_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_ds_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m03_couplers_AWADDR),
        .m_axi_awprot(auto_ds_to_m03_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_ds_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m03_couplers_RDATA),
        .m_axi_rready(auto_ds_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m03_couplers_WDATA),
        .m_axi_wready(auto_ds_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_ds_ARADDR[11:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_ds_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_ds_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_ds_AWADDR[11:0]),
        .s_axi_awprot(m03_couplers_to_auto_ds_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_ds_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_ds_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_ds_RDATA),
        .s_axi_rready(m03_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_ds_WDATA),
        .s_axi_wready(m03_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_ds_WVALID));
endmodule

module m04_couplers_imp_15FU5SC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_161N47N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [19:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [19:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [19:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [19:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [63:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [63:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [7:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[19:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[19:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[7:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[19:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[19:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[63:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[63:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_GFBASD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_W8VJET
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [19:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [19:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [19:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [19:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [19:0]auto_us_to_s00_data_fifo_ARADDR;
  wire [2:0]auto_us_to_s00_data_fifo_ARPROT;
  wire auto_us_to_s00_data_fifo_ARREADY;
  wire auto_us_to_s00_data_fifo_ARVALID;
  wire [19:0]auto_us_to_s00_data_fifo_AWADDR;
  wire [2:0]auto_us_to_s00_data_fifo_AWPROT;
  wire auto_us_to_s00_data_fifo_AWREADY;
  wire auto_us_to_s00_data_fifo_AWVALID;
  wire auto_us_to_s00_data_fifo_BREADY;
  wire [1:0]auto_us_to_s00_data_fifo_BRESP;
  wire auto_us_to_s00_data_fifo_BVALID;
  wire [63:0]auto_us_to_s00_data_fifo_RDATA;
  wire auto_us_to_s00_data_fifo_RREADY;
  wire [1:0]auto_us_to_s00_data_fifo_RRESP;
  wire auto_us_to_s00_data_fifo_RVALID;
  wire [63:0]auto_us_to_s00_data_fifo_WDATA;
  wire auto_us_to_s00_data_fifo_WREADY;
  wire [7:0]auto_us_to_s00_data_fifo_WSTRB;
  wire auto_us_to_s00_data_fifo_WVALID;
  wire [19:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [19:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [19:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [19:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [7:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;
  wire [19:0]s00_regslice_to_auto_us_ARADDR;
  wire [2:0]s00_regslice_to_auto_us_ARPROT;
  wire s00_regslice_to_auto_us_ARREADY;
  wire s00_regslice_to_auto_us_ARVALID;
  wire [19:0]s00_regslice_to_auto_us_AWADDR;
  wire [2:0]s00_regslice_to_auto_us_AWPROT;
  wire s00_regslice_to_auto_us_AWREADY;
  wire s00_regslice_to_auto_us_AWVALID;
  wire s00_regslice_to_auto_us_BREADY;
  wire [1:0]s00_regslice_to_auto_us_BRESP;
  wire s00_regslice_to_auto_us_BVALID;
  wire [31:0]s00_regslice_to_auto_us_RDATA;
  wire s00_regslice_to_auto_us_RREADY;
  wire [1:0]s00_regslice_to_auto_us_RRESP;
  wire s00_regslice_to_auto_us_RVALID;
  wire [31:0]s00_regslice_to_auto_us_WDATA;
  wire s00_regslice_to_auto_us_WREADY;
  wire [3:0]s00_regslice_to_auto_us_WSTRB;
  wire s00_regslice_to_auto_us_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[19:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[19:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[7:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[19:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[19:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  system_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_s00_data_fifo_ARADDR),
        .m_axi_arprot(auto_us_to_s00_data_fifo_ARPROT),
        .m_axi_arready(auto_us_to_s00_data_fifo_ARREADY),
        .m_axi_arvalid(auto_us_to_s00_data_fifo_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_data_fifo_AWADDR),
        .m_axi_awprot(auto_us_to_s00_data_fifo_AWPROT),
        .m_axi_awready(auto_us_to_s00_data_fifo_AWREADY),
        .m_axi_awvalid(auto_us_to_s00_data_fifo_AWVALID),
        .m_axi_bready(auto_us_to_s00_data_fifo_BREADY),
        .m_axi_bresp(auto_us_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(auto_us_to_s00_data_fifo_BVALID),
        .m_axi_rdata(auto_us_to_s00_data_fifo_RDATA),
        .m_axi_rready(auto_us_to_s00_data_fifo_RREADY),
        .m_axi_rresp(auto_us_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(auto_us_to_s00_data_fifo_RVALID),
        .m_axi_wdata(auto_us_to_s00_data_fifo_WDATA),
        .m_axi_wready(auto_us_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(auto_us_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .s_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .s_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .s_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .s_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .s_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_us_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .s_axi_rready(s00_regslice_to_auto_us_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .s_axi_wready(s00_regslice_to_auto_us_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_us_WVALID));
  system_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_us_to_s00_data_fifo_ARADDR),
        .s_axi_arprot(auto_us_to_s00_data_fifo_ARPROT),
        .s_axi_arready(auto_us_to_s00_data_fifo_ARREADY),
        .s_axi_arvalid(auto_us_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(auto_us_to_s00_data_fifo_AWADDR),
        .s_axi_awprot(auto_us_to_s00_data_fifo_AWPROT),
        .s_axi_awready(auto_us_to_s00_data_fifo_AWREADY),
        .s_axi_awvalid(auto_us_to_s00_data_fifo_AWVALID),
        .s_axi_bready(auto_us_to_s00_data_fifo_BREADY),
        .s_axi_bresp(auto_us_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(auto_us_to_s00_data_fifo_BVALID),
        .s_axi_rdata(auto_us_to_s00_data_fifo_RDATA),
        .s_axi_rready(auto_us_to_s00_data_fifo_RREADY),
        .s_axi_rresp(auto_us_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(auto_us_to_s00_data_fifo_RVALID),
        .s_axi_wdata(auto_us_to_s00_data_fifo_WDATA),
        .s_axi_wready(auto_us_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(auto_us_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(auto_us_to_s00_data_fifo_WVALID));
  system_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .m_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .m_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .m_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .m_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .m_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .m_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_us_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .m_axi_rready(s00_regslice_to_auto_us_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .m_axi_wready(s00_regslice_to_auto_us_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_us_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_WZLZH6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=56,numReposBlks=41,numNonXlnxBlks=11,numHierBlks=15,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (ddr_addr,
    ddr_ba,
    ddr_cas_n,
    ddr_ck_n,
    ddr_ck_p,
    ddr_cke,
    ddr_cs_n,
    ddr_dm,
    ddr_dq,
    ddr_dqs_n,
    ddr_dqs_p,
    ddr_odt,
    ddr_ras_n,
    ddr_reset_n,
    ddr_we_n,
    fixed_io_ddr_vrn,
    fixed_io_ddr_vrp,
    fixed_io_mio,
    fixed_io_ps_clk,
    fixed_io_ps_porb,
    fixed_io_ps_srstb,
    gpio_i,
    gpio_o,
    gpio_t,
    hdmi_data,
    hdmi_data_e,
    hdmi_hsync,
    hdmi_out_clk,
    hdmi_vsync,
    iic_main_scl_i,
    iic_main_scl_o,
    iic_main_scl_t,
    iic_main_sda_i,
    iic_main_sda_o,
    iic_main_sda_t,
    spdif,
    spi0_clk_i,
    spi0_clk_o,
    spi0_csn_0_o,
    spi0_csn_1_o,
    spi0_csn_2_o,
    spi0_csn_i,
    spi0_sdi_i,
    spi0_sdo_i,
    spi0_sdo_o,
    spi1_clk_i,
    spi1_clk_o,
    spi1_csn_0_o,
    spi1_csn_1_o,
    spi1_csn_2_o,
    spi1_csn_i,
    spi1_sdi_i,
    spi1_sdo_i,
    spi1_sdo_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]ddr_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr BA" *) inout [2:0]ddr_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CAS_N" *) inout ddr_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CK_N" *) inout ddr_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CK_P" *) inout ddr_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CKE" *) inout ddr_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr CS_N" *) inout ddr_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr DM" *) inout [3:0]ddr_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr DQ" *) inout [31:0]ddr_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr DQS_N" *) inout [3:0]ddr_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr DQS_P" *) inout [3:0]ddr_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr ODT" *) inout ddr_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr RAS_N" *) inout ddr_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr RESET_N" *) inout ddr_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr WE_N" *) inout ddr_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fixed_io, CAN_DEBUG false" *) inout fixed_io_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io DDR_VRP" *) inout fixed_io_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io MIO" *) inout [53:0]fixed_io_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io PS_CLK" *) inout fixed_io_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io PS_PORB" *) inout fixed_io_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 fixed_io PS_SRSTB" *) inout fixed_io_ps_srstb;
  input [63:0]gpio_i;
  output [63:0]gpio_o;
  output [63:0]gpio_t;
  output [15:0]hdmi_data;
  output hdmi_data_e;
  output hdmi_hsync;
  output hdmi_out_clk;
  output hdmi_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_I" *) input iic_main_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_O" *) output iic_main_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_T" *) output iic_main_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_I" *) input iic_main_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_O" *) output iic_main_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_T" *) output iic_main_sda_t;
  output spdif;
  input spi0_clk_i;
  output spi0_clk_o;
  output spi0_csn_0_o;
  output spi0_csn_1_o;
  output spi0_csn_2_o;
  input spi0_csn_i;
  input spi0_sdi_i;
  input spi0_sdo_i;
  output spi0_sdo_o;
  input spi1_clk_i;
  output spi1_clk_o;
  output spi1_csn_0_o;
  output spi1_csn_1_o;
  output spi1_csn_2_o;
  input spi1_csn_i;
  input spi1_sdi_i;
  input spi1_sdo_i;
  output spi1_sdo_o;

  (* CONN_BUS_INFO = "FFT_Top_0_m xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]FFT_Top_0_m_TDATA;
  (* CONN_BUS_INFO = "FFT_Top_0_m xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire FFT_Top_0_m_TLAST;
  (* CONN_BUS_INFO = "FFT_Top_0_m xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire FFT_Top_0_m_TVALID;
  wire [0:0]GND_1_dout;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [11:0]S00_AXI_1_ARID;
  wire [3:0]S00_AXI_1_ARLEN;
  wire [1:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [11:0]S00_AXI_1_AWID;
  wire [3:0]S00_AXI_1_AWLEN;
  wire [1:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [11:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [11:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [11:0]S00_AXI_1_WID;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_ARADDR;
  wire axi_cpu_interconnect_M00_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_AWADDR;
  wire axi_cpu_interconnect_M00_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M00_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M00_AXI_BRESP;
  wire axi_cpu_interconnect_M00_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M00_AXI_RRESP;
  wire axi_cpu_interconnect_M00_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_WDATA;
  wire axi_cpu_interconnect_M00_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M00_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M00_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M01_AXI_ARPROT;
  wire axi_cpu_interconnect_M01_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M01_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M01_AXI_AWPROT;
  wire axi_cpu_interconnect_M01_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M01_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M01_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M01_AXI_BRESP;
  wire axi_cpu_interconnect_M01_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M01_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M01_AXI_RRESP;
  wire axi_cpu_interconnect_M01_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_WDATA;
  wire axi_cpu_interconnect_M01_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M01_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M01_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M02_AXI_ARPROT;
  wire axi_cpu_interconnect_M02_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M02_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M02_AXI_AWPROT;
  wire axi_cpu_interconnect_M02_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M02_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M02_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M02_AXI_BRESP;
  wire axi_cpu_interconnect_M02_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M02_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M02_AXI_RRESP;
  wire axi_cpu_interconnect_M02_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_WDATA;
  wire axi_cpu_interconnect_M02_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M02_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M02_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M03_AXI_ARPROT;
  wire axi_cpu_interconnect_M03_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M03_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M03_AXI_AWPROT;
  wire axi_cpu_interconnect_M03_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M03_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M03_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M03_AXI_BRESP;
  wire axi_cpu_interconnect_M03_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M03_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M03_AXI_RRESP;
  wire axi_cpu_interconnect_M03_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_WDATA;
  wire axi_cpu_interconnect_M03_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M03_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M03_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M04_AXI_ARPROT;
  wire axi_cpu_interconnect_M04_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M04_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M04_AXI_AWPROT;
  wire axi_cpu_interconnect_M04_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M04_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M04_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M04_AXI_BRESP;
  wire axi_cpu_interconnect_M04_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M04_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M04_AXI_RRESP;
  wire axi_cpu_interconnect_M04_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_WDATA;
  wire axi_cpu_interconnect_M04_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M04_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M04_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M05_AXI_ARPROT;
  wire axi_cpu_interconnect_M05_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M05_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M05_AXI_AWPROT;
  wire axi_cpu_interconnect_M05_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M05_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M05_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M05_AXI_BRESP;
  wire axi_cpu_interconnect_M05_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M05_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M05_AXI_RRESP;
  wire axi_cpu_interconnect_M05_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_WDATA;
  wire axi_cpu_interconnect_M05_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M05_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M05_AXI_WVALID;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_full2axi_lite_M_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_full2axi_lite_M_AXI_ARPROT;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_full2axi_lite_M_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_full2axi_lite_M_AXI_AWPROT;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_full2axi_lite_M_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_full2axi_lite_M_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_full2axi_lite_M_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_full2axi_lite_M_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_full2axi_lite_M_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_full2axi_lite_M_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_full2axi_lite_M_AXI_WVALID;
  wire axi_hdmi_clkgen_clk_0;
  wire [15:0]axi_hdmi_core_hdmi_16_data;
  wire axi_hdmi_core_hdmi_16_data_e;
  wire axi_hdmi_core_hdmi_16_hsync;
  wire axi_hdmi_core_hdmi_16_vsync;
  wire axi_hdmi_core_hdmi_out_clk;
  wire axi_hdmi_dma_irq;
  wire [63:0]axi_hdmi_dma_m_axis_TDATA;
  wire axi_hdmi_dma_m_axis_TLAST;
  wire axi_hdmi_dma_m_axis_TREADY;
  wire axi_hdmi_dma_m_axis_TVALID;
  wire [29:0]axi_hdmi_dma_m_src_axi_ARADDR;
  wire [1:0]axi_hdmi_dma_m_src_axi_ARBURST;
  wire [3:0]axi_hdmi_dma_m_src_axi_ARCACHE;
  wire [3:0]axi_hdmi_dma_m_src_axi_ARLEN;
  wire [2:0]axi_hdmi_dma_m_src_axi_ARPROT;
  wire axi_hdmi_dma_m_src_axi_ARREADY;
  wire [2:0]axi_hdmi_dma_m_src_axi_ARSIZE;
  wire axi_hdmi_dma_m_src_axi_ARVALID;
  wire [63:0]axi_hdmi_dma_m_src_axi_RDATA;
  wire axi_hdmi_dma_m_src_axi_RLAST;
  wire axi_hdmi_dma_m_src_axi_RREADY;
  wire [1:0]axi_hdmi_dma_m_src_axi_RRESP;
  wire axi_hdmi_dma_m_src_axi_RVALID;
  wire [31:0]axi_hp0_interconnect_M00_AXI_ARADDR;
  wire [1:0]axi_hp0_interconnect_M00_AXI_ARBURST;
  wire [3:0]axi_hp0_interconnect_M00_AXI_ARCACHE;
  wire [3:0]axi_hp0_interconnect_M00_AXI_ARLEN;
  wire [1:0]axi_hp0_interconnect_M00_AXI_ARLOCK;
  wire [2:0]axi_hp0_interconnect_M00_AXI_ARPROT;
  wire [3:0]axi_hp0_interconnect_M00_AXI_ARQOS;
  wire axi_hp0_interconnect_M00_AXI_ARREADY;
  wire [2:0]axi_hp0_interconnect_M00_AXI_ARSIZE;
  wire axi_hp0_interconnect_M00_AXI_ARVALID;
  wire [63:0]axi_hp0_interconnect_M00_AXI_RDATA;
  wire axi_hp0_interconnect_M00_AXI_RLAST;
  wire axi_hp0_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_hp0_interconnect_M00_AXI_RRESP;
  wire axi_hp0_interconnect_M00_AXI_RVALID;
  wire axi_iic_main_IIC_SCL_I;
  wire axi_iic_main_IIC_SCL_O;
  wire axi_iic_main_IIC_SCL_T;
  wire axi_iic_main_IIC_SDA_I;
  wire axi_iic_main_IIC_SDA_O;
  wire axi_iic_main_IIC_SDA_T;
  wire axi_iic_main_iic2intc_irpt;
  wire [11:0]axi_mem_BRAM_PORTA_ADDR;
  wire axi_mem_BRAM_PORTA_CLK;
  wire [31:0]axi_mem_BRAM_PORTA_DIN;
  wire [31:0]axi_mem_BRAM_PORTA_DOUT;
  wire axi_mem_BRAM_PORTA_EN;
  wire axi_mem_BRAM_PORTA_RST;
  wire [3:0]axi_mem_BRAM_PORTA_WE;
  wire [11:0]axi_mem_BRAM_PORTB_ADDR;
  wire axi_mem_BRAM_PORTB_CLK;
  wire [31:0]axi_mem_BRAM_PORTB_DIN;
  wire [31:0]axi_mem_BRAM_PORTB_DOUT;
  wire axi_mem_BRAM_PORTB_EN;
  wire axi_mem_BRAM_PORTB_RST;
  wire [3:0]axi_mem_BRAM_PORTB_WE;
  wire axi_spdif_tx_core_dma_req_TLAST;
  wire axi_spdif_tx_core_dma_req_TREADY;
  wire [1:0]axi_spdif_tx_core_dma_req_TUSER;
  wire axi_spdif_tx_core_dma_req_TVALID;
  wire axi_spdif_tx_core_spdif_tx_o;
  wire [8:0]axi_sysid_0_rom_addr;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [19:0]axil_fw_0_m_axil_ARADDR;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axil_fw_0_m_axil_ARPROT;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_ARREADY;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_ARVALID;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [19:0]axil_fw_0_m_axil_AWADDR;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axil_fw_0_m_axil_AWPROT;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_AWREADY;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_AWVALID;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_BREADY;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axil_fw_0_m_axil_BRESP;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_BVALID;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axil_fw_0_m_axil_RDATA;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_RREADY;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axil_fw_0_m_axil_RRESP;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_RVALID;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axil_fw_0_m_axil_WDATA;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_WREADY;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axil_fw_0_m_axil_WSTRB;
  (* CONN_BUS_INFO = "axil_fw_0_m_axil xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axil_fw_0_m_axil_WVALID;
  wire [63:0]gpio_i_1;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [11:0]lite_xbar_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]lite_xbar_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [11:0]lite_xbar_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]lite_xbar_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]lite_xbar_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]lite_xbar_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]lite_xbar_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]lite_xbar_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]lite_xbar_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "lite_xbar_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire lite_xbar_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "pow_0_m_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]pow_0_m_axis_TDATA;
  (* CONN_BUS_INFO = "pow_0_m_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire pow_0_m_axis_TLAST;
  (* CONN_BUS_INFO = "pow_0_m_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire pow_0_m_axis_TVALID;
  wire [31:0]rom_sys_0_rom_data;
  wire [15:0]signal_gen_top_0_o_pow_cfg;
  (* CONN_BUS_INFO = "signal_gen_top_0_s_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]signal_gen_top_0_s_axis_TDATA;
  (* CONN_BUS_INFO = "signal_gen_top_0_s_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire signal_gen_top_0_s_axis_TLAST;
  (* CONN_BUS_INFO = "signal_gen_top_0_s_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire signal_gen_top_0_s_axis_TVALID;
  wire spi0_clk_i_1;
  wire spi0_csn_i_1;
  wire spi0_sdi_i_1;
  wire spi0_sdo_i_1;
  wire spi1_clk_i_1;
  wire spi1_csn_i_1;
  wire spi1_sdi_i_1;
  wire spi1_sdo_i_1;
  wire sys_200m_clk;
  wire [0:0]sys_200m_reset;
  wire [0:0]sys_200m_resetn;
  wire [0:0]sys_200m_rstgen_interconnect_aresetn;
  wire sys_audio_clkgen_clk_out1;
  wire [15:0]sys_concat_intc_dout;
  wire sys_cpu_clk;
  wire [0:0]sys_cpu_reset;
  wire [0:0]sys_cpu_resetn;
  wire [14:0]sys_ps7_DDR_ADDR;
  wire [2:0]sys_ps7_DDR_BA;
  wire sys_ps7_DDR_CAS_N;
  wire sys_ps7_DDR_CKE;
  wire sys_ps7_DDR_CK_N;
  wire sys_ps7_DDR_CK_P;
  wire sys_ps7_DDR_CS_N;
  wire [3:0]sys_ps7_DDR_DM;
  wire [31:0]sys_ps7_DDR_DQ;
  wire [3:0]sys_ps7_DDR_DQS_N;
  wire [3:0]sys_ps7_DDR_DQS_P;
  wire sys_ps7_DDR_ODT;
  wire sys_ps7_DDR_RAS_N;
  wire sys_ps7_DDR_RESET_N;
  wire sys_ps7_DDR_WE_N;
  wire sys_ps7_DMA0_ACK_TREADY;
  wire [1:0]sys_ps7_DMA0_ACK_TUSER;
  wire sys_ps7_DMA0_ACK_TVALID;
  wire sys_ps7_FCLK_RESET0_N;
  wire sys_ps7_FCLK_RESET1_N;
  wire sys_ps7_FIXED_IO_DDR_VRN;
  wire sys_ps7_FIXED_IO_DDR_VRP;
  wire [53:0]sys_ps7_FIXED_IO_MIO;
  wire sys_ps7_FIXED_IO_PS_CLK;
  wire sys_ps7_FIXED_IO_PS_PORB;
  wire sys_ps7_FIXED_IO_PS_SRSTB;
  wire [63:0]sys_ps7_GPIO_O;
  wire [63:0]sys_ps7_GPIO_T;
  wire [31:0]sys_ps7_M_AXI_GP1_ARADDR;
  wire [1:0]sys_ps7_M_AXI_GP1_ARBURST;
  wire [3:0]sys_ps7_M_AXI_GP1_ARCACHE;
  wire [11:0]sys_ps7_M_AXI_GP1_ARID;
  wire [3:0]sys_ps7_M_AXI_GP1_ARLEN;
  wire [1:0]sys_ps7_M_AXI_GP1_ARLOCK;
  wire [2:0]sys_ps7_M_AXI_GP1_ARPROT;
  wire [3:0]sys_ps7_M_AXI_GP1_ARQOS;
  wire sys_ps7_M_AXI_GP1_ARREADY;
  wire [2:0]sys_ps7_M_AXI_GP1_ARSIZE;
  wire sys_ps7_M_AXI_GP1_ARVALID;
  wire [31:0]sys_ps7_M_AXI_GP1_AWADDR;
  wire [1:0]sys_ps7_M_AXI_GP1_AWBURST;
  wire [3:0]sys_ps7_M_AXI_GP1_AWCACHE;
  wire [11:0]sys_ps7_M_AXI_GP1_AWID;
  wire [3:0]sys_ps7_M_AXI_GP1_AWLEN;
  wire [1:0]sys_ps7_M_AXI_GP1_AWLOCK;
  wire [2:0]sys_ps7_M_AXI_GP1_AWPROT;
  wire [3:0]sys_ps7_M_AXI_GP1_AWQOS;
  wire sys_ps7_M_AXI_GP1_AWREADY;
  wire [2:0]sys_ps7_M_AXI_GP1_AWSIZE;
  wire sys_ps7_M_AXI_GP1_AWVALID;
  wire [11:0]sys_ps7_M_AXI_GP1_BID;
  wire sys_ps7_M_AXI_GP1_BREADY;
  wire [1:0]sys_ps7_M_AXI_GP1_BRESP;
  wire sys_ps7_M_AXI_GP1_BVALID;
  wire [31:0]sys_ps7_M_AXI_GP1_RDATA;
  wire [11:0]sys_ps7_M_AXI_GP1_RID;
  wire sys_ps7_M_AXI_GP1_RLAST;
  wire sys_ps7_M_AXI_GP1_RREADY;
  wire [1:0]sys_ps7_M_AXI_GP1_RRESP;
  wire sys_ps7_M_AXI_GP1_RVALID;
  wire [31:0]sys_ps7_M_AXI_GP1_WDATA;
  wire [11:0]sys_ps7_M_AXI_GP1_WID;
  wire sys_ps7_M_AXI_GP1_WLAST;
  wire sys_ps7_M_AXI_GP1_WREADY;
  wire [3:0]sys_ps7_M_AXI_GP1_WSTRB;
  wire sys_ps7_M_AXI_GP1_WVALID;
  wire sys_ps7_SPI0_MOSI_O;
  wire sys_ps7_SPI0_SCLK_O;
  wire sys_ps7_SPI0_SS1_O;
  wire sys_ps7_SPI0_SS2_O;
  wire sys_ps7_SPI0_SS_O;
  wire sys_ps7_SPI1_MOSI_O;
  wire sys_ps7_SPI1_SCLK_O;
  wire sys_ps7_SPI1_SS1_O;
  wire sys_ps7_SPI1_SS2_O;
  wire sys_ps7_SPI1_SS_O;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [9:0]vio_0_probe_out0;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]vio_0_probe_out1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [4:0]vio_0_probe_out2;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [4:0]xbar_M01_AXI_ARADDR;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]xbar_M01_AXI_ARPROT;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_ARREADY;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_ARVALID;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [4:0]xbar_M01_AXI_AWADDR;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]xbar_M01_AXI_AWPROT;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_AWREADY;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_AWVALID;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_BREADY;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]xbar_M01_AXI_BRESP;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_BVALID;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]xbar_M01_AXI_RDATA;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_RREADY;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]xbar_M01_AXI_RRESP;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_RVALID;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]xbar_M01_AXI_WDATA;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_WREADY;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]xbar_M01_AXI_WSTRB;
  (* CONN_BUS_INFO = "xbar_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M01_AXI_WVALID;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [19:0]xbar_M02_AXI_ARADDR;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]xbar_M02_AXI_ARPROT;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_ARREADY;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_ARVALID;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [19:0]xbar_M02_AXI_AWADDR;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]xbar_M02_AXI_AWPROT;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_AWREADY;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_AWVALID;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_BREADY;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]xbar_M02_AXI_BRESP;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_BVALID;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]xbar_M02_AXI_RDATA;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_RREADY;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]xbar_M02_AXI_RRESP;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_RVALID;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]xbar_M02_AXI_WDATA;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_WREADY;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]xbar_M02_AXI_WSTRB;
  (* CONN_BUS_INFO = "xbar_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M02_AXI_WVALID;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [11:0]xbar_M03_AXI_ARADDR;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]xbar_M03_AXI_ARPROT;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_ARREADY;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_ARVALID;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [11:0]xbar_M03_AXI_AWADDR;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]xbar_M03_AXI_AWPROT;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_AWREADY;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_AWVALID;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_BREADY;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]xbar_M03_AXI_BRESP;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_BVALID;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]xbar_M03_AXI_RDATA;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_RREADY;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]xbar_M03_AXI_RRESP;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_RVALID;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]xbar_M03_AXI_WDATA;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_WREADY;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]xbar_M03_AXI_WSTRB;
  (* CONN_BUS_INFO = "xbar_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M03_AXI_WVALID;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [19:0]xbar_M04_AXI_ARADDR;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]xbar_M04_AXI_ARPROT;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_ARREADY;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_ARVALID;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [19:0]xbar_M04_AXI_AWADDR;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]xbar_M04_AXI_AWPROT;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_AWREADY;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_AWVALID;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_BREADY;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]xbar_M04_AXI_BRESP;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_BVALID;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]xbar_M04_AXI_RDATA;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_RREADY;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]xbar_M04_AXI_RRESP;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_RVALID;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]xbar_M04_AXI_WDATA;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_WREADY;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]xbar_M04_AXI_WSTRB;
  (* CONN_BUS_INFO = "xbar_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire xbar_M04_AXI_WVALID;
  wire [31:0]xlconstant_0_dout;

  assign axi_iic_main_IIC_SCL_I = iic_main_scl_i;
  assign axi_iic_main_IIC_SDA_I = iic_main_sda_i;
  assign gpio_i_1 = gpio_i[63:0];
  assign gpio_o[63:0] = sys_ps7_GPIO_O;
  assign gpio_t[63:0] = sys_ps7_GPIO_T;
  assign hdmi_data[15:0] = axi_hdmi_core_hdmi_16_data;
  assign hdmi_data_e = axi_hdmi_core_hdmi_16_data_e;
  assign hdmi_hsync = axi_hdmi_core_hdmi_16_hsync;
  assign hdmi_out_clk = axi_hdmi_core_hdmi_out_clk;
  assign hdmi_vsync = axi_hdmi_core_hdmi_16_vsync;
  assign iic_main_scl_o = axi_iic_main_IIC_SCL_O;
  assign iic_main_scl_t = axi_iic_main_IIC_SCL_T;
  assign iic_main_sda_o = axi_iic_main_IIC_SDA_O;
  assign iic_main_sda_t = axi_iic_main_IIC_SDA_T;
  assign spdif = axi_spdif_tx_core_spdif_tx_o;
  assign spi0_clk_i_1 = spi0_clk_i;
  assign spi0_clk_o = sys_ps7_SPI0_SCLK_O;
  assign spi0_csn_0_o = sys_ps7_SPI0_SS_O;
  assign spi0_csn_1_o = sys_ps7_SPI0_SS1_O;
  assign spi0_csn_2_o = sys_ps7_SPI0_SS2_O;
  assign spi0_csn_i_1 = spi0_csn_i;
  assign spi0_sdi_i_1 = spi0_sdi_i;
  assign spi0_sdo_i_1 = spi0_sdo_i;
  assign spi0_sdo_o = sys_ps7_SPI0_MOSI_O;
  assign spi1_clk_i_1 = spi1_clk_i;
  assign spi1_clk_o = sys_ps7_SPI1_SCLK_O;
  assign spi1_csn_0_o = sys_ps7_SPI1_SS_O;
  assign spi1_csn_1_o = sys_ps7_SPI1_SS1_O;
  assign spi1_csn_2_o = sys_ps7_SPI1_SS2_O;
  assign spi1_csn_i_1 = spi1_csn_i;
  assign spi1_sdi_i_1 = spi1_sdi_i;
  assign spi1_sdo_i_1 = spi1_sdo_i;
  assign spi1_sdo_o = sys_ps7_SPI1_MOSI_O;
  system_FFT_Top_0_1 FFT_Top_0
       (.i_clk(sys_200m_clk),
        .i_resetn(sys_200m_resetn),
        .m_tdata(FFT_Top_0_m_TDATA),
        .m_tlast(FFT_Top_0_m_TLAST),
        .m_tvalid(FFT_Top_0_m_TVALID),
        .s_tdata(signal_gen_top_0_s_axis_TDATA),
        .s_tlast(signal_gen_top_0_s_axis_TLAST),
        .s_tvalid(signal_gen_top_0_s_axis_TVALID));
  system_GND_1_0 GND_1
       (.dout(GND_1_dout));
  system_axi_cpu_interconnect_0 axi_cpu_interconnect
       (.ACLK(sys_cpu_clk),
        .ARESETN(sys_cpu_resetn),
        .M00_ACLK(sys_cpu_clk),
        .M00_ARESETN(sys_cpu_resetn),
        .M00_AXI_araddr(axi_cpu_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_cpu_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_cpu_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_cpu_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_cpu_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_cpu_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_cpu_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_cpu_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_cpu_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_cpu_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(axi_cpu_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_cpu_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_cpu_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_cpu_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(axi_cpu_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_cpu_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_cpu_interconnect_M00_AXI_WVALID),
        .M01_ACLK(sys_cpu_clk),
        .M01_ARESETN(sys_cpu_resetn),
        .M01_AXI_araddr(axi_cpu_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_cpu_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_cpu_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_cpu_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_cpu_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_cpu_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_cpu_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_cpu_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_cpu_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_cpu_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_cpu_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_cpu_interconnect_M01_AXI_RDATA),
        .M01_AXI_rready(axi_cpu_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_cpu_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_cpu_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_cpu_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(axi_cpu_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_cpu_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_cpu_interconnect_M01_AXI_WVALID),
        .M02_ACLK(sys_cpu_clk),
        .M02_ARESETN(sys_cpu_resetn),
        .M02_AXI_araddr(axi_cpu_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arprot(axi_cpu_interconnect_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_cpu_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_cpu_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_cpu_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awprot(axi_cpu_interconnect_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_cpu_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_cpu_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_cpu_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_cpu_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_cpu_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_cpu_interconnect_M02_AXI_RDATA),
        .M02_AXI_rready(axi_cpu_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_cpu_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_cpu_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_cpu_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(axi_cpu_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_cpu_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_cpu_interconnect_M02_AXI_WVALID),
        .M03_ACLK(sys_cpu_clk),
        .M03_ARESETN(sys_cpu_resetn),
        .M03_AXI_araddr(axi_cpu_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_cpu_interconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_cpu_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_cpu_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_cpu_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_cpu_interconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_cpu_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_cpu_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_cpu_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_cpu_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_cpu_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_cpu_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(axi_cpu_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_cpu_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_cpu_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_cpu_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(axi_cpu_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_cpu_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_cpu_interconnect_M03_AXI_WVALID),
        .M04_ACLK(sys_cpu_clk),
        .M04_ARESETN(sys_cpu_resetn),
        .M04_AXI_araddr(axi_cpu_interconnect_M04_AXI_ARADDR),
        .M04_AXI_arprot(axi_cpu_interconnect_M04_AXI_ARPROT),
        .M04_AXI_arready(axi_cpu_interconnect_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_cpu_interconnect_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_cpu_interconnect_M04_AXI_AWADDR),
        .M04_AXI_awprot(axi_cpu_interconnect_M04_AXI_AWPROT),
        .M04_AXI_awready(axi_cpu_interconnect_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_cpu_interconnect_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_cpu_interconnect_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_cpu_interconnect_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_cpu_interconnect_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_cpu_interconnect_M04_AXI_RDATA),
        .M04_AXI_rready(axi_cpu_interconnect_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_cpu_interconnect_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_cpu_interconnect_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_cpu_interconnect_M04_AXI_WDATA),
        .M04_AXI_wready(axi_cpu_interconnect_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_cpu_interconnect_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_cpu_interconnect_M04_AXI_WVALID),
        .M05_ACLK(sys_cpu_clk),
        .M05_ARESETN(sys_cpu_resetn),
        .M05_AXI_araddr(axi_cpu_interconnect_M05_AXI_ARADDR),
        .M05_AXI_arprot(axi_cpu_interconnect_M05_AXI_ARPROT),
        .M05_AXI_arready(axi_cpu_interconnect_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_cpu_interconnect_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_cpu_interconnect_M05_AXI_AWADDR),
        .M05_AXI_awprot(axi_cpu_interconnect_M05_AXI_AWPROT),
        .M05_AXI_awready(axi_cpu_interconnect_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_cpu_interconnect_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_cpu_interconnect_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_cpu_interconnect_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_cpu_interconnect_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_cpu_interconnect_M05_AXI_RDATA),
        .M05_AXI_rready(axi_cpu_interconnect_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_cpu_interconnect_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_cpu_interconnect_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_cpu_interconnect_M05_AXI_WDATA),
        .M05_AXI_wready(axi_cpu_interconnect_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_cpu_interconnect_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_cpu_interconnect_M05_AXI_WVALID),
        .S00_ACLK(sys_cpu_clk),
        .S00_ARESETN(sys_cpu_resetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wid(S00_AXI_1_WID),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  system_axi_protocol_convert_0_0 axi_full2axi_lite
       (.aclk(sys_200m_clk),
        .aresetn(sys_200m_resetn),
        .m_axi_araddr(axi_full2axi_lite_M_AXI_ARADDR),
        .m_axi_arprot(axi_full2axi_lite_M_AXI_ARPROT),
        .m_axi_arready(axi_full2axi_lite_M_AXI_ARREADY),
        .m_axi_arvalid(axi_full2axi_lite_M_AXI_ARVALID),
        .m_axi_awaddr(axi_full2axi_lite_M_AXI_AWADDR),
        .m_axi_awprot(axi_full2axi_lite_M_AXI_AWPROT),
        .m_axi_awready(axi_full2axi_lite_M_AXI_AWREADY),
        .m_axi_awvalid(axi_full2axi_lite_M_AXI_AWVALID),
        .m_axi_bready(axi_full2axi_lite_M_AXI_BREADY),
        .m_axi_bresp(axi_full2axi_lite_M_AXI_BRESP),
        .m_axi_bvalid(axi_full2axi_lite_M_AXI_BVALID),
        .m_axi_rdata(axi_full2axi_lite_M_AXI_RDATA),
        .m_axi_rready(axi_full2axi_lite_M_AXI_RREADY),
        .m_axi_rresp(axi_full2axi_lite_M_AXI_RRESP),
        .m_axi_rvalid(axi_full2axi_lite_M_AXI_RVALID),
        .m_axi_wdata(axi_full2axi_lite_M_AXI_WDATA),
        .m_axi_wready(axi_full2axi_lite_M_AXI_WREADY),
        .m_axi_wstrb(axi_full2axi_lite_M_AXI_WSTRB),
        .m_axi_wvalid(axi_full2axi_lite_M_AXI_WVALID),
        .s_axi_araddr(sys_ps7_M_AXI_GP1_ARADDR),
        .s_axi_arburst(sys_ps7_M_AXI_GP1_ARBURST),
        .s_axi_arcache(sys_ps7_M_AXI_GP1_ARCACHE),
        .s_axi_arid(sys_ps7_M_AXI_GP1_ARID),
        .s_axi_arlen(sys_ps7_M_AXI_GP1_ARLEN),
        .s_axi_arlock(sys_ps7_M_AXI_GP1_ARLOCK),
        .s_axi_arprot(sys_ps7_M_AXI_GP1_ARPROT),
        .s_axi_arqos(sys_ps7_M_AXI_GP1_ARQOS),
        .s_axi_arready(sys_ps7_M_AXI_GP1_ARREADY),
        .s_axi_arsize(sys_ps7_M_AXI_GP1_ARSIZE),
        .s_axi_arvalid(sys_ps7_M_AXI_GP1_ARVALID),
        .s_axi_awaddr(sys_ps7_M_AXI_GP1_AWADDR),
        .s_axi_awburst(sys_ps7_M_AXI_GP1_AWBURST),
        .s_axi_awcache(sys_ps7_M_AXI_GP1_AWCACHE),
        .s_axi_awid(sys_ps7_M_AXI_GP1_AWID),
        .s_axi_awlen(sys_ps7_M_AXI_GP1_AWLEN),
        .s_axi_awlock(sys_ps7_M_AXI_GP1_AWLOCK),
        .s_axi_awprot(sys_ps7_M_AXI_GP1_AWPROT),
        .s_axi_awqos(sys_ps7_M_AXI_GP1_AWQOS),
        .s_axi_awready(sys_ps7_M_AXI_GP1_AWREADY),
        .s_axi_awsize(sys_ps7_M_AXI_GP1_AWSIZE),
        .s_axi_awvalid(sys_ps7_M_AXI_GP1_AWVALID),
        .s_axi_bid(sys_ps7_M_AXI_GP1_BID),
        .s_axi_bready(sys_ps7_M_AXI_GP1_BREADY),
        .s_axi_bresp(sys_ps7_M_AXI_GP1_BRESP),
        .s_axi_bvalid(sys_ps7_M_AXI_GP1_BVALID),
        .s_axi_rdata(sys_ps7_M_AXI_GP1_RDATA),
        .s_axi_rid(sys_ps7_M_AXI_GP1_RID),
        .s_axi_rlast(sys_ps7_M_AXI_GP1_RLAST),
        .s_axi_rready(sys_ps7_M_AXI_GP1_RREADY),
        .s_axi_rresp(sys_ps7_M_AXI_GP1_RRESP),
        .s_axi_rvalid(sys_ps7_M_AXI_GP1_RVALID),
        .s_axi_wdata(sys_ps7_M_AXI_GP1_WDATA),
        .s_axi_wid(sys_ps7_M_AXI_GP1_WID),
        .s_axi_wlast(sys_ps7_M_AXI_GP1_WLAST),
        .s_axi_wready(sys_ps7_M_AXI_GP1_WREADY),
        .s_axi_wstrb(sys_ps7_M_AXI_GP1_WSTRB),
        .s_axi_wvalid(sys_ps7_M_AXI_GP1_WVALID));
  system_axi_hdmi_clkgen_0 axi_hdmi_clkgen
       (.clk(sys_200m_clk),
        .clk_0(axi_hdmi_clkgen_clk_0),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M02_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M02_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M02_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M02_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M02_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M02_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M02_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M02_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M02_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M02_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M02_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M02_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M02_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M02_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M02_AXI_WVALID));
  system_axi_hdmi_core_0 axi_hdmi_core
       (.hdmi_16_data(axi_hdmi_core_hdmi_16_data),
        .hdmi_16_data_e(axi_hdmi_core_hdmi_16_data_e),
        .hdmi_16_hsync(axi_hdmi_core_hdmi_16_hsync),
        .hdmi_16_vsync(axi_hdmi_core_hdmi_16_vsync),
        .hdmi_out_clk(axi_hdmi_core_hdmi_out_clk),
        .reference_clk(axi_hdmi_clkgen_clk_0),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M04_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M04_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M04_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M04_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M04_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M04_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M04_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M04_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M04_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M04_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M04_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M04_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M04_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M04_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M04_AXI_WVALID),
        .vdma_clk(sys_cpu_clk),
        .vdma_data(axi_hdmi_dma_m_axis_TDATA),
        .vdma_end_of_frame(axi_hdmi_dma_m_axis_TLAST),
        .vdma_ready(axi_hdmi_dma_m_axis_TREADY),
        .vdma_valid(axi_hdmi_dma_m_axis_TVALID));
  system_axi_hdmi_dma_0 axi_hdmi_dma
       (.irq(axi_hdmi_dma_irq),
        .m_axis_aclk(sys_cpu_clk),
        .m_axis_data(axi_hdmi_dma_m_axis_TDATA),
        .m_axis_last(axi_hdmi_dma_m_axis_TLAST),
        .m_axis_ready(axi_hdmi_dma_m_axis_TREADY),
        .m_axis_valid(axi_hdmi_dma_m_axis_TVALID),
        .m_src_axi_aclk(sys_cpu_clk),
        .m_src_axi_araddr(axi_hdmi_dma_m_src_axi_ARADDR),
        .m_src_axi_arburst(axi_hdmi_dma_m_src_axi_ARBURST),
        .m_src_axi_arcache(axi_hdmi_dma_m_src_axi_ARCACHE),
        .m_src_axi_aresetn(sys_cpu_resetn),
        .m_src_axi_arlen(axi_hdmi_dma_m_src_axi_ARLEN),
        .m_src_axi_arprot(axi_hdmi_dma_m_src_axi_ARPROT),
        .m_src_axi_arready(axi_hdmi_dma_m_src_axi_ARREADY),
        .m_src_axi_arsize(axi_hdmi_dma_m_src_axi_ARSIZE),
        .m_src_axi_arvalid(axi_hdmi_dma_m_src_axi_ARVALID),
        .m_src_axi_rdata(axi_hdmi_dma_m_src_axi_RDATA),
        .m_src_axi_rlast(axi_hdmi_dma_m_src_axi_RLAST),
        .m_src_axi_rready(axi_hdmi_dma_m_src_axi_RREADY),
        .m_src_axi_rresp(axi_hdmi_dma_m_src_axi_RRESP),
        .m_src_axi_rvalid(axi_hdmi_dma_m_src_axi_RVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M03_AXI_ARADDR[10:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M03_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M03_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_cpu_interconnect_M03_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M03_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M03_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M03_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M03_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M03_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M03_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M03_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M03_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M03_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M03_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M03_AXI_WVALID));
  system_axi_hp0_interconnect_0 axi_hp0_interconnect
       (.M00_AXI_araddr(axi_hp0_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_hp0_interconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_hp0_interconnect_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_hp0_interconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_hp0_interconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_hp0_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_hp0_interconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_hp0_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_hp0_interconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_hp0_interconnect_M00_AXI_ARVALID),
        .M00_AXI_rdata(axi_hp0_interconnect_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_hp0_interconnect_M00_AXI_RLAST),
        .M00_AXI_rready(axi_hp0_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_hp0_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_hp0_interconnect_M00_AXI_RVALID),
        .S00_AXI_araddr(axi_hdmi_dma_m_src_axi_ARADDR),
        .S00_AXI_arburst(axi_hdmi_dma_m_src_axi_ARBURST),
        .S00_AXI_arcache(axi_hdmi_dma_m_src_axi_ARCACHE),
        .S00_AXI_arlen(axi_hdmi_dma_m_src_axi_ARLEN),
        .S00_AXI_arlock({1'b0,1'b0}),
        .S00_AXI_arprot(axi_hdmi_dma_m_src_axi_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_hdmi_dma_m_src_axi_ARREADY),
        .S00_AXI_arsize(axi_hdmi_dma_m_src_axi_ARSIZE),
        .S00_AXI_arvalid(axi_hdmi_dma_m_src_axi_ARVALID),
        .S00_AXI_rdata(axi_hdmi_dma_m_src_axi_RDATA),
        .S00_AXI_rlast(axi_hdmi_dma_m_src_axi_RLAST),
        .S00_AXI_rready(axi_hdmi_dma_m_src_axi_RREADY),
        .S00_AXI_rresp(axi_hdmi_dma_m_src_axi_RRESP),
        .S00_AXI_rvalid(axi_hdmi_dma_m_src_axi_RVALID),
        .aclk(sys_cpu_clk),
        .aresetn(sys_cpu_resetn));
  system_axi_iic_main_0 axi_iic_main
       (.iic2intc_irpt(axi_iic_main_iic2intc_irpt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_cpu_interconnect_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M00_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M00_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M00_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M00_AXI_WVALID),
        .scl_i(axi_iic_main_IIC_SCL_I),
        .scl_o(axi_iic_main_IIC_SCL_O),
        .scl_t(axi_iic_main_IIC_SCL_T),
        .sda_i(axi_iic_main_IIC_SDA_I),
        .sda_o(axi_iic_main_IIC_SDA_O),
        .sda_t(axi_iic_main_IIC_SDA_T));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x80000000 32 > system mem" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_axi_bram_ctrl_0_0 axi_mem
       (.bram_addr_a(axi_mem_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_mem_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_mem_BRAM_PORTA_CLK),
        .bram_clk_b(axi_mem_BRAM_PORTB_CLK),
        .bram_en_a(axi_mem_BRAM_PORTA_EN),
        .bram_en_b(axi_mem_BRAM_PORTB_EN),
        .bram_rddata_a(axi_mem_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_mem_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_mem_BRAM_PORTA_RST),
        .bram_rst_b(axi_mem_BRAM_PORTB_RST),
        .bram_we_a(axi_mem_BRAM_PORTA_WE),
        .bram_we_b(axi_mem_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_mem_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_mem_BRAM_PORTB_DIN),
        .s_axi_aclk(sys_200m_clk),
        .s_axi_araddr(lite_xbar_M00_AXI_ARADDR),
        .s_axi_aresetn(sys_200m_resetn),
        .s_axi_arprot(lite_xbar_M00_AXI_ARPROT),
        .s_axi_arready(lite_xbar_M00_AXI_ARREADY),
        .s_axi_arvalid(lite_xbar_M00_AXI_ARVALID),
        .s_axi_awaddr(lite_xbar_M00_AXI_AWADDR),
        .s_axi_awprot(lite_xbar_M00_AXI_AWPROT),
        .s_axi_awready(lite_xbar_M00_AXI_AWREADY),
        .s_axi_awvalid(lite_xbar_M00_AXI_AWVALID),
        .s_axi_bready(lite_xbar_M00_AXI_BREADY),
        .s_axi_bresp(lite_xbar_M00_AXI_BRESP),
        .s_axi_bvalid(lite_xbar_M00_AXI_BVALID),
        .s_axi_rdata(lite_xbar_M00_AXI_RDATA),
        .s_axi_rready(lite_xbar_M00_AXI_RREADY),
        .s_axi_rresp(lite_xbar_M00_AXI_RRESP),
        .s_axi_rvalid(lite_xbar_M00_AXI_RVALID),
        .s_axi_wdata(lite_xbar_M00_AXI_WDATA),
        .s_axi_wready(lite_xbar_M00_AXI_WREADY),
        .s_axi_wstrb(lite_xbar_M00_AXI_WSTRB),
        .s_axi_wvalid(lite_xbar_M00_AXI_WVALID));
  system_axi_spdif_tx_core_0 axi_spdif_tx_core
       (.dma_req_aclk(sys_cpu_clk),
        .dma_req_daready(sys_ps7_DMA0_ACK_TREADY),
        .dma_req_datype(sys_ps7_DMA0_ACK_TUSER),
        .dma_req_davalid(sys_ps7_DMA0_ACK_TVALID),
        .dma_req_drlast(axi_spdif_tx_core_dma_req_TLAST),
        .dma_req_drready(axi_spdif_tx_core_dma_req_TREADY),
        .dma_req_drtype(axi_spdif_tx_core_dma_req_TUSER),
        .dma_req_drvalid(axi_spdif_tx_core_dma_req_TVALID),
        .dma_req_rstn(sys_cpu_resetn),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M05_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M05_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M05_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M05_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M05_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M05_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M05_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M05_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M05_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M05_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M05_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M05_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M05_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M05_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M05_AXI_WVALID),
        .spdif_data_clk(sys_audio_clkgen_clk_out1),
        .spdif_tx_o(axi_spdif_tx_core_spdif_tx_o));
  system_axi_sysid_0_0 axi_sysid_0
       (.pr_rom_data(xlconstant_0_dout),
        .rom_addr(axi_sysid_0_rom_addr),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M01_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M01_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M01_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M01_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M01_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M01_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M01_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M01_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M01_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M01_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M01_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M01_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M01_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M01_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M01_AXI_WVALID),
        .sys_rom_data(rom_sys_0_rom_data));
  system_axil_fw_0_0 axil_fw_0
       (.aresetn(sys_200m_resetn),
        .ctrl_axil_araddr(xbar_M01_AXI_ARADDR),
        .ctrl_axil_arprot(xbar_M01_AXI_ARPROT),
        .ctrl_axil_arready(xbar_M01_AXI_ARREADY),
        .ctrl_axil_arvalid(xbar_M01_AXI_ARVALID),
        .ctrl_axil_awaddr(xbar_M01_AXI_AWADDR),
        .ctrl_axil_awprot(xbar_M01_AXI_AWPROT),
        .ctrl_axil_awready(xbar_M01_AXI_AWREADY),
        .ctrl_axil_awvalid(xbar_M01_AXI_AWVALID),
        .ctrl_axil_bready(xbar_M01_AXI_BREADY),
        .ctrl_axil_bresp(xbar_M01_AXI_BRESP),
        .ctrl_axil_bvalid(xbar_M01_AXI_BVALID),
        .ctrl_axil_rdata(xbar_M01_AXI_RDATA),
        .ctrl_axil_rready(xbar_M01_AXI_RREADY),
        .ctrl_axil_rresp(xbar_M01_AXI_RRESP),
        .ctrl_axil_rvalid(xbar_M01_AXI_RVALID),
        .ctrl_axil_wdata(xbar_M01_AXI_WDATA),
        .ctrl_axil_wready(xbar_M01_AXI_WREADY),
        .ctrl_axil_wstrb(xbar_M01_AXI_WSTRB),
        .ctrl_axil_wvalid(xbar_M01_AXI_WVALID),
        .i_clk(sys_200m_clk),
        .i_len(vio_0_probe_out0),
        .m_axil_araddr(axil_fw_0_m_axil_ARADDR),
        .m_axil_arprot(axil_fw_0_m_axil_ARPROT),
        .m_axil_arready(axil_fw_0_m_axil_ARREADY),
        .m_axil_arvalid(axil_fw_0_m_axil_ARVALID),
        .m_axil_awaddr(axil_fw_0_m_axil_AWADDR),
        .m_axil_awprot(axil_fw_0_m_axil_AWPROT),
        .m_axil_awready(axil_fw_0_m_axil_AWREADY),
        .m_axil_awvalid(axil_fw_0_m_axil_AWVALID),
        .m_axil_bready(axil_fw_0_m_axil_BREADY),
        .m_axil_bresp(axil_fw_0_m_axil_BRESP),
        .m_axil_bvalid(axil_fw_0_m_axil_BVALID),
        .m_axil_rdata(axil_fw_0_m_axil_RDATA),
        .m_axil_rready(axil_fw_0_m_axil_RREADY),
        .m_axil_rresp(axil_fw_0_m_axil_RRESP),
        .m_axil_rvalid(axil_fw_0_m_axil_RVALID),
        .m_axil_wdata(axil_fw_0_m_axil_WDATA),
        .m_axil_wready(axil_fw_0_m_axil_WREADY),
        .m_axil_wstrb(axil_fw_0_m_axil_WSTRB),
        .m_axil_wvalid(axil_fw_0_m_axil_WVALID),
        .s_axil_araddr(axi_full2axi_lite_M_AXI_ARADDR[19:0]),
        .s_axil_arprot(axi_full2axi_lite_M_AXI_ARPROT),
        .s_axil_arready(axi_full2axi_lite_M_AXI_ARREADY),
        .s_axil_arvalid(axi_full2axi_lite_M_AXI_ARVALID),
        .s_axil_awaddr(axi_full2axi_lite_M_AXI_AWADDR[19:0]),
        .s_axil_awprot(axi_full2axi_lite_M_AXI_AWPROT),
        .s_axil_awready(axi_full2axi_lite_M_AXI_AWREADY),
        .s_axil_awvalid(axi_full2axi_lite_M_AXI_AWVALID),
        .s_axil_bready(axi_full2axi_lite_M_AXI_BREADY),
        .s_axil_bresp(axi_full2axi_lite_M_AXI_BRESP),
        .s_axil_bvalid(axi_full2axi_lite_M_AXI_BVALID),
        .s_axil_rdata(axi_full2axi_lite_M_AXI_RDATA),
        .s_axil_rready(axi_full2axi_lite_M_AXI_RREADY),
        .s_axil_rresp(axi_full2axi_lite_M_AXI_RRESP),
        .s_axil_rvalid(axi_full2axi_lite_M_AXI_RVALID),
        .s_axil_wdata(axi_full2axi_lite_M_AXI_WDATA),
        .s_axil_wready(axi_full2axi_lite_M_AXI_WREADY),
        .s_axil_wstrb(axi_full2axi_lite_M_AXI_WSTRB),
        .s_axil_wvalid(axi_full2axi_lite_M_AXI_WVALID));
  system_blk_mem_gen_0_0 mem
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_BRAM_PORTB_ADDR}),
        .clka(axi_mem_BRAM_PORTA_CLK),
        .clkb(axi_mem_BRAM_PORTB_CLK),
        .dina(axi_mem_BRAM_PORTA_DIN),
        .dinb(axi_mem_BRAM_PORTB_DIN),
        .douta(axi_mem_BRAM_PORTA_DOUT),
        .doutb(axi_mem_BRAM_PORTB_DOUT),
        .ena(axi_mem_BRAM_PORTA_EN),
        .enb(axi_mem_BRAM_PORTB_EN),
        .rsta(axi_mem_BRAM_PORTA_RST),
        .rstb(axi_mem_BRAM_PORTB_RST),
        .wea(axi_mem_BRAM_PORTA_WE),
        .web(axi_mem_BRAM_PORTB_WE));
  system_pow_0_0 pow_0
       (.i_clk(sys_200m_clk),
        .i_shift(signal_gen_top_0_o_pow_cfg),
        .i_tdata(FFT_Top_0_m_TDATA),
        .i_tlast(FFT_Top_0_m_TLAST),
        .i_vld(FFT_Top_0_m_TVALID),
        .o_tdata(pow_0_m_axis_TDATA),
        .o_tlast(pow_0_m_axis_TLAST),
        .o_vld(pow_0_m_axis_TVALID));
  system_procedural_0_3 procedural_0
       (.i_clk(sys_200m_clk),
        .i_resetn(sys_200m_resetn),
        .s_axil_araddr(xbar_M04_AXI_ARADDR[7:0]),
        .s_axil_arprot(xbar_M04_AXI_ARPROT),
        .s_axil_arready(xbar_M04_AXI_ARREADY),
        .s_axil_arvalid(xbar_M04_AXI_ARVALID),
        .s_axil_awaddr(xbar_M04_AXI_AWADDR[7:0]),
        .s_axil_awprot(xbar_M04_AXI_AWPROT),
        .s_axil_awready(xbar_M04_AXI_AWREADY),
        .s_axil_awvalid(xbar_M04_AXI_AWVALID),
        .s_axil_bready(xbar_M04_AXI_BREADY),
        .s_axil_bresp(xbar_M04_AXI_BRESP),
        .s_axil_bvalid(xbar_M04_AXI_BVALID),
        .s_axil_rdata(xbar_M04_AXI_RDATA),
        .s_axil_rready(xbar_M04_AXI_RREADY),
        .s_axil_rresp(xbar_M04_AXI_RRESP),
        .s_axil_rvalid(xbar_M04_AXI_RVALID),
        .s_axil_wdata(xbar_M04_AXI_WDATA),
        .s_axil_wready(xbar_M04_AXI_WREADY),
        .s_axil_wstrb(xbar_M04_AXI_WSTRB),
        .s_axil_wvalid(xbar_M04_AXI_WVALID),
        .s_tdata(pow_0_m_axis_TDATA),
        .s_tlast(pow_0_m_axis_TLAST),
        .s_tvalid(pow_0_m_axis_TVALID));
  system_reg_map_fw_0_0 reg_map_fw_0
       (.i_err(vio_0_probe_out1),
        .i_hsk_ena(vio_0_probe_out2),
        .s00_axi_aclk(sys_200m_clk),
        .s00_axi_araddr(xbar_M02_AXI_ARADDR[3:0]),
        .s00_axi_aresetn(sys_200m_resetn),
        .s00_axi_arprot(xbar_M02_AXI_ARPROT),
        .s00_axi_arready(xbar_M02_AXI_ARREADY),
        .s00_axi_arvalid(xbar_M02_AXI_ARVALID),
        .s00_axi_awaddr(xbar_M02_AXI_AWADDR[3:0]),
        .s00_axi_awprot(xbar_M02_AXI_AWPROT),
        .s00_axi_awready(xbar_M02_AXI_AWREADY),
        .s00_axi_awvalid(xbar_M02_AXI_AWVALID),
        .s00_axi_bready(xbar_M02_AXI_BREADY),
        .s00_axi_bresp(xbar_M02_AXI_BRESP),
        .s00_axi_bvalid(xbar_M02_AXI_BVALID),
        .s00_axi_rdata(xbar_M02_AXI_RDATA),
        .s00_axi_rready(xbar_M02_AXI_RREADY),
        .s00_axi_rresp(xbar_M02_AXI_RRESP),
        .s00_axi_rvalid(xbar_M02_AXI_RVALID),
        .s00_axi_wdata(xbar_M02_AXI_WDATA),
        .s00_axi_wready(xbar_M02_AXI_WREADY),
        .s00_axi_wstrb(xbar_M02_AXI_WSTRB),
        .s00_axi_wvalid(xbar_M02_AXI_WVALID));
  system_rom_sys_0_0 rom_sys_0
       (.clk(sys_cpu_clk),
        .rom_addr(axi_sysid_0_rom_addr),
        .rom_data(rom_sys_0_rom_data));
  system_signal_gen_top_0_2 signal_gen_top_0
       (.i_clk(sys_200m_clk),
        .i_resetn(sys_200m_resetn),
        .o_pow_cfg(signal_gen_top_0_o_pow_cfg),
        .s_axil_araddr(xbar_M03_AXI_ARADDR),
        .s_axil_arprot(xbar_M03_AXI_ARPROT),
        .s_axil_arready(xbar_M03_AXI_ARREADY),
        .s_axil_arvalid(xbar_M03_AXI_ARVALID),
        .s_axil_awaddr(xbar_M03_AXI_AWADDR),
        .s_axil_awprot(xbar_M03_AXI_AWPROT),
        .s_axil_awready(xbar_M03_AXI_AWREADY),
        .s_axil_awvalid(xbar_M03_AXI_AWVALID),
        .s_axil_bready(xbar_M03_AXI_BREADY),
        .s_axil_bresp(xbar_M03_AXI_BRESP),
        .s_axil_bvalid(xbar_M03_AXI_BVALID),
        .s_axil_rdata(xbar_M03_AXI_RDATA),
        .s_axil_rready(xbar_M03_AXI_RREADY),
        .s_axil_rresp(xbar_M03_AXI_RRESP),
        .s_axil_rvalid(xbar_M03_AXI_RVALID),
        .s_axil_wdata(xbar_M03_AXI_WDATA),
        .s_axil_wready(xbar_M03_AXI_WREADY),
        .s_axil_wstrb(xbar_M03_AXI_WSTRB),
        .s_axil_wvalid(xbar_M03_AXI_WVALID),
        .s_axis_tdata(signal_gen_top_0_s_axis_TDATA),
        .s_axis_tlast(signal_gen_top_0_s_axis_TLAST),
        .s_axis_tvalid(signal_gen_top_0_s_axis_TVALID));
  system_sys_200m_rstgen_0 sys_200m_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(sys_ps7_FCLK_RESET1_N),
        .interconnect_aresetn(sys_200m_rstgen_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(sys_200m_resetn),
        .peripheral_reset(sys_200m_reset),
        .slowest_sync_clk(sys_200m_clk));
  system_sys_audio_clkgen_0 sys_audio_clkgen
       (.clk_in1(sys_200m_clk),
        .clk_out1(sys_audio_clkgen_clk_out1),
        .resetn(sys_cpu_resetn));
  system_sys_concat_intc_0 sys_concat_intc
       (.In0(GND_1_dout),
        .In1(GND_1_dout),
        .In10(GND_1_dout),
        .In11(GND_1_dout),
        .In12(GND_1_dout),
        .In13(GND_1_dout),
        .In14(axi_iic_main_iic2intc_irpt),
        .In15(axi_hdmi_dma_irq),
        .In2(GND_1_dout),
        .In3(GND_1_dout),
        .In4(GND_1_dout),
        .In5(GND_1_dout),
        .In6(GND_1_dout),
        .In7(GND_1_dout),
        .In8(GND_1_dout),
        .In9(GND_1_dout),
        .dout(sys_concat_intc_dout));
  (* BMM_INFO_PROCESSOR = "arm > system axi_mem" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_sys_ps7_0 sys_ps7
       (.DDR_Addr(ddr_addr[14:0]),
        .DDR_BankAddr(ddr_ba[2:0]),
        .DDR_CAS_n(ddr_cas_n),
        .DDR_CKE(ddr_cke),
        .DDR_CS_n(ddr_cs_n),
        .DDR_Clk(ddr_ck_p),
        .DDR_Clk_n(ddr_ck_n),
        .DDR_DM(ddr_dm[3:0]),
        .DDR_DQ(ddr_dq[31:0]),
        .DDR_DQS(ddr_dqs_p[3:0]),
        .DDR_DQS_n(ddr_dqs_n[3:0]),
        .DDR_DRSTB(ddr_reset_n),
        .DDR_ODT(ddr_odt),
        .DDR_RAS_n(ddr_ras_n),
        .DDR_VRN(fixed_io_ddr_vrn),
        .DDR_VRP(fixed_io_ddr_vrp),
        .DDR_WEB(ddr_we_n),
        .DMA0_ACLK(sys_cpu_clk),
        .DMA0_DAREADY(sys_ps7_DMA0_ACK_TREADY),
        .DMA0_DATYPE(sys_ps7_DMA0_ACK_TUSER),
        .DMA0_DAVALID(sys_ps7_DMA0_ACK_TVALID),
        .DMA0_DRLAST(axi_spdif_tx_core_dma_req_TLAST),
        .DMA0_DRREADY(axi_spdif_tx_core_dma_req_TREADY),
        .DMA0_DRTYPE(axi_spdif_tx_core_dma_req_TUSER),
        .DMA0_DRVALID(axi_spdif_tx_core_dma_req_TVALID),
        .FCLK_CLK0(sys_cpu_clk),
        .FCLK_CLK1(sys_200m_clk),
        .FCLK_RESET0_N(sys_ps7_FCLK_RESET0_N),
        .FCLK_RESET1_N(sys_ps7_FCLK_RESET1_N),
        .GPIO_I(gpio_i_1),
        .GPIO_O(sys_ps7_GPIO_O),
        .GPIO_T(sys_ps7_GPIO_T),
        .IRQ_F2P(sys_concat_intc_dout),
        .MIO(fixed_io_mio[53:0]),
        .M_AXI_GP0_ACLK(sys_cpu_clk),
        .M_AXI_GP0_ARADDR(S00_AXI_1_ARADDR),
        .M_AXI_GP0_ARBURST(S00_AXI_1_ARBURST),
        .M_AXI_GP0_ARCACHE(S00_AXI_1_ARCACHE),
        .M_AXI_GP0_ARID(S00_AXI_1_ARID),
        .M_AXI_GP0_ARLEN(S00_AXI_1_ARLEN),
        .M_AXI_GP0_ARLOCK(S00_AXI_1_ARLOCK),
        .M_AXI_GP0_ARPROT(S00_AXI_1_ARPROT),
        .M_AXI_GP0_ARQOS(S00_AXI_1_ARQOS),
        .M_AXI_GP0_ARREADY(S00_AXI_1_ARREADY),
        .M_AXI_GP0_ARSIZE(S00_AXI_1_ARSIZE),
        .M_AXI_GP0_ARVALID(S00_AXI_1_ARVALID),
        .M_AXI_GP0_AWADDR(S00_AXI_1_AWADDR),
        .M_AXI_GP0_AWBURST(S00_AXI_1_AWBURST),
        .M_AXI_GP0_AWCACHE(S00_AXI_1_AWCACHE),
        .M_AXI_GP0_AWID(S00_AXI_1_AWID),
        .M_AXI_GP0_AWLEN(S00_AXI_1_AWLEN),
        .M_AXI_GP0_AWLOCK(S00_AXI_1_AWLOCK),
        .M_AXI_GP0_AWPROT(S00_AXI_1_AWPROT),
        .M_AXI_GP0_AWQOS(S00_AXI_1_AWQOS),
        .M_AXI_GP0_AWREADY(S00_AXI_1_AWREADY),
        .M_AXI_GP0_AWSIZE(S00_AXI_1_AWSIZE),
        .M_AXI_GP0_AWVALID(S00_AXI_1_AWVALID),
        .M_AXI_GP0_BID(S00_AXI_1_BID),
        .M_AXI_GP0_BREADY(S00_AXI_1_BREADY),
        .M_AXI_GP0_BRESP(S00_AXI_1_BRESP),
        .M_AXI_GP0_BVALID(S00_AXI_1_BVALID),
        .M_AXI_GP0_RDATA(S00_AXI_1_RDATA),
        .M_AXI_GP0_RID(S00_AXI_1_RID),
        .M_AXI_GP0_RLAST(S00_AXI_1_RLAST),
        .M_AXI_GP0_RREADY(S00_AXI_1_RREADY),
        .M_AXI_GP0_RRESP(S00_AXI_1_RRESP),
        .M_AXI_GP0_RVALID(S00_AXI_1_RVALID),
        .M_AXI_GP0_WDATA(S00_AXI_1_WDATA),
        .M_AXI_GP0_WID(S00_AXI_1_WID),
        .M_AXI_GP0_WLAST(S00_AXI_1_WLAST),
        .M_AXI_GP0_WREADY(S00_AXI_1_WREADY),
        .M_AXI_GP0_WSTRB(S00_AXI_1_WSTRB),
        .M_AXI_GP0_WVALID(S00_AXI_1_WVALID),
        .M_AXI_GP1_ACLK(sys_200m_clk),
        .M_AXI_GP1_ARADDR(sys_ps7_M_AXI_GP1_ARADDR),
        .M_AXI_GP1_ARBURST(sys_ps7_M_AXI_GP1_ARBURST),
        .M_AXI_GP1_ARCACHE(sys_ps7_M_AXI_GP1_ARCACHE),
        .M_AXI_GP1_ARID(sys_ps7_M_AXI_GP1_ARID),
        .M_AXI_GP1_ARLEN(sys_ps7_M_AXI_GP1_ARLEN),
        .M_AXI_GP1_ARLOCK(sys_ps7_M_AXI_GP1_ARLOCK),
        .M_AXI_GP1_ARPROT(sys_ps7_M_AXI_GP1_ARPROT),
        .M_AXI_GP1_ARQOS(sys_ps7_M_AXI_GP1_ARQOS),
        .M_AXI_GP1_ARREADY(sys_ps7_M_AXI_GP1_ARREADY),
        .M_AXI_GP1_ARSIZE(sys_ps7_M_AXI_GP1_ARSIZE),
        .M_AXI_GP1_ARVALID(sys_ps7_M_AXI_GP1_ARVALID),
        .M_AXI_GP1_AWADDR(sys_ps7_M_AXI_GP1_AWADDR),
        .M_AXI_GP1_AWBURST(sys_ps7_M_AXI_GP1_AWBURST),
        .M_AXI_GP1_AWCACHE(sys_ps7_M_AXI_GP1_AWCACHE),
        .M_AXI_GP1_AWID(sys_ps7_M_AXI_GP1_AWID),
        .M_AXI_GP1_AWLEN(sys_ps7_M_AXI_GP1_AWLEN),
        .M_AXI_GP1_AWLOCK(sys_ps7_M_AXI_GP1_AWLOCK),
        .M_AXI_GP1_AWPROT(sys_ps7_M_AXI_GP1_AWPROT),
        .M_AXI_GP1_AWQOS(sys_ps7_M_AXI_GP1_AWQOS),
        .M_AXI_GP1_AWREADY(sys_ps7_M_AXI_GP1_AWREADY),
        .M_AXI_GP1_AWSIZE(sys_ps7_M_AXI_GP1_AWSIZE),
        .M_AXI_GP1_AWVALID(sys_ps7_M_AXI_GP1_AWVALID),
        .M_AXI_GP1_BID(sys_ps7_M_AXI_GP1_BID),
        .M_AXI_GP1_BREADY(sys_ps7_M_AXI_GP1_BREADY),
        .M_AXI_GP1_BRESP(sys_ps7_M_AXI_GP1_BRESP),
        .M_AXI_GP1_BVALID(sys_ps7_M_AXI_GP1_BVALID),
        .M_AXI_GP1_RDATA(sys_ps7_M_AXI_GP1_RDATA),
        .M_AXI_GP1_RID(sys_ps7_M_AXI_GP1_RID),
        .M_AXI_GP1_RLAST(sys_ps7_M_AXI_GP1_RLAST),
        .M_AXI_GP1_RREADY(sys_ps7_M_AXI_GP1_RREADY),
        .M_AXI_GP1_RRESP(sys_ps7_M_AXI_GP1_RRESP),
        .M_AXI_GP1_RVALID(sys_ps7_M_AXI_GP1_RVALID),
        .M_AXI_GP1_WDATA(sys_ps7_M_AXI_GP1_WDATA),
        .M_AXI_GP1_WID(sys_ps7_M_AXI_GP1_WID),
        .M_AXI_GP1_WLAST(sys_ps7_M_AXI_GP1_WLAST),
        .M_AXI_GP1_WREADY(sys_ps7_M_AXI_GP1_WREADY),
        .M_AXI_GP1_WSTRB(sys_ps7_M_AXI_GP1_WSTRB),
        .M_AXI_GP1_WVALID(sys_ps7_M_AXI_GP1_WVALID),
        .PS_CLK(fixed_io_ps_clk),
        .PS_PORB(fixed_io_ps_porb),
        .PS_SRSTB(fixed_io_ps_srstb),
        .SPI0_MISO_I(spi0_sdi_i_1),
        .SPI0_MOSI_I(spi0_sdo_i_1),
        .SPI0_MOSI_O(sys_ps7_SPI0_MOSI_O),
        .SPI0_SCLK_I(spi0_clk_i_1),
        .SPI0_SCLK_O(sys_ps7_SPI0_SCLK_O),
        .SPI0_SS1_O(sys_ps7_SPI0_SS1_O),
        .SPI0_SS2_O(sys_ps7_SPI0_SS2_O),
        .SPI0_SS_I(spi0_csn_i_1),
        .SPI0_SS_O(sys_ps7_SPI0_SS_O),
        .SPI1_MISO_I(spi1_sdi_i_1),
        .SPI1_MOSI_I(spi1_sdo_i_1),
        .SPI1_MOSI_O(sys_ps7_SPI1_MOSI_O),
        .SPI1_SCLK_I(spi1_clk_i_1),
        .SPI1_SCLK_O(sys_ps7_SPI1_SCLK_O),
        .SPI1_SS1_O(sys_ps7_SPI1_SS1_O),
        .SPI1_SS2_O(sys_ps7_SPI1_SS2_O),
        .SPI1_SS_I(spi1_csn_i_1),
        .SPI1_SS_O(sys_ps7_SPI1_SS_O),
        .S_AXI_HP0_ACLK(sys_cpu_clk),
        .S_AXI_HP0_ARADDR(axi_hp0_interconnect_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_hp0_interconnect_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_hp0_interconnect_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(axi_hp0_interconnect_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_hp0_interconnect_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_hp0_interconnect_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_hp0_interconnect_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_hp0_interconnect_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_hp0_interconnect_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_hp0_interconnect_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWBURST({1'b0,1'b1}),
        .S_AXI_HP0_AWCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLOCK({1'b0,1'b0}),
        .S_AXI_HP0_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP0_AWVALID(1'b0),
        .S_AXI_HP0_BREADY(1'b0),
        .S_AXI_HP0_RDATA(axi_hp0_interconnect_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(axi_hp0_interconnect_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_hp0_interconnect_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_hp0_interconnect_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_hp0_interconnect_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(1'b0),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .S_AXI_HP0_WVALID(1'b0),
        .USB0_VBUS_PWRFAULT(1'b0));
  system_sys_rstgen_0 sys_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(sys_ps7_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(sys_cpu_resetn),
        .peripheral_reset(sys_cpu_reset),
        .slowest_sync_clk(sys_cpu_clk));
  system_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(axil_fw_0_m_axil_ARADDR),
        .SLOT_0_AXI_arprot(axil_fw_0_m_axil_ARPROT),
        .SLOT_0_AXI_arready(axil_fw_0_m_axil_ARREADY),
        .SLOT_0_AXI_arvalid(axil_fw_0_m_axil_ARVALID),
        .SLOT_0_AXI_awaddr(axil_fw_0_m_axil_AWADDR),
        .SLOT_0_AXI_awprot(axil_fw_0_m_axil_AWPROT),
        .SLOT_0_AXI_awready(axil_fw_0_m_axil_AWREADY),
        .SLOT_0_AXI_awvalid(axil_fw_0_m_axil_AWVALID),
        .SLOT_0_AXI_bready(axil_fw_0_m_axil_BREADY),
        .SLOT_0_AXI_bresp(axil_fw_0_m_axil_BRESP),
        .SLOT_0_AXI_bvalid(axil_fw_0_m_axil_BVALID),
        .SLOT_0_AXI_rdata(axil_fw_0_m_axil_RDATA),
        .SLOT_0_AXI_rready(axil_fw_0_m_axil_RREADY),
        .SLOT_0_AXI_rresp(axil_fw_0_m_axil_RRESP),
        .SLOT_0_AXI_rvalid(axil_fw_0_m_axil_RVALID),
        .SLOT_0_AXI_wdata(axil_fw_0_m_axil_WDATA),
        .SLOT_0_AXI_wready(axil_fw_0_m_axil_WREADY),
        .SLOT_0_AXI_wstrb(axil_fw_0_m_axil_WSTRB),
        .SLOT_0_AXI_wvalid(axil_fw_0_m_axil_WVALID),
        .SLOT_1_AXI_araddr(lite_xbar_M00_AXI_ARADDR),
        .SLOT_1_AXI_arprot(lite_xbar_M00_AXI_ARPROT),
        .SLOT_1_AXI_arready(lite_xbar_M00_AXI_ARREADY),
        .SLOT_1_AXI_arvalid(lite_xbar_M00_AXI_ARVALID),
        .SLOT_1_AXI_awaddr(lite_xbar_M00_AXI_AWADDR),
        .SLOT_1_AXI_awprot(lite_xbar_M00_AXI_AWPROT),
        .SLOT_1_AXI_awready(lite_xbar_M00_AXI_AWREADY),
        .SLOT_1_AXI_awvalid(lite_xbar_M00_AXI_AWVALID),
        .SLOT_1_AXI_bready(lite_xbar_M00_AXI_BREADY),
        .SLOT_1_AXI_bresp(lite_xbar_M00_AXI_BRESP),
        .SLOT_1_AXI_bvalid(lite_xbar_M00_AXI_BVALID),
        .SLOT_1_AXI_rdata(lite_xbar_M00_AXI_RDATA),
        .SLOT_1_AXI_rready(lite_xbar_M00_AXI_RREADY),
        .SLOT_1_AXI_rresp(lite_xbar_M00_AXI_RRESP),
        .SLOT_1_AXI_rvalid(lite_xbar_M00_AXI_RVALID),
        .SLOT_1_AXI_wdata(lite_xbar_M00_AXI_WDATA),
        .SLOT_1_AXI_wready(lite_xbar_M00_AXI_WREADY),
        .SLOT_1_AXI_wstrb(lite_xbar_M00_AXI_WSTRB),
        .SLOT_1_AXI_wvalid(lite_xbar_M00_AXI_WVALID),
        .SLOT_2_AXI_araddr(xbar_M01_AXI_ARADDR),
        .SLOT_2_AXI_arprot(xbar_M01_AXI_ARPROT),
        .SLOT_2_AXI_arready(xbar_M01_AXI_ARREADY),
        .SLOT_2_AXI_arvalid(xbar_M01_AXI_ARVALID),
        .SLOT_2_AXI_awaddr(xbar_M01_AXI_AWADDR),
        .SLOT_2_AXI_awprot(xbar_M01_AXI_AWPROT),
        .SLOT_2_AXI_awready(xbar_M01_AXI_AWREADY),
        .SLOT_2_AXI_awvalid(xbar_M01_AXI_AWVALID),
        .SLOT_2_AXI_bready(xbar_M01_AXI_BREADY),
        .SLOT_2_AXI_bresp(xbar_M01_AXI_BRESP),
        .SLOT_2_AXI_bvalid(xbar_M01_AXI_BVALID),
        .SLOT_2_AXI_rdata(xbar_M01_AXI_RDATA),
        .SLOT_2_AXI_rready(xbar_M01_AXI_RREADY),
        .SLOT_2_AXI_rresp(xbar_M01_AXI_RRESP),
        .SLOT_2_AXI_rvalid(xbar_M01_AXI_RVALID),
        .SLOT_2_AXI_wdata(xbar_M01_AXI_WDATA),
        .SLOT_2_AXI_wready(xbar_M01_AXI_WREADY),
        .SLOT_2_AXI_wstrb(xbar_M01_AXI_WSTRB),
        .SLOT_2_AXI_wvalid(xbar_M01_AXI_WVALID),
        .SLOT_3_AXI_araddr(xbar_M02_AXI_ARADDR[3:0]),
        .SLOT_3_AXI_arprot(xbar_M02_AXI_ARPROT),
        .SLOT_3_AXI_arready(xbar_M02_AXI_ARREADY),
        .SLOT_3_AXI_arvalid(xbar_M02_AXI_ARVALID),
        .SLOT_3_AXI_awaddr(xbar_M02_AXI_AWADDR[3:0]),
        .SLOT_3_AXI_awprot(xbar_M02_AXI_AWPROT),
        .SLOT_3_AXI_awready(xbar_M02_AXI_AWREADY),
        .SLOT_3_AXI_awvalid(xbar_M02_AXI_AWVALID),
        .SLOT_3_AXI_bready(xbar_M02_AXI_BREADY),
        .SLOT_3_AXI_bresp(xbar_M02_AXI_BRESP),
        .SLOT_3_AXI_bvalid(xbar_M02_AXI_BVALID),
        .SLOT_3_AXI_rdata(xbar_M02_AXI_RDATA),
        .SLOT_3_AXI_rready(xbar_M02_AXI_RREADY),
        .SLOT_3_AXI_rresp(xbar_M02_AXI_RRESP),
        .SLOT_3_AXI_rvalid(xbar_M02_AXI_RVALID),
        .SLOT_3_AXI_wdata(xbar_M02_AXI_WDATA),
        .SLOT_3_AXI_wready(xbar_M02_AXI_WREADY),
        .SLOT_3_AXI_wstrb(xbar_M02_AXI_WSTRB),
        .SLOT_3_AXI_wvalid(xbar_M02_AXI_WVALID),
        .SLOT_4_AXI_araddr(xbar_M03_AXI_ARADDR),
        .SLOT_4_AXI_arprot(xbar_M03_AXI_ARPROT),
        .SLOT_4_AXI_arready(xbar_M03_AXI_ARREADY),
        .SLOT_4_AXI_arvalid(xbar_M03_AXI_ARVALID),
        .SLOT_4_AXI_awaddr(xbar_M03_AXI_AWADDR),
        .SLOT_4_AXI_awprot(xbar_M03_AXI_AWPROT),
        .SLOT_4_AXI_awready(xbar_M03_AXI_AWREADY),
        .SLOT_4_AXI_awvalid(xbar_M03_AXI_AWVALID),
        .SLOT_4_AXI_bready(xbar_M03_AXI_BREADY),
        .SLOT_4_AXI_bresp(xbar_M03_AXI_BRESP),
        .SLOT_4_AXI_bvalid(xbar_M03_AXI_BVALID),
        .SLOT_4_AXI_rdata(xbar_M03_AXI_RDATA),
        .SLOT_4_AXI_rready(xbar_M03_AXI_RREADY),
        .SLOT_4_AXI_rresp(xbar_M03_AXI_RRESP),
        .SLOT_4_AXI_rvalid(xbar_M03_AXI_RVALID),
        .SLOT_4_AXI_wdata(xbar_M03_AXI_WDATA),
        .SLOT_4_AXI_wready(xbar_M03_AXI_WREADY),
        .SLOT_4_AXI_wstrb(xbar_M03_AXI_WSTRB),
        .SLOT_4_AXI_wvalid(xbar_M03_AXI_WVALID),
        .SLOT_5_AXI_araddr(xbar_M04_AXI_ARADDR[7:0]),
        .SLOT_5_AXI_arprot(xbar_M04_AXI_ARPROT),
        .SLOT_5_AXI_arready(xbar_M04_AXI_ARREADY),
        .SLOT_5_AXI_arvalid(xbar_M04_AXI_ARVALID),
        .SLOT_5_AXI_awaddr(xbar_M04_AXI_AWADDR[7:0]),
        .SLOT_5_AXI_awprot(xbar_M04_AXI_AWPROT),
        .SLOT_5_AXI_awready(xbar_M04_AXI_AWREADY),
        .SLOT_5_AXI_awvalid(xbar_M04_AXI_AWVALID),
        .SLOT_5_AXI_bready(xbar_M04_AXI_BREADY),
        .SLOT_5_AXI_bresp(xbar_M04_AXI_BRESP),
        .SLOT_5_AXI_bvalid(xbar_M04_AXI_BVALID),
        .SLOT_5_AXI_rdata(xbar_M04_AXI_RDATA),
        .SLOT_5_AXI_rready(xbar_M04_AXI_RREADY),
        .SLOT_5_AXI_rresp(xbar_M04_AXI_RRESP),
        .SLOT_5_AXI_rvalid(xbar_M04_AXI_RVALID),
        .SLOT_5_AXI_wdata(xbar_M04_AXI_WDATA),
        .SLOT_5_AXI_wready(xbar_M04_AXI_WREADY),
        .SLOT_5_AXI_wstrb(xbar_M04_AXI_WSTRB),
        .SLOT_5_AXI_wvalid(xbar_M04_AXI_WVALID),
        .SLOT_6_AXI_araddr(axi_full2axi_lite_M_AXI_ARADDR[19:0]),
        .SLOT_6_AXI_arprot(axi_full2axi_lite_M_AXI_ARPROT),
        .SLOT_6_AXI_arready(axi_full2axi_lite_M_AXI_ARREADY),
        .SLOT_6_AXI_arvalid(axi_full2axi_lite_M_AXI_ARVALID),
        .SLOT_6_AXI_awaddr(axi_full2axi_lite_M_AXI_AWADDR[19:0]),
        .SLOT_6_AXI_awprot(axi_full2axi_lite_M_AXI_AWPROT),
        .SLOT_6_AXI_awready(axi_full2axi_lite_M_AXI_AWREADY),
        .SLOT_6_AXI_awvalid(axi_full2axi_lite_M_AXI_AWVALID),
        .SLOT_6_AXI_bready(axi_full2axi_lite_M_AXI_BREADY),
        .SLOT_6_AXI_bresp(axi_full2axi_lite_M_AXI_BRESP),
        .SLOT_6_AXI_bvalid(axi_full2axi_lite_M_AXI_BVALID),
        .SLOT_6_AXI_rdata(axi_full2axi_lite_M_AXI_RDATA),
        .SLOT_6_AXI_rready(axi_full2axi_lite_M_AXI_RREADY),
        .SLOT_6_AXI_rresp(axi_full2axi_lite_M_AXI_RRESP),
        .SLOT_6_AXI_rvalid(axi_full2axi_lite_M_AXI_RVALID),
        .SLOT_6_AXI_wdata(axi_full2axi_lite_M_AXI_WDATA),
        .SLOT_6_AXI_wready(axi_full2axi_lite_M_AXI_WREADY),
        .SLOT_6_AXI_wstrb(axi_full2axi_lite_M_AXI_WSTRB),
        .SLOT_6_AXI_wvalid(axi_full2axi_lite_M_AXI_WVALID),
        .clk(sys_200m_clk),
        .probe0(vio_0_probe_out0),
        .probe1(vio_0_probe_out1),
        .probe2(vio_0_probe_out2),
        .resetn(sys_200m_resetn));
  system_system_ila_3_0 system_ila_3
       (.SLOT_0_AXIS_tdata(signal_gen_top_0_s_axis_TDATA),
        .SLOT_0_AXIS_tlast(signal_gen_top_0_s_axis_TLAST),
        .SLOT_0_AXIS_tvalid(signal_gen_top_0_s_axis_TVALID),
        .SLOT_1_AXIS_tdata(FFT_Top_0_m_TDATA),
        .SLOT_1_AXIS_tlast(FFT_Top_0_m_TLAST),
        .SLOT_1_AXIS_tvalid(FFT_Top_0_m_TVALID),
        .SLOT_2_AXIS_tdata(pow_0_m_axis_TDATA),
        .SLOT_2_AXIS_tlast(pow_0_m_axis_TLAST),
        .SLOT_2_AXIS_tvalid(pow_0_m_axis_TVALID),
        .clk(sys_200m_clk),
        .resetn(sys_200m_resetn));
  system_vio_0_0 vio_0
       (.clk(sys_200m_clk),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out2(vio_0_probe_out2));
  system_axi_interconnect_0_0 xbar
       (.ACLK(sys_200m_clk),
        .ARESETN(sys_200m_rstgen_interconnect_aresetn),
        .M00_ACLK(sys_200m_clk),
        .M00_ARESETN(sys_200m_rstgen_interconnect_aresetn),
        .M00_AXI_araddr(lite_xbar_M00_AXI_ARADDR),
        .M00_AXI_arprot(lite_xbar_M00_AXI_ARPROT),
        .M00_AXI_arready(lite_xbar_M00_AXI_ARREADY),
        .M00_AXI_arvalid(lite_xbar_M00_AXI_ARVALID),
        .M00_AXI_awaddr(lite_xbar_M00_AXI_AWADDR),
        .M00_AXI_awprot(lite_xbar_M00_AXI_AWPROT),
        .M00_AXI_awready(lite_xbar_M00_AXI_AWREADY),
        .M00_AXI_awvalid(lite_xbar_M00_AXI_AWVALID),
        .M00_AXI_bready(lite_xbar_M00_AXI_BREADY),
        .M00_AXI_bresp(lite_xbar_M00_AXI_BRESP),
        .M00_AXI_bvalid(lite_xbar_M00_AXI_BVALID),
        .M00_AXI_rdata(lite_xbar_M00_AXI_RDATA),
        .M00_AXI_rready(lite_xbar_M00_AXI_RREADY),
        .M00_AXI_rresp(lite_xbar_M00_AXI_RRESP),
        .M00_AXI_rvalid(lite_xbar_M00_AXI_RVALID),
        .M00_AXI_wdata(lite_xbar_M00_AXI_WDATA),
        .M00_AXI_wready(lite_xbar_M00_AXI_WREADY),
        .M00_AXI_wstrb(lite_xbar_M00_AXI_WSTRB),
        .M00_AXI_wvalid(lite_xbar_M00_AXI_WVALID),
        .M01_ACLK(sys_200m_clk),
        .M01_ARESETN(sys_200m_rstgen_interconnect_aresetn),
        .M01_AXI_araddr(xbar_M01_AXI_ARADDR),
        .M01_AXI_arprot(xbar_M01_AXI_ARPROT),
        .M01_AXI_arready(xbar_M01_AXI_ARREADY),
        .M01_AXI_arvalid(xbar_M01_AXI_ARVALID),
        .M01_AXI_awaddr(xbar_M01_AXI_AWADDR),
        .M01_AXI_awprot(xbar_M01_AXI_AWPROT),
        .M01_AXI_awready(xbar_M01_AXI_AWREADY),
        .M01_AXI_awvalid(xbar_M01_AXI_AWVALID),
        .M01_AXI_bready(xbar_M01_AXI_BREADY),
        .M01_AXI_bresp(xbar_M01_AXI_BRESP),
        .M01_AXI_bvalid(xbar_M01_AXI_BVALID),
        .M01_AXI_rdata(xbar_M01_AXI_RDATA),
        .M01_AXI_rready(xbar_M01_AXI_RREADY),
        .M01_AXI_rresp(xbar_M01_AXI_RRESP),
        .M01_AXI_rvalid(xbar_M01_AXI_RVALID),
        .M01_AXI_wdata(xbar_M01_AXI_WDATA),
        .M01_AXI_wready(xbar_M01_AXI_WREADY),
        .M01_AXI_wstrb(xbar_M01_AXI_WSTRB),
        .M01_AXI_wvalid(xbar_M01_AXI_WVALID),
        .M02_ACLK(sys_200m_clk),
        .M02_ARESETN(sys_200m_rstgen_interconnect_aresetn),
        .M02_AXI_araddr(xbar_M02_AXI_ARADDR),
        .M02_AXI_arprot(xbar_M02_AXI_ARPROT),
        .M02_AXI_arready(xbar_M02_AXI_ARREADY),
        .M02_AXI_arvalid(xbar_M02_AXI_ARVALID),
        .M02_AXI_awaddr(xbar_M02_AXI_AWADDR),
        .M02_AXI_awprot(xbar_M02_AXI_AWPROT),
        .M02_AXI_awready(xbar_M02_AXI_AWREADY),
        .M02_AXI_awvalid(xbar_M02_AXI_AWVALID),
        .M02_AXI_bready(xbar_M02_AXI_BREADY),
        .M02_AXI_bresp(xbar_M02_AXI_BRESP),
        .M02_AXI_bvalid(xbar_M02_AXI_BVALID),
        .M02_AXI_rdata(xbar_M02_AXI_RDATA),
        .M02_AXI_rready(xbar_M02_AXI_RREADY),
        .M02_AXI_rresp(xbar_M02_AXI_RRESP),
        .M02_AXI_rvalid(xbar_M02_AXI_RVALID),
        .M02_AXI_wdata(xbar_M02_AXI_WDATA),
        .M02_AXI_wready(xbar_M02_AXI_WREADY),
        .M02_AXI_wstrb(xbar_M02_AXI_WSTRB),
        .M02_AXI_wvalid(xbar_M02_AXI_WVALID),
        .M03_ACLK(sys_200m_clk),
        .M03_ARESETN(sys_200m_rstgen_interconnect_aresetn),
        .M03_AXI_araddr(xbar_M03_AXI_ARADDR),
        .M03_AXI_arprot(xbar_M03_AXI_ARPROT),
        .M03_AXI_arready(xbar_M03_AXI_ARREADY),
        .M03_AXI_arvalid(xbar_M03_AXI_ARVALID),
        .M03_AXI_awaddr(xbar_M03_AXI_AWADDR),
        .M03_AXI_awprot(xbar_M03_AXI_AWPROT),
        .M03_AXI_awready(xbar_M03_AXI_AWREADY),
        .M03_AXI_awvalid(xbar_M03_AXI_AWVALID),
        .M03_AXI_bready(xbar_M03_AXI_BREADY),
        .M03_AXI_bresp(xbar_M03_AXI_BRESP),
        .M03_AXI_bvalid(xbar_M03_AXI_BVALID),
        .M03_AXI_rdata(xbar_M03_AXI_RDATA),
        .M03_AXI_rready(xbar_M03_AXI_RREADY),
        .M03_AXI_rresp(xbar_M03_AXI_RRESP),
        .M03_AXI_rvalid(xbar_M03_AXI_RVALID),
        .M03_AXI_wdata(xbar_M03_AXI_WDATA),
        .M03_AXI_wready(xbar_M03_AXI_WREADY),
        .M03_AXI_wstrb(xbar_M03_AXI_WSTRB),
        .M03_AXI_wvalid(xbar_M03_AXI_WVALID),
        .M04_ACLK(sys_200m_clk),
        .M04_ARESETN(sys_200m_rstgen_interconnect_aresetn),
        .M04_AXI_araddr(xbar_M04_AXI_ARADDR),
        .M04_AXI_arprot(xbar_M04_AXI_ARPROT),
        .M04_AXI_arready(xbar_M04_AXI_ARREADY),
        .M04_AXI_arvalid(xbar_M04_AXI_ARVALID),
        .M04_AXI_awaddr(xbar_M04_AXI_AWADDR),
        .M04_AXI_awprot(xbar_M04_AXI_AWPROT),
        .M04_AXI_awready(xbar_M04_AXI_AWREADY),
        .M04_AXI_awvalid(xbar_M04_AXI_AWVALID),
        .M04_AXI_bready(xbar_M04_AXI_BREADY),
        .M04_AXI_bresp(xbar_M04_AXI_BRESP),
        .M04_AXI_bvalid(xbar_M04_AXI_BVALID),
        .M04_AXI_rdata(xbar_M04_AXI_RDATA),
        .M04_AXI_rready(xbar_M04_AXI_RREADY),
        .M04_AXI_rresp(xbar_M04_AXI_RRESP),
        .M04_AXI_rvalid(xbar_M04_AXI_RVALID),
        .M04_AXI_wdata(xbar_M04_AXI_WDATA),
        .M04_AXI_wready(xbar_M04_AXI_WREADY),
        .M04_AXI_wstrb(xbar_M04_AXI_WSTRB),
        .M04_AXI_wvalid(xbar_M04_AXI_WVALID),
        .S00_ACLK(sys_200m_clk),
        .S00_ARESETN(sys_200m_rstgen_interconnect_aresetn),
        .S00_AXI_araddr(axil_fw_0_m_axil_ARADDR),
        .S00_AXI_arprot(axil_fw_0_m_axil_ARPROT),
        .S00_AXI_arready(axil_fw_0_m_axil_ARREADY),
        .S00_AXI_arvalid(axil_fw_0_m_axil_ARVALID),
        .S00_AXI_awaddr(axil_fw_0_m_axil_AWADDR),
        .S00_AXI_awprot(axil_fw_0_m_axil_AWPROT),
        .S00_AXI_awready(axil_fw_0_m_axil_AWREADY),
        .S00_AXI_awvalid(axil_fw_0_m_axil_AWVALID),
        .S00_AXI_bready(axil_fw_0_m_axil_BREADY),
        .S00_AXI_bresp(axil_fw_0_m_axil_BRESP),
        .S00_AXI_bvalid(axil_fw_0_m_axil_BVALID),
        .S00_AXI_rdata(axil_fw_0_m_axil_RDATA),
        .S00_AXI_rready(axil_fw_0_m_axil_RREADY),
        .S00_AXI_rresp(axil_fw_0_m_axil_RRESP),
        .S00_AXI_rvalid(axil_fw_0_m_axil_RVALID),
        .S00_AXI_wdata(axil_fw_0_m_axil_WDATA),
        .S00_AXI_wready(axil_fw_0_m_axil_WREADY),
        .S00_AXI_wstrb(axil_fw_0_m_axil_WSTRB),
        .S00_AXI_wvalid(axil_fw_0_m_axil_WVALID));
  system_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module system_axi_cpu_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_cpu_interconnect_ACLK_net;
  wire axi_cpu_interconnect_ARESETN_net;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_ARCACHE;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_ARID;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_ARLEN;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_ARPROT;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_ARQOS;
  wire axi_cpu_interconnect_to_s00_couplers_ARREADY;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_ARSIZE;
  wire axi_cpu_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_AWCACHE;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_AWID;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_AWLEN;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_AWPROT;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_AWQOS;
  wire axi_cpu_interconnect_to_s00_couplers_AWREADY;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_AWSIZE;
  wire axi_cpu_interconnect_to_s00_couplers_AWVALID;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_BID;
  wire axi_cpu_interconnect_to_s00_couplers_BREADY;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_BRESP;
  wire axi_cpu_interconnect_to_s00_couplers_BVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_RDATA;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_RID;
  wire axi_cpu_interconnect_to_s00_couplers_RLAST;
  wire axi_cpu_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_RRESP;
  wire axi_cpu_interconnect_to_s00_couplers_RVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_WDATA;
  wire [11:0]axi_cpu_interconnect_to_s00_couplers_WID;
  wire axi_cpu_interconnect_to_s00_couplers_WLAST;
  wire axi_cpu_interconnect_to_s00_couplers_WREADY;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_WSTRB;
  wire axi_cpu_interconnect_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m00_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m01_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m01_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m01_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m02_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m02_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m02_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m02_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m02_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m03_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m03_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m03_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m03_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m03_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m04_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m04_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m04_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m04_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m04_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m05_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m05_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m05_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m05_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m05_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [17:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [17:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_cpu_interconnect_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_cpu_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_cpu_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_cpu_interconnect_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_cpu_interconnect_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_cpu_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_cpu_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_cpu_interconnect_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_cpu_interconnect_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_cpu_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_cpu_interconnect_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_cpu_interconnect_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_cpu_interconnect_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_cpu_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_cpu_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_cpu_interconnect_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_cpu_interconnect_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_cpu_interconnect_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_cpu_interconnect_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_cpu_interconnect_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi_cpu_interconnect_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi_cpu_interconnect_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_cpu_interconnect_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi_cpu_interconnect_WVALID;
  assign S00_AXI_arready = axi_cpu_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_cpu_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_cpu_interconnect_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_cpu_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_cpu_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_cpu_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_cpu_interconnect_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_cpu_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_cpu_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_cpu_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_cpu_interconnect_to_s00_couplers_WREADY;
  assign axi_cpu_interconnect_ACLK_net = ACLK;
  assign axi_cpu_interconnect_ARESETN_net = ARESETN;
  assign axi_cpu_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_cpu_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_cpu_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_cpu_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_cpu_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_cpu_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_cpu_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_cpu_interconnect_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_cpu_interconnect_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_cpu_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_cpu_interconnect_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_cpu_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_cpu_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_cpu_interconnect_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_cpu_interconnect_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_cpu_interconnect_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_cpu_interconnect_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_cpu_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_cpu_interconnect_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_cpu_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_cpu_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_cpu_interconnect_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_cpu_interconnect_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_cpu_interconnect_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_cpu_interconnect_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_cpu_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_cpu_interconnect_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_cpu_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_cpu_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_cpu_interconnect_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_cpu_interconnect_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi_cpu_interconnect_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_cpu_interconnect_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_cpu_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_cpu_interconnect_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_cpu_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_cpu_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_cpu_interconnect_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_cpu_interconnect_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_cpu_interconnect_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_cpu_interconnect_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_cpu_interconnect_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_cpu_interconnect_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_cpu_interconnect_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_cpu_interconnect_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_cpu_interconnect_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_cpu_interconnect_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi_cpu_interconnect_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi_cpu_interconnect_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi_cpu_interconnect_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_cpu_interconnect_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi_cpu_interconnect_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_cpu_interconnect_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_cpu_interconnect_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi_cpu_interconnect_WREADY = M05_AXI_wready[0];
  m00_couplers_imp_I5GH1N m00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1UBGIXM m01_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1J5P44O m02_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m02_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m02_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m02_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m02_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_T17W6X m03_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_15FU5SC m04_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m04_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m04_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m04_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m04_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_GFBASD m05_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m05_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m05_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m05_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m05_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  s00_couplers_imp_WZLZH6 s00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_cpu_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_cpu_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_cpu_interconnect_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_cpu_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_cpu_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_cpu_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_cpu_interconnect_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_cpu_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_cpu_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_cpu_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_cpu_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_cpu_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_cpu_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_cpu_interconnect_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_cpu_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_cpu_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_cpu_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_cpu_interconnect_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_cpu_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_cpu_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_cpu_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_cpu_interconnect_to_s00_couplers_BID),
        .S_AXI_bready(axi_cpu_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_cpu_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_cpu_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_cpu_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_cpu_interconnect_to_s00_couplers_RID),
        .S_AXI_rlast(axi_cpu_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_cpu_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_cpu_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_cpu_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_cpu_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_cpu_interconnect_to_s00_couplers_WID),
        .S_AXI_wlast(axi_cpu_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_cpu_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_interconnect_to_s00_couplers_WVALID));
  system_xbar_0 xbar
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module system_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [11:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [11:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [4:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [4:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [19:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [19:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [11:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [11:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [19:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [19:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [63:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [63:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [7:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [19:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [19:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire [11:0]m00_couplers_to_xbar_ARADDR;
  wire [2:0]m00_couplers_to_xbar_ARPROT;
  wire m00_couplers_to_xbar_ARREADY;
  wire m00_couplers_to_xbar_ARVALID;
  wire [11:0]m00_couplers_to_xbar_AWADDR;
  wire [2:0]m00_couplers_to_xbar_AWPROT;
  wire m00_couplers_to_xbar_AWREADY;
  wire m00_couplers_to_xbar_AWVALID;
  wire m00_couplers_to_xbar_BREADY;
  wire [1:0]m00_couplers_to_xbar_BRESP;
  wire m00_couplers_to_xbar_BVALID;
  wire [31:0]m00_couplers_to_xbar_RDATA;
  wire m00_couplers_to_xbar_RREADY;
  wire [1:0]m00_couplers_to_xbar_RRESP;
  wire m00_couplers_to_xbar_RVALID;
  wire [31:0]m00_couplers_to_xbar_WDATA;
  wire m00_couplers_to_xbar_WREADY;
  wire [3:0]m00_couplers_to_xbar_WSTRB;
  wire m00_couplers_to_xbar_WVALID;
  wire [4:0]m01_couplers_to_xbar_ARADDR;
  wire [2:0]m01_couplers_to_xbar_ARPROT;
  wire m01_couplers_to_xbar_ARREADY;
  wire m01_couplers_to_xbar_ARVALID;
  wire [4:0]m01_couplers_to_xbar_AWADDR;
  wire [2:0]m01_couplers_to_xbar_AWPROT;
  wire m01_couplers_to_xbar_AWREADY;
  wire m01_couplers_to_xbar_AWVALID;
  wire m01_couplers_to_xbar_BREADY;
  wire [1:0]m01_couplers_to_xbar_BRESP;
  wire m01_couplers_to_xbar_BVALID;
  wire [31:0]m01_couplers_to_xbar_RDATA;
  wire m01_couplers_to_xbar_RREADY;
  wire [1:0]m01_couplers_to_xbar_RRESP;
  wire m01_couplers_to_xbar_RVALID;
  wire [31:0]m01_couplers_to_xbar_WDATA;
  wire m01_couplers_to_xbar_WREADY;
  wire [3:0]m01_couplers_to_xbar_WSTRB;
  wire m01_couplers_to_xbar_WVALID;
  wire [19:0]m02_couplers_to_xbar_ARADDR;
  wire [2:0]m02_couplers_to_xbar_ARPROT;
  wire m02_couplers_to_xbar_ARREADY;
  wire m02_couplers_to_xbar_ARVALID;
  wire [19:0]m02_couplers_to_xbar_AWADDR;
  wire [2:0]m02_couplers_to_xbar_AWPROT;
  wire m02_couplers_to_xbar_AWREADY;
  wire m02_couplers_to_xbar_AWVALID;
  wire m02_couplers_to_xbar_BREADY;
  wire [1:0]m02_couplers_to_xbar_BRESP;
  wire m02_couplers_to_xbar_BVALID;
  wire [31:0]m02_couplers_to_xbar_RDATA;
  wire m02_couplers_to_xbar_RREADY;
  wire [1:0]m02_couplers_to_xbar_RRESP;
  wire m02_couplers_to_xbar_RVALID;
  wire [31:0]m02_couplers_to_xbar_WDATA;
  wire m02_couplers_to_xbar_WREADY;
  wire [3:0]m02_couplers_to_xbar_WSTRB;
  wire m02_couplers_to_xbar_WVALID;
  wire [11:0]m03_couplers_to_xbar_ARADDR;
  wire [2:0]m03_couplers_to_xbar_ARPROT;
  wire m03_couplers_to_xbar_ARREADY;
  wire m03_couplers_to_xbar_ARVALID;
  wire [11:0]m03_couplers_to_xbar_AWADDR;
  wire [2:0]m03_couplers_to_xbar_AWPROT;
  wire m03_couplers_to_xbar_AWREADY;
  wire m03_couplers_to_xbar_AWVALID;
  wire m03_couplers_to_xbar_BREADY;
  wire [1:0]m03_couplers_to_xbar_BRESP;
  wire m03_couplers_to_xbar_BVALID;
  wire [31:0]m03_couplers_to_xbar_RDATA;
  wire m03_couplers_to_xbar_RREADY;
  wire [1:0]m03_couplers_to_xbar_RRESP;
  wire m03_couplers_to_xbar_RVALID;
  wire [31:0]m03_couplers_to_xbar_WDATA;
  wire m03_couplers_to_xbar_WREADY;
  wire [3:0]m03_couplers_to_xbar_WSTRB;
  wire m03_couplers_to_xbar_WVALID;
  wire [19:0]m04_couplers_to_xbar_ARADDR;
  wire [2:0]m04_couplers_to_xbar_ARPROT;
  wire m04_couplers_to_xbar_ARREADY;
  wire m04_couplers_to_xbar_ARVALID;
  wire [19:0]m04_couplers_to_xbar_AWADDR;
  wire [2:0]m04_couplers_to_xbar_AWPROT;
  wire m04_couplers_to_xbar_AWREADY;
  wire m04_couplers_to_xbar_AWVALID;
  wire m04_couplers_to_xbar_BREADY;
  wire [1:0]m04_couplers_to_xbar_BRESP;
  wire m04_couplers_to_xbar_BVALID;
  wire [63:0]m04_couplers_to_xbar_RDATA;
  wire m04_couplers_to_xbar_RREADY;
  wire [1:0]m04_couplers_to_xbar_RRESP;
  wire m04_couplers_to_xbar_RVALID;
  wire [63:0]m04_couplers_to_xbar_WDATA;
  wire m04_couplers_to_xbar_WREADY;
  wire [7:0]m04_couplers_to_xbar_WSTRB;
  wire m04_couplers_to_xbar_WVALID;
  wire [19:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [19:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire xbar_ACLK_net;
  wire xbar_ARESETN_net;
  wire [19:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [19:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [39:20]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [39:20]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [63:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [127:64]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [15:8]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [59:40]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [59:40]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [63:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [191:128]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [23:16]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [79:60]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [79:60]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [63:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [255:192]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [31:24]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [99:80]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [99:80]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [63:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [319:256]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [39:32]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [19:0]xbar_to_s00_couplers_ARADDR;
  wire [2:0]xbar_to_s00_couplers_ARPROT;
  wire xbar_to_s00_couplers_ARREADY;
  wire xbar_to_s00_couplers_ARVALID;
  wire [19:0]xbar_to_s00_couplers_AWADDR;
  wire [2:0]xbar_to_s00_couplers_AWPROT;
  wire xbar_to_s00_couplers_AWREADY;
  wire xbar_to_s00_couplers_AWVALID;
  wire xbar_to_s00_couplers_BREADY;
  wire [1:0]xbar_to_s00_couplers_BRESP;
  wire xbar_to_s00_couplers_BVALID;
  wire [31:0]xbar_to_s00_couplers_RDATA;
  wire xbar_to_s00_couplers_RREADY;
  wire [1:0]xbar_to_s00_couplers_RRESP;
  wire xbar_to_s00_couplers_RVALID;
  wire [31:0]xbar_to_s00_couplers_WDATA;
  wire xbar_to_s00_couplers_WREADY;
  wire [3:0]xbar_to_s00_couplers_WSTRB;
  wire xbar_to_s00_couplers_WVALID;

  assign M00_AXI_araddr[11:0] = m00_couplers_to_xbar_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_xbar_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_xbar_ARVALID;
  assign M00_AXI_awaddr[11:0] = m00_couplers_to_xbar_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_xbar_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_xbar_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_xbar_BREADY;
  assign M00_AXI_rready = m00_couplers_to_xbar_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_xbar_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_xbar_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_xbar_WVALID;
  assign M01_AXI_araddr[4:0] = m01_couplers_to_xbar_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_xbar_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_xbar_ARVALID;
  assign M01_AXI_awaddr[4:0] = m01_couplers_to_xbar_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_xbar_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_xbar_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_xbar_BREADY;
  assign M01_AXI_rready = m01_couplers_to_xbar_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_xbar_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_xbar_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_xbar_WVALID;
  assign M02_AXI_araddr[19:0] = m02_couplers_to_xbar_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_xbar_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_xbar_ARVALID;
  assign M02_AXI_awaddr[19:0] = m02_couplers_to_xbar_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_xbar_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_xbar_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_xbar_BREADY;
  assign M02_AXI_rready = m02_couplers_to_xbar_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_xbar_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_xbar_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_xbar_WVALID;
  assign M03_AXI_araddr[11:0] = m03_couplers_to_xbar_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_xbar_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_xbar_ARVALID;
  assign M03_AXI_awaddr[11:0] = m03_couplers_to_xbar_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_xbar_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_xbar_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_xbar_BREADY;
  assign M03_AXI_rready = m03_couplers_to_xbar_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_xbar_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_xbar_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_xbar_WVALID;
  assign M04_AXI_araddr[19:0] = m04_couplers_to_xbar_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_xbar_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_xbar_ARVALID;
  assign M04_AXI_awaddr[19:0] = m04_couplers_to_xbar_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_xbar_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_xbar_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_xbar_BREADY;
  assign M04_AXI_rready = m04_couplers_to_xbar_RREADY;
  assign M04_AXI_wdata[63:0] = m04_couplers_to_xbar_WDATA;
  assign M04_AXI_wstrb[7:0] = m04_couplers_to_xbar_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_xbar_WVALID;
  assign S00_AXI_arready = xbar_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = xbar_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = xbar_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = xbar_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = xbar_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = xbar_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = xbar_to_s00_couplers_RVALID;
  assign S00_AXI_wready = xbar_to_s00_couplers_WREADY;
  assign m00_couplers_to_xbar_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_xbar_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_xbar_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_xbar_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_xbar_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_xbar_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_xbar_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_xbar_WREADY = M00_AXI_wready;
  assign m01_couplers_to_xbar_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_xbar_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_xbar_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_xbar_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_xbar_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_xbar_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_xbar_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_xbar_WREADY = M01_AXI_wready;
  assign m02_couplers_to_xbar_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_xbar_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_xbar_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_xbar_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_xbar_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_xbar_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_xbar_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_xbar_WREADY = M02_AXI_wready;
  assign m03_couplers_to_xbar_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_xbar_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_xbar_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_xbar_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_xbar_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_xbar_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_xbar_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_xbar_WREADY = M03_AXI_wready;
  assign m04_couplers_to_xbar_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_xbar_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_xbar_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_xbar_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_xbar_RDATA = M04_AXI_rdata[63:0];
  assign m04_couplers_to_xbar_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_xbar_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_xbar_WREADY = M04_AXI_wready;
  assign xbar_ACLK_net = ACLK;
  assign xbar_ARESETN_net = ARESETN;
  assign xbar_to_s00_couplers_ARADDR = S00_AXI_araddr[19:0];
  assign xbar_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign xbar_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign xbar_to_s00_couplers_AWADDR = S00_AXI_awaddr[19:0];
  assign xbar_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign xbar_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign xbar_to_s00_couplers_BREADY = S00_AXI_bready;
  assign xbar_to_s00_couplers_RREADY = S00_AXI_rready;
  assign xbar_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign xbar_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign xbar_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_ISHMZ8 m00_couplers
       (.M_ACLK(xbar_ACLK_net),
        .M_ARESETN(xbar_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(m00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(m00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(m00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(m00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(m00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(m00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(m00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(m00_couplers_to_xbar_RDATA),
        .M_AXI_rready(m00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(m00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(m00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(m00_couplers_to_xbar_WDATA),
        .M_AXI_wready(m00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(m00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_xbar_WVALID),
        .S_ACLK(xbar_ACLK_net),
        .S_ARESETN(xbar_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1TZHJB9 m01_couplers
       (.M_ACLK(xbar_ACLK_net),
        .M_ARESETN(xbar_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(m01_couplers_to_xbar_ARPROT),
        .M_AXI_arready(m01_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(m01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(m01_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(m01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(m01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(m01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(m01_couplers_to_xbar_RDATA),
        .M_AXI_rready(m01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(m01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(m01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(m01_couplers_to_xbar_WDATA),
        .M_AXI_wready(m01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(m01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_xbar_WVALID),
        .S_ACLK(xbar_ACLK_net),
        .S_ARESETN(xbar_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1IESD87 m02_couplers
       (.M_ACLK(xbar_ACLK_net),
        .M_ARESETN(xbar_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(m02_couplers_to_xbar_ARPROT),
        .M_AXI_arready(m02_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(m02_couplers_to_xbar_AWPROT),
        .M_AXI_awready(m02_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(m02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(m02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(m02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(m02_couplers_to_xbar_RDATA),
        .M_AXI_rready(m02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(m02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(m02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(m02_couplers_to_xbar_WDATA),
        .M_AXI_wready(m02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(m02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_xbar_WVALID),
        .S_ACLK(xbar_ACLK_net),
        .S_ARESETN(xbar_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_TJ7Q06 m03_couplers
       (.M_ACLK(xbar_ACLK_net),
        .M_ARESETN(xbar_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(m03_couplers_to_xbar_ARPROT),
        .M_AXI_arready(m03_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(m03_couplers_to_xbar_AWPROT),
        .M_AXI_awready(m03_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(m03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(m03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(m03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(m03_couplers_to_xbar_RDATA),
        .M_AXI_rready(m03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(m03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(m03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(m03_couplers_to_xbar_WDATA),
        .M_AXI_wready(m03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(m03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_xbar_WVALID),
        .S_ACLK(xbar_ACLK_net),
        .S_ARESETN(xbar_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_161N47N m04_couplers
       (.M_ACLK(xbar_ACLK_net),
        .M_ARESETN(xbar_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(m04_couplers_to_xbar_ARPROT),
        .M_AXI_arready(m04_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(m04_couplers_to_xbar_AWPROT),
        .M_AXI_awready(m04_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_xbar_AWVALID),
        .M_AXI_bready(m04_couplers_to_xbar_BREADY),
        .M_AXI_bresp(m04_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(m04_couplers_to_xbar_BVALID),
        .M_AXI_rdata(m04_couplers_to_xbar_RDATA),
        .M_AXI_rready(m04_couplers_to_xbar_RREADY),
        .M_AXI_rresp(m04_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(m04_couplers_to_xbar_RVALID),
        .M_AXI_wdata(m04_couplers_to_xbar_WDATA),
        .M_AXI_wready(m04_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(m04_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_xbar_WVALID),
        .S_ACLK(xbar_ACLK_net),
        .S_ARESETN(xbar_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  s00_couplers_imp_W8VJET s00_couplers
       (.M_ACLK(xbar_ACLK_net),
        .M_ARESETN(xbar_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(xbar_ACLK_net),
        .S_ARESETN(xbar_ARESETN_net),
        .S_AXI_araddr(xbar_to_s00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_s00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_s00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_s00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_s00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_s00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_s00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_s00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_s00_couplers_RDATA),
        .S_AXI_rready(xbar_to_s00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_s00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_s00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_s00_couplers_WDATA),
        .S_AXI_wready(xbar_to_s00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_s00_couplers_WVALID));
  system_xbar_1 xbar
       (.aclk(xbar_ACLK_net),
        .aresetn(xbar_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
