//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_d548.bd
//Design : bd_d548
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_d548,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_d548,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "system_system_ila_3_0.hwdef" *) 
module bd_d548
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXIS_tdata,
    SLOT_2_AXIS_tlast,
    SLOT_2_AXIS_tvalid,
    clk,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, FREQ_HZ 200000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]SLOT_0_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *) input SLOT_0_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *) input SLOT_0_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, FREQ_HZ 200000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]SLOT_1_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *) input SLOT_1_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *) input SLOT_1_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXIS, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, FREQ_HZ 200000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]SLOT_2_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TLAST" *) input SLOT_2_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_2_AXIS TVALID" *) input SLOT_2_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN system_sys_ps7_0_FCLK_CLK1, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [63:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TVALID;
  wire [31:0]Conn2_TDATA;
  wire Conn2_TLAST;
  wire Conn2_TVALID;
  wire [31:0]Conn_TDATA;
  wire Conn_TLAST;
  wire Conn_TVALID;
  wire clk_1;
  wire [31:0]net_slot_0_axis_tdata;
  wire net_slot_0_axis_tlast;
  wire net_slot_0_axis_tvalid;
  wire [63:0]net_slot_1_axis_tdata;
  wire net_slot_1_axis_tlast;
  wire net_slot_1_axis_tvalid;
  wire [31:0]net_slot_2_axis_tdata;
  wire net_slot_2_axis_tlast;
  wire net_slot_2_axis_tvalid;
  wire resetn_1;

  assign Conn1_TDATA = SLOT_1_AXIS_tdata[63:0];
  assign Conn1_TLAST = SLOT_1_AXIS_tlast;
  assign Conn1_TVALID = SLOT_1_AXIS_tvalid;
  assign Conn2_TDATA = SLOT_2_AXIS_tdata[31:0];
  assign Conn2_TLAST = SLOT_2_AXIS_tlast;
  assign Conn2_TVALID = SLOT_2_AXIS_tvalid;
  assign Conn_TDATA = SLOT_0_AXIS_tdata[31:0];
  assign Conn_TLAST = SLOT_0_AXIS_tlast;
  assign Conn_TVALID = SLOT_0_AXIS_tvalid;
  assign clk_1 = clk;
  assign resetn_1 = resetn;
  bd_d548_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axis_tdata(net_slot_0_axis_tdata),
        .m_slot_0_axis_tlast(net_slot_0_axis_tlast),
        .m_slot_0_axis_tvalid(net_slot_0_axis_tvalid),
        .m_slot_1_axis_tdata(net_slot_1_axis_tdata),
        .m_slot_1_axis_tlast(net_slot_1_axis_tlast),
        .m_slot_1_axis_tvalid(net_slot_1_axis_tvalid),
        .m_slot_2_axis_tdata(net_slot_2_axis_tdata),
        .m_slot_2_axis_tlast(net_slot_2_axis_tlast),
        .m_slot_2_axis_tvalid(net_slot_2_axis_tvalid),
        .slot_0_axis_tdata(Conn_TDATA),
        .slot_0_axis_tlast(Conn_TLAST),
        .slot_0_axis_tvalid(Conn_TVALID),
        .slot_1_axis_tdata(Conn1_TDATA),
        .slot_1_axis_tlast(Conn1_TLAST),
        .slot_1_axis_tvalid(Conn1_TVALID),
        .slot_2_axis_tdata(Conn2_TDATA),
        .slot_2_axis_tlast(Conn2_TLAST),
        .slot_2_axis_tvalid(Conn2_TVALID));
  bd_d548_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(net_slot_0_axis_tdata),
        .probe1(net_slot_0_axis_tvalid),
        .probe2(net_slot_0_axis_tlast),
        .probe3(net_slot_1_axis_tdata),
        .probe4(net_slot_1_axis_tvalid),
        .probe5(net_slot_1_axis_tlast),
        .probe6(net_slot_2_axis_tdata),
        .probe7(net_slot_2_axis_tvalid),
        .probe8(net_slot_2_axis_tlast));
endmodule