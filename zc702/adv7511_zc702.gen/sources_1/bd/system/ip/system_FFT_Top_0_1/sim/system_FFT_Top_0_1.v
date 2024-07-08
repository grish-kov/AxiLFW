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


// IP VLNV: user.org:user:FFT_Top:1.0
// IP Revision: 3

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_FFT_Top_0_1 (
  i_resetn,
  i_clk,
  s_tvalid,
  s_tdata,
  s_tlast,
  m_tvalid,
  m_tlast,
  m_tdata
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_resetn RST" *)
input wire i_resetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_resetn, ASSOCIATED_BUSIF m:s, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TVALID" *)
input wire s_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TDATA" *)
input wire [31 : 0] s_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s TLAST" *)
input wire s_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m TVALID" *)
output wire m_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m TLAST" *)
output wire m_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m TDATA" *)
output wire [63 : 0] m_tdata;

  FFT_Top inst (
    .i_resetn(i_resetn),
    .i_clk(i_clk),
    .s_tvalid(s_tvalid),
    .s_tdata(s_tdata),
    .s_tlast(s_tlast),
    .m_tvalid(m_tvalid),
    .m_tlast(m_tlast),
    .m_tdata(m_tdata)
  );
endmodule
