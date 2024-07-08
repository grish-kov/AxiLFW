// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:procedural:1.0
// IP Revision: 7

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_procedural_0_3 (
  i_clk,
  i_resetn,
  s_tdata,
  s_tvalid,
  s_tlast,
  s_axil_awready,
  s_axil_awvalid,
  s_axil_awaddr,
  s_axil_awprot,
  s_axil_wready,
  s_axil_wvalid,
  s_axil_wdata,
  s_axil_wstrb,
  s_axil_bready,
  s_axil_bvalid,
  s_axil_bresp,
  s_axil_arready,
  s_axil_arvalid,
  s_axil_araddr,
  s_axil_arprot,
  s_axil_rready,
  s_axil_rvalid,
  s_axil_rdata,
  s_axil_rresp
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF s:s_axil, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *)
input wire i_resetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TDATA" *)
input wire [31 : 0] s_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TVALID" *)
input wire s_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TLAST" *)
input wire s_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *)
output wire s_axil_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *)
input wire s_axil_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *)
input wire [7 : 0] s_axil_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWPROT" *)
input wire [2 : 0] s_axil_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *)
output wire s_axil_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *)
input wire s_axil_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *)
input wire [63 : 0] s_axil_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *)
input wire [7 : 0] s_axil_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *)
input wire s_axil_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *)
output wire s_axil_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *)
output wire [1 : 0] s_axil_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *)
output wire s_axil_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *)
input wire s_axil_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *)
input wire [7 : 0] s_axil_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARPROT" *)
input wire [2 : 0] s_axil_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *)
input wire s_axil_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *)
output wire s_axil_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *)
output wire [63 : 0] s_axil_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil, DATA_WIDTH 64, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *)
output wire [1 : 0] s_axil_rresp;

  procedural #(
    .G_BYT(4),
    .G_BIT_WIDTH(32),
    .G_MAX_MIN_MODS(2),
    .G_MEM_ADDR_WIDTH(5),
    .G_MODS(4),
    .G_OUT_DATA(32),
    .G_AXIL_ADDR_W(8),
    .G_AXIL_DATA_W(64),
    .G_CNT_W(2),
    .G_INDX_WIDTH(10)
  ) inst (
    .i_clk(i_clk),
    .i_resetn(i_resetn),
    .s_tdata(s_tdata),
    .s_tvalid(s_tvalid),
    .s_tlast(s_tlast),
    .s_axil_awready(s_axil_awready),
    .s_axil_awvalid(s_axil_awvalid),
    .s_axil_awaddr(s_axil_awaddr),
    .s_axil_awprot(s_axil_awprot),
    .s_axil_wready(s_axil_wready),
    .s_axil_wvalid(s_axil_wvalid),
    .s_axil_wdata(s_axil_wdata),
    .s_axil_wstrb(s_axil_wstrb),
    .s_axil_bready(s_axil_bready),
    .s_axil_bvalid(s_axil_bvalid),
    .s_axil_bresp(s_axil_bresp),
    .s_axil_arready(s_axil_arready),
    .s_axil_arvalid(s_axil_arvalid),
    .s_axil_araddr(s_axil_araddr),
    .s_axil_arprot(s_axil_arprot),
    .s_axil_rready(s_axil_rready),
    .s_axil_rvalid(s_axil_rvalid),
    .s_axil_rdata(s_axil_rdata),
    .s_axil_rresp(s_axil_rresp)
  );
endmodule
