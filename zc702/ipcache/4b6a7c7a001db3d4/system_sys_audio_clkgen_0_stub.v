// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Jun  4 15:13:46 2024
// Host        : manjaro running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/user/Projects/OEM/adi/hdl/projects/adv7511/zc702/adv7511_zc702.gen/sources_1/bd/system/ip/system_sys_audio_clkgen_0/system_sys_audio_clkgen_0_stub.v
// Design      : system_sys_audio_clkgen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module system_sys_audio_clkgen_0(clk_out1, resetn, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,resetn,clk_in1" */;
  output clk_out1;
  input resetn;
  input clk_in1;
endmodule
