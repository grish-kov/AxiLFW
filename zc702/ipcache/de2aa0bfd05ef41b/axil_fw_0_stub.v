// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Jul  2 14:20:49 2024
// Host        : Griffon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axil_fw_0_stub.v
// Design      : axil_fw_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axil_fw,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, aresetn, i_len, m_axil_awready, 
  m_axil_awvalid, m_axil_awaddr, m_axil_awprot, m_axil_wready, m_axil_wvalid, m_axil_wdata, 
  m_axil_wstrb, m_axil_bready, m_axil_bvalid, m_axil_bresp, m_axil_arready, m_axil_arvalid, 
  m_axil_araddr, m_axil_arprot, m_axil_rready, m_axil_rvalid, m_axil_rdata, m_axil_rresp, 
  s_axil_awready, s_axil_awvalid, s_axil_awaddr, s_axil_awprot, s_axil_wready, s_axil_wvalid, 
  s_axil_wdata, s_axil_wstrb, s_axil_bready, s_axil_bvalid, s_axil_bresp, s_axil_arready, 
  s_axil_arvalid, s_axil_araddr, s_axil_arprot, s_axil_rready, s_axil_rvalid, s_axil_rdata, 
  s_axil_rresp, ctrl_axil_awready, ctrl_axil_awvalid, ctrl_axil_awaddr, ctrl_axil_awprot, 
  ctrl_axil_wready, ctrl_axil_wvalid, ctrl_axil_wdata, ctrl_axil_wstrb, ctrl_axil_bready, 
  ctrl_axil_bvalid, ctrl_axil_bresp, ctrl_axil_arready, ctrl_axil_arvalid, 
  ctrl_axil_araddr, ctrl_axil_arprot, ctrl_axil_rready, ctrl_axil_rvalid, ctrl_axil_rdata, 
  ctrl_axil_rresp)
/* synthesis syn_black_box black_box_pad_pin="i_clk,aresetn,i_len[7:0],m_axil_awready,m_axil_awvalid,m_axil_awaddr[19:0],m_axil_awprot[2:0],m_axil_wready,m_axil_wvalid,m_axil_wdata[31:0],m_axil_wstrb[3:0],m_axil_bready,m_axil_bvalid,m_axil_bresp[1:0],m_axil_arready,m_axil_arvalid,m_axil_araddr[19:0],m_axil_arprot[2:0],m_axil_rready,m_axil_rvalid,m_axil_rdata[31:0],m_axil_rresp[1:0],s_axil_awready,s_axil_awvalid,s_axil_awaddr[19:0],s_axil_awprot[2:0],s_axil_wready,s_axil_wvalid,s_axil_wdata[31:0],s_axil_wstrb[3:0],s_axil_bready,s_axil_bvalid,s_axil_bresp[1:0],s_axil_arready,s_axil_arvalid,s_axil_araddr[19:0],s_axil_arprot[2:0],s_axil_rready,s_axil_rvalid,s_axil_rdata[31:0],s_axil_rresp[1:0],ctrl_axil_awready,ctrl_axil_awvalid,ctrl_axil_awaddr[4:0],ctrl_axil_awprot[2:0],ctrl_axil_wready,ctrl_axil_wvalid,ctrl_axil_wdata[31:0],ctrl_axil_wstrb[3:0],ctrl_axil_bready,ctrl_axil_bvalid,ctrl_axil_bresp[1:0],ctrl_axil_arready,ctrl_axil_arvalid,ctrl_axil_araddr[4:0],ctrl_axil_arprot[2:0],ctrl_axil_rready,ctrl_axil_rvalid,ctrl_axil_rdata[31:0],ctrl_axil_rresp[1:0]" */;
  input i_clk;
  input aresetn;
  input [7:0]i_len;
  input m_axil_awready;
  output m_axil_awvalid;
  output [19:0]m_axil_awaddr;
  output [2:0]m_axil_awprot;
  input m_axil_wready;
  output m_axil_wvalid;
  output [31:0]m_axil_wdata;
  output [3:0]m_axil_wstrb;
  output m_axil_bready;
  input m_axil_bvalid;
  input [1:0]m_axil_bresp;
  input m_axil_arready;
  output m_axil_arvalid;
  output [19:0]m_axil_araddr;
  output [2:0]m_axil_arprot;
  output m_axil_rready;
  input m_axil_rvalid;
  input [31:0]m_axil_rdata;
  input [1:0]m_axil_rresp;
  output s_axil_awready;
  input s_axil_awvalid;
  input [19:0]s_axil_awaddr;
  input [2:0]s_axil_awprot;
  output s_axil_wready;
  input s_axil_wvalid;
  input [31:0]s_axil_wdata;
  input [3:0]s_axil_wstrb;
  input s_axil_bready;
  output s_axil_bvalid;
  output [1:0]s_axil_bresp;
  output s_axil_arready;
  input s_axil_arvalid;
  input [19:0]s_axil_araddr;
  input [2:0]s_axil_arprot;
  input s_axil_rready;
  output s_axil_rvalid;
  output [31:0]s_axil_rdata;
  output [1:0]s_axil_rresp;
  output ctrl_axil_awready;
  input ctrl_axil_awvalid;
  input [4:0]ctrl_axil_awaddr;
  input [2:0]ctrl_axil_awprot;
  output ctrl_axil_wready;
  input ctrl_axil_wvalid;
  input [31:0]ctrl_axil_wdata;
  input [3:0]ctrl_axil_wstrb;
  input ctrl_axil_bready;
  output ctrl_axil_bvalid;
  output [1:0]ctrl_axil_bresp;
  output ctrl_axil_arready;
  input ctrl_axil_arvalid;
  input [4:0]ctrl_axil_araddr;
  input [2:0]ctrl_axil_arprot;
  input ctrl_axil_rready;
  output ctrl_axil_rvalid;
  output [31:0]ctrl_axil_rdata;
  output [1:0]ctrl_axil_rresp;
endmodule
