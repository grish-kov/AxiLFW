// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Jul  3 15:10:11 2024
// Host        : Griffon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ procedural_0_stub.v
// Design      : procedural_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "procedural,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, i_resetn, s_tdata, s_tvalid, s_tlast, 
  s_axil_awready, s_axil_awvalid, s_axil_awaddr, s_axil_awprot, s_axil_wready, s_axil_wvalid, 
  s_axil_wdata, s_axil_wstrb, s_axil_bready, s_axil_bvalid, s_axil_bresp, s_axil_arready, 
  s_axil_arvalid, s_axil_araddr, s_axil_arprot, s_axil_rready, s_axil_rvalid, s_axil_rdata, 
  s_axil_rresp)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_resetn,s_tdata[15:0],s_tvalid,s_tlast,s_axil_awready,s_axil_awvalid,s_axil_awaddr[7:0],s_axil_awprot[2:0],s_axil_wready,s_axil_wvalid,s_axil_wdata[63:0],s_axil_wstrb[7:0],s_axil_bready,s_axil_bvalid,s_axil_bresp[1:0],s_axil_arready,s_axil_arvalid,s_axil_araddr[7:0],s_axil_arprot[2:0],s_axil_rready,s_axil_rvalid,s_axil_rdata[63:0],s_axil_rresp[1:0]" */;
  input i_clk;
  input i_resetn;
  input [15:0]s_tdata;
  input s_tvalid;
  input s_tlast;
  output s_axil_awready;
  input s_axil_awvalid;
  input [7:0]s_axil_awaddr;
  input [2:0]s_axil_awprot;
  output s_axil_wready;
  input s_axil_wvalid;
  input [63:0]s_axil_wdata;
  input [7:0]s_axil_wstrb;
  input s_axil_bready;
  output s_axil_bvalid;
  output [1:0]s_axil_bresp;
  output s_axil_arready;
  input s_axil_arvalid;
  input [7:0]s_axil_araddr;
  input [2:0]s_axil_arprot;
  input s_axil_rready;
  output s_axil_rvalid;
  output [63:0]s_axil_rdata;
  output [1:0]s_axil_rresp;
endmodule
