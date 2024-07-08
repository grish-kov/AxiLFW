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


// IP VLNV: user.org:user:axil_fw:1.0
// IP Revision: 10

(* X_CORE_INFO = "axil_fw,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "system_axil_fw_0_0,axil_fw,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_axil_fw_0_0 (
  i_clk,
  aresetn,
  i_len,
  m_axil_awready,
  m_axil_awvalid,
  m_axil_awaddr,
  m_axil_awprot,
  m_axil_wready,
  m_axil_wvalid,
  m_axil_wdata,
  m_axil_wstrb,
  m_axil_bready,
  m_axil_bvalid,
  m_axil_bresp,
  m_axil_arready,
  m_axil_arvalid,
  m_axil_araddr,
  m_axil_arprot,
  m_axil_rready,
  m_axil_rvalid,
  m_axil_rdata,
  m_axil_rresp,
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
  s_axil_rresp,
  ctrl_axil_awready,
  ctrl_axil_awvalid,
  ctrl_axil_awaddr,
  ctrl_axil_awprot,
  ctrl_axil_wready,
  ctrl_axil_wvalid,
  ctrl_axil_wdata,
  ctrl_axil_wstrb,
  ctrl_axil_bready,
  ctrl_axil_bvalid,
  ctrl_axil_bresp,
  ctrl_axil_arready,
  ctrl_axil_arvalid,
  ctrl_axil_araddr,
  ctrl_axil_arprot,
  ctrl_axil_rready,
  ctrl_axil_rvalid,
  ctrl_axil_rdata,
  ctrl_axil_rresp
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF ctrl_axil:m_axil:s_axil, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
input wire [9 : 0] i_len;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil AWREADY" *)
input wire m_axil_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil AWVALID" *)
output wire m_axil_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil AWADDR" *)
output wire [19 : 0] m_axil_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil AWPROT" *)
output wire [2 : 0] m_axil_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil WREADY" *)
input wire m_axil_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil WVALID" *)
output wire m_axil_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil WDATA" *)
output wire [31 : 0] m_axil_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil WSTRB" *)
output wire [3 : 0] m_axil_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil BREADY" *)
output wire m_axil_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil BVALID" *)
input wire m_axil_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil BRESP" *)
input wire [1 : 0] m_axil_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil ARREADY" *)
input wire m_axil_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil ARVALID" *)
output wire m_axil_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil ARADDR" *)
output wire [19 : 0] m_axil_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil ARPROT" *)
output wire [2 : 0] m_axil_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil RREADY" *)
output wire m_axil_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil RVALID" *)
input wire m_axil_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil RDATA" *)
input wire [31 : 0] m_axil_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_T\
HREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil RRESP" *)
input wire [1 : 0] m_axil_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *)
output wire s_axil_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *)
input wire s_axil_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *)
input wire [19 : 0] s_axil_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWPROT" *)
input wire [2 : 0] s_axil_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *)
output wire s_axil_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *)
input wire s_axil_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *)
input wire [31 : 0] s_axil_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *)
input wire [3 : 0] s_axil_wstrb;
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
input wire [19 : 0] s_axil_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARPROT" *)
input wire [2 : 0] s_axil_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *)
input wire s_axil_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *)
output wire s_axil_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *)
output wire [31 : 0] s_axil_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, NUM_READ_THREADS 4, NUM_WRITE_T\
HREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *)
output wire [1 : 0] s_axil_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil AWREADY" *)
output wire ctrl_axil_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil AWVALID" *)
input wire ctrl_axil_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil AWADDR" *)
input wire [4 : 0] ctrl_axil_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil AWPROT" *)
input wire [2 : 0] ctrl_axil_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil WREADY" *)
output wire ctrl_axil_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil WVALID" *)
input wire ctrl_axil_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil WDATA" *)
input wire [31 : 0] ctrl_axil_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil WSTRB" *)
input wire [3 : 0] ctrl_axil_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil BREADY" *)
input wire ctrl_axil_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil BVALID" *)
output wire ctrl_axil_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil BRESP" *)
output wire [1 : 0] ctrl_axil_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil ARREADY" *)
output wire ctrl_axil_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil ARVALID" *)
input wire ctrl_axil_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil ARADDR" *)
input wire [4 : 0] ctrl_axil_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil ARPROT" *)
input wire [2 : 0] ctrl_axil_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil RREADY" *)
input wire ctrl_axil_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil RVALID" *)
output wire ctrl_axil_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil RDATA" *)
output wire [31 : 0] ctrl_axil_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE\
_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil RRESP" *)
output wire [1 : 0] ctrl_axil_rresp;

  axil_fw #(
    .G_CNT_WDT(4),
    .G_ADDR_W(20),
    .G_DATA_W(32),
    .G_WD_WDT(10)
  ) inst (
    .i_clk(i_clk),
    .aresetn(aresetn),
    .i_len(i_len),
    .m_axil_awready(m_axil_awready),
    .m_axil_awvalid(m_axil_awvalid),
    .m_axil_awaddr(m_axil_awaddr),
    .m_axil_awprot(m_axil_awprot),
    .m_axil_wready(m_axil_wready),
    .m_axil_wvalid(m_axil_wvalid),
    .m_axil_wdata(m_axil_wdata),
    .m_axil_wstrb(m_axil_wstrb),
    .m_axil_bready(m_axil_bready),
    .m_axil_bvalid(m_axil_bvalid),
    .m_axil_bresp(m_axil_bresp),
    .m_axil_arready(m_axil_arready),
    .m_axil_arvalid(m_axil_arvalid),
    .m_axil_araddr(m_axil_araddr),
    .m_axil_arprot(m_axil_arprot),
    .m_axil_rready(m_axil_rready),
    .m_axil_rvalid(m_axil_rvalid),
    .m_axil_rdata(m_axil_rdata),
    .m_axil_rresp(m_axil_rresp),
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
    .s_axil_rresp(s_axil_rresp),
    .ctrl_axil_awready(ctrl_axil_awready),
    .ctrl_axil_awvalid(ctrl_axil_awvalid),
    .ctrl_axil_awaddr(ctrl_axil_awaddr),
    .ctrl_axil_awprot(ctrl_axil_awprot),
    .ctrl_axil_wready(ctrl_axil_wready),
    .ctrl_axil_wvalid(ctrl_axil_wvalid),
    .ctrl_axil_wdata(ctrl_axil_wdata),
    .ctrl_axil_wstrb(ctrl_axil_wstrb),
    .ctrl_axil_bready(ctrl_axil_bready),
    .ctrl_axil_bvalid(ctrl_axil_bvalid),
    .ctrl_axil_bresp(ctrl_axil_bresp),
    .ctrl_axil_arready(ctrl_axil_arready),
    .ctrl_axil_arvalid(ctrl_axil_arvalid),
    .ctrl_axil_araddr(ctrl_axil_araddr),
    .ctrl_axil_arprot(ctrl_axil_arprot),
    .ctrl_axil_rready(ctrl_axil_rready),
    .ctrl_axil_rvalid(ctrl_axil_rvalid),
    .ctrl_axil_rdata(ctrl_axil_rdata),
    .ctrl_axil_rresp(ctrl_axil_rresp)
  );
endmodule
