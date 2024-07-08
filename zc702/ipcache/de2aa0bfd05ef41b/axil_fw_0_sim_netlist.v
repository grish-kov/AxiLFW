// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Jul  2 14:20:49 2024
// Host        : Griffon running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axil_fw_0_sim_netlist.v
// Design      : axil_fw_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_ADDR_W = "16'sb0000000000000101" *) (* G_ADDR_W = "16'sb0000000000010100" *) (* G_CNT_WDT = "16'sb0000000000000100" *) 
(* G_CTRL_ADDR_W = "16'sb0000000000000101" *) (* G_DATA_W = "16'sb0000000000100000" *) (* G_RD_DECERR_ADDR = "5'b10000" *) 
(* G_RD_SLVERR_ADDR = "5'b01100" *) (* G_RD_WD_ERR_ADDR = "5'b10100" *) (* G_RG_ST_ERR_ADDR = "5'b11000" *) 
(* G_WD_WDT = "16'sb0000000000001000" *) (* G_WR_DECERR_ADDR = "5'b00100" *) (* G_WR_SLVERR_ADDR = "5'b00000" *) 
(* G_WR_WD_ERR_ADDR = "5'b01000" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw
   (i_clk,
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
    ctrl_axil_rresp);
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

  wire \<const0> ;
  wire [7:0]C_WD_TIM;
  wire \C_WD_TIM[7]_i_2_n_0 ;
  wire RADDR;
  wire \RADDR_reg_n_0_[0] ;
  wire \RADDR_reg_n_0_[1] ;
  wire \RADDR_reg_n_0_[2] ;
  wire \RADDR_reg_n_0_[3] ;
  wire \RADDR_reg_n_0_[4] ;
  wire aresetn;
  wire clear;
  wire [4:0]ctrl_axil_araddr;
  wire ctrl_axil_arready;
  wire ctrl_axil_arready_i_1_n_0;
  wire ctrl_axil_arvalid;
  wire [29:0]\^ctrl_axil_rdata ;
  wire \ctrl_axil_rdata[0]_i_2_n_0 ;
  wire \ctrl_axil_rdata[0]_i_3_n_0 ;
  wire \ctrl_axil_rdata[1]_i_2_n_0 ;
  wire \ctrl_axil_rdata[1]_i_3_n_0 ;
  wire \ctrl_axil_rdata[29]_i_1_n_0 ;
  wire \ctrl_axil_rdata[29]_i_2_n_0 ;
  wire \ctrl_axil_rdata[29]_i_3_n_0 ;
  wire \ctrl_axil_rdata[2]_i_2_n_0 ;
  wire \ctrl_axil_rdata[2]_i_3_n_0 ;
  wire \ctrl_axil_rdata[3]_i_2_n_0 ;
  wire \ctrl_axil_rdata[3]_i_3_n_0 ;
  wire \ctrl_axil_rdata[4]_i_2_n_0 ;
  wire \ctrl_axil_rdata[4]_i_3_n_0 ;
  wire \ctrl_axil_rdata_reg[0]_i_1_n_0 ;
  wire \ctrl_axil_rdata_reg[1]_i_1_n_0 ;
  wire \ctrl_axil_rdata_reg[2]_i_1_n_0 ;
  wire \ctrl_axil_rdata_reg[3]_i_1_n_0 ;
  wire \ctrl_axil_rdata_reg[4]_i_1_n_0 ;
  wire ctrl_axil_rready;
  wire [0:0]\^ctrl_axil_rresp ;
  wire \ctrl_axil_rresp[1]_i_1_n_0 ;
  wire \ctrl_axil_rresp[1]_i_2_n_0 ;
  wire ctrl_axil_rvalid;
  wire ctrl_axil_rvalid_i_1_n_0;
  wire i_clk;
  wire [7:0]i_len;
  wire m_axil_arready;
  wire m_axil_awready;
  wire [1:0]m_axil_bresp;
  wire m_axil_bvalid;
  wire [31:0]m_axil_rdata;
  wire [1:0]m_axil_rresp;
  wire m_axil_rvalid;
  wire m_axil_wready;
  wire p_0_in;
  wire [4:0]p_0_in__0;
  wire [4:0]p_0_in__1;
  wire [4:0]p_0_in__2;
  wire [4:0]p_0_in__3;
  wire [4:0]p_0_in__4;
  wire [7:0]p_1_in;
  wire \q_bresp[0]_i_1_n_0 ;
  wire \q_bresp[1]_i_1_n_0 ;
  wire \q_bresp[1]_i_2_n_0 ;
  wire \q_bresp_reg_n_0_[0] ;
  wire \q_bresp_reg_n_0_[1] ;
  wire q_bvalid_i_1_n_0;
  wire q_bvalid_reg_n_0;
  wire q_r_decerr_cnt;
  wire [4:0]q_r_decerr_cnt_reg;
  wire q_r_ena_set;
  wire q_r_ena_set0;
  wire q_r_ena_set1;
  wire q_r_slverr_cnt;
  wire [4:0]q_r_slverr_cnt_reg;
  wire [7:0]q_r_wd_cnt;
  wire \q_r_wd_cnt[0]_i_1_n_0 ;
  wire \q_r_wd_cnt[1]_i_1_n_0 ;
  wire \q_r_wd_cnt[2]_i_1_n_0 ;
  wire \q_r_wd_cnt[3]_i_1_n_0 ;
  wire \q_r_wd_cnt[3]_i_2_n_0 ;
  wire \q_r_wd_cnt[4]_i_1_n_0 ;
  wire \q_r_wd_cnt[5]_i_1_n_0 ;
  wire \q_r_wd_cnt[5]_i_2_n_0 ;
  wire \q_r_wd_cnt[6]_i_1_n_0 ;
  wire \q_r_wd_cnt[7]_i_1_n_0 ;
  wire \q_r_wd_cnt[7]_i_2_n_0 ;
  wire \q_r_wd_cnt[7]_i_3_n_0 ;
  wire \q_r_wd_cnt[7]_i_4_n_0 ;
  wire \q_r_wd_cnt[7]_i_5_n_0 ;
  wire q_r_wd_ena_i_1_n_0;
  wire q_r_wd_ena_reg_n_0;
  wire \q_r_wd_err_cnt[0]_i_1_n_0 ;
  wire \q_r_wd_err_cnt[1]_i_1_n_0 ;
  wire \q_r_wd_err_cnt[2]_i_1_n_0 ;
  wire \q_r_wd_err_cnt[3]_i_1_n_0 ;
  wire \q_r_wd_err_cnt[3]_i_2_n_0 ;
  wire \q_r_wd_err_cnt[4]_i_1_n_0 ;
  wire \q_r_wd_err_cnt[4]_i_2_n_0 ;
  wire [4:0]q_r_wd_err_cnt_reg;
  wire q_rena_i_1_n_0;
  wire q_rena_reg_n_0;
  wire \q_rresp[0]_i_1_n_0 ;
  wire \q_rresp[1]_i_1_n_0 ;
  wire \q_rresp[1]_i_2_n_0 ;
  wire \q_rresp_reg_n_0_[0] ;
  wire \q_rresp_reg_n_0_[1] ;
  wire q_rvalid_i_1_n_0;
  wire q_rvalid_reg_n_0;
  wire q_w_decerr_cnt;
  wire [4:0]q_w_decerr_cnt_reg;
  wire q_w_ena_set;
  wire q_w_ena_set0;
  wire q_w_slverr_cnt;
  wire [4:0]q_w_slverr_cnt_reg;
  wire [7:0]q_w_wd_cnt;
  wire q_w_wd_cnt2;
  wire \q_w_wd_cnt[3]_i_2_n_0 ;
  wire \q_w_wd_cnt[5]_i_2_n_0 ;
  wire \q_w_wd_cnt[7]_i_1_n_0 ;
  wire \q_w_wd_cnt[7]_i_3_n_0 ;
  wire \q_w_wd_cnt[7]_i_4_n_0 ;
  wire \q_w_wd_cnt[7]_i_5_n_0 ;
  wire q_w_wd_ena0;
  wire q_w_wd_ena_i_1_n_0;
  wire q_w_wd_ena_reg_n_0;
  wire [4:0]q_w_wd_err_cnt_reg;
  wire [19:0]s_axil_araddr;
  wire s_axil_arvalid;
  wire [19:0]s_axil_awaddr;
  wire s_axil_awvalid;
  wire s_axil_bready;
  wire s_axil_bvalid;
  wire s_axil_rready;
  wire s_axil_rvalid;
  wire [31:0]s_axil_wdata;
  wire [3:0]s_axil_wstrb;
  wire s_axil_wvalid;

  assign ctrl_axil_awready = \<const0> ;
  assign ctrl_axil_bresp[1] = \<const0> ;
  assign ctrl_axil_bresp[0] = \<const0> ;
  assign ctrl_axil_bvalid = \<const0> ;
  assign ctrl_axil_rdata[31] = \<const0> ;
  assign ctrl_axil_rdata[30] = \<const0> ;
  assign ctrl_axil_rdata[29:0] = \^ctrl_axil_rdata [29:0];
  assign ctrl_axil_rresp[1] = \^ctrl_axil_rresp [0];
  assign ctrl_axil_rresp[0] = \^ctrl_axil_rresp [0];
  assign ctrl_axil_wready = \<const0> ;
  assign m_axil_araddr[19:0] = s_axil_araddr;
  assign m_axil_arprot[2] = \<const0> ;
  assign m_axil_arprot[1] = \<const0> ;
  assign m_axil_arprot[0] = \<const0> ;
  assign m_axil_arvalid = s_axil_arvalid;
  assign m_axil_awaddr[19:0] = s_axil_awaddr;
  assign m_axil_awprot[2] = \<const0> ;
  assign m_axil_awprot[1] = \<const0> ;
  assign m_axil_awprot[0] = \<const0> ;
  assign m_axil_awvalid = s_axil_awvalid;
  assign m_axil_bready = s_axil_bready;
  assign m_axil_rready = s_axil_rready;
  assign m_axil_wdata[31:0] = s_axil_wdata;
  assign m_axil_wstrb[3:0] = s_axil_wstrb;
  assign m_axil_wvalid = s_axil_wvalid;
  assign s_axil_arready = m_axil_arready;
  assign s_axil_awready = m_axil_awready;
  assign s_axil_bresp[1] = \<const0> ;
  assign s_axil_bresp[0] = \<const0> ;
  assign s_axil_rdata[31:0] = m_axil_rdata;
  assign s_axil_rresp[1] = \<const0> ;
  assign s_axil_rresp[0] = \<const0> ;
  assign s_axil_wready = m_axil_wready;
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \C_WD_TIM[7]_i_1 
       (.I0(i_len[3]),
        .I1(i_len[4]),
        .I2(i_len[1]),
        .I3(i_len[2]),
        .I4(\C_WD_TIM[7]_i_2_n_0 ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \C_WD_TIM[7]_i_2 
       (.I0(i_len[6]),
        .I1(i_len[5]),
        .I2(i_len[0]),
        .I3(i_len[7]),
        .O(\C_WD_TIM[7]_i_2_n_0 ));
  FDRE \C_WD_TIM_reg[0] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_len[0]),
        .Q(C_WD_TIM[0]),
        .R(1'b0));
  FDRE \C_WD_TIM_reg[1] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_len[1]),
        .Q(C_WD_TIM[1]),
        .R(1'b0));
  FDRE \C_WD_TIM_reg[2] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_len[2]),
        .Q(C_WD_TIM[2]),
        .R(1'b0));
  FDRE \C_WD_TIM_reg[3] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_len[3]),
        .Q(C_WD_TIM[3]),
        .R(1'b0));
  FDRE \C_WD_TIM_reg[4] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_len[4]),
        .Q(C_WD_TIM[4]),
        .R(1'b0));
  FDRE \C_WD_TIM_reg[5] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_len[5]),
        .Q(C_WD_TIM[5]),
        .R(1'b0));
  FDRE \C_WD_TIM_reg[6] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_len[6]),
        .Q(C_WD_TIM[6]),
        .R(1'b0));
  FDRE \C_WD_TIM_reg[7] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_len[7]),
        .Q(C_WD_TIM[7]),
        .R(1'b0));
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h80)) 
    \RADDR[4]_i_1 
       (.I0(aresetn),
        .I1(ctrl_axil_arvalid),
        .I2(ctrl_axil_arready),
        .O(RADDR));
  FDRE \RADDR_reg[0] 
       (.C(i_clk),
        .CE(RADDR),
        .D(ctrl_axil_araddr[0]),
        .Q(\RADDR_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \RADDR_reg[1] 
       (.C(i_clk),
        .CE(RADDR),
        .D(ctrl_axil_araddr[1]),
        .Q(\RADDR_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \RADDR_reg[2] 
       (.C(i_clk),
        .CE(RADDR),
        .D(ctrl_axil_araddr[2]),
        .Q(\RADDR_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \RADDR_reg[3] 
       (.C(i_clk),
        .CE(RADDR),
        .D(ctrl_axil_araddr[3]),
        .Q(\RADDR_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \RADDR_reg[4] 
       (.C(i_clk),
        .CE(RADDR),
        .D(ctrl_axil_araddr[4]),
        .Q(\RADDR_reg_n_0_[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    ctrl_axil_arready_i_1
       (.I0(ctrl_axil_arvalid),
        .I1(ctrl_axil_arready),
        .I2(aresetn),
        .O(ctrl_axil_arready_i_1_n_0));
  FDRE ctrl_axil_arready_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(ctrl_axil_arready_i_1_n_0),
        .Q(ctrl_axil_arready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \ctrl_axil_rdata[0]_i_2 
       (.I0(q_w_wd_err_cnt_reg[0]),
        .I1(\RADDR_reg_n_0_[3] ),
        .I2(q_r_decerr_cnt_reg[0]),
        .I3(\RADDR_reg_n_0_[4] ),
        .I4(q_w_slverr_cnt_reg[0]),
        .O(\ctrl_axil_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ctrl_axil_rdata[0]_i_3 
       (.I0(q_w_slverr_cnt_reg[0]),
        .I1(\RADDR_reg_n_0_[4] ),
        .I2(q_r_slverr_cnt_reg[0]),
        .I3(\RADDR_reg_n_0_[3] ),
        .I4(q_w_decerr_cnt_reg[0]),
        .O(\ctrl_axil_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \ctrl_axil_rdata[1]_i_2 
       (.I0(q_w_wd_err_cnt_reg[1]),
        .I1(\RADDR_reg_n_0_[3] ),
        .I2(q_r_decerr_cnt_reg[1]),
        .I3(\RADDR_reg_n_0_[4] ),
        .I4(q_w_slverr_cnt_reg[1]),
        .O(\ctrl_axil_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ctrl_axil_rdata[1]_i_3 
       (.I0(q_w_slverr_cnt_reg[1]),
        .I1(\RADDR_reg_n_0_[4] ),
        .I2(q_r_slverr_cnt_reg[1]),
        .I3(\RADDR_reg_n_0_[3] ),
        .I4(q_w_decerr_cnt_reg[1]),
        .O(\ctrl_axil_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h01110000)) 
    \ctrl_axil_rdata[29]_i_1 
       (.I0(\RADDR_reg_n_0_[0] ),
        .I1(\RADDR_reg_n_0_[1] ),
        .I2(\RADDR_reg_n_0_[3] ),
        .I3(\RADDR_reg_n_0_[4] ),
        .I4(\ctrl_axil_rdata[29]_i_3_n_0 ),
        .O(\ctrl_axil_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002AAA)) 
    \ctrl_axil_rdata[29]_i_2 
       (.I0(\ctrl_axil_rdata[29]_i_3_n_0 ),
        .I1(\RADDR_reg_n_0_[4] ),
        .I2(\RADDR_reg_n_0_[3] ),
        .I3(\RADDR_reg_n_0_[2] ),
        .I4(\RADDR_reg_n_0_[1] ),
        .I5(\RADDR_reg_n_0_[0] ),
        .O(\ctrl_axil_rdata[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ctrl_axil_rdata[29]_i_3 
       (.I0(aresetn),
        .I1(q_rena_reg_n_0),
        .O(\ctrl_axil_rdata[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \ctrl_axil_rdata[2]_i_2 
       (.I0(q_w_wd_err_cnt_reg[2]),
        .I1(\RADDR_reg_n_0_[3] ),
        .I2(q_r_decerr_cnt_reg[2]),
        .I3(\RADDR_reg_n_0_[4] ),
        .I4(q_w_slverr_cnt_reg[2]),
        .O(\ctrl_axil_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ctrl_axil_rdata[2]_i_3 
       (.I0(q_w_slverr_cnt_reg[2]),
        .I1(\RADDR_reg_n_0_[4] ),
        .I2(q_r_slverr_cnt_reg[2]),
        .I3(\RADDR_reg_n_0_[3] ),
        .I4(q_w_decerr_cnt_reg[2]),
        .O(\ctrl_axil_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \ctrl_axil_rdata[3]_i_2 
       (.I0(q_w_wd_err_cnt_reg[3]),
        .I1(\RADDR_reg_n_0_[3] ),
        .I2(q_r_decerr_cnt_reg[3]),
        .I3(\RADDR_reg_n_0_[4] ),
        .I4(q_w_slverr_cnt_reg[3]),
        .O(\ctrl_axil_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ctrl_axil_rdata[3]_i_3 
       (.I0(q_w_slverr_cnt_reg[3]),
        .I1(\RADDR_reg_n_0_[4] ),
        .I2(q_r_slverr_cnt_reg[3]),
        .I3(\RADDR_reg_n_0_[3] ),
        .I4(q_w_decerr_cnt_reg[3]),
        .O(\ctrl_axil_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \ctrl_axil_rdata[4]_i_2 
       (.I0(q_w_wd_err_cnt_reg[4]),
        .I1(\RADDR_reg_n_0_[3] ),
        .I2(q_r_decerr_cnt_reg[4]),
        .I3(\RADDR_reg_n_0_[4] ),
        .I4(q_w_slverr_cnt_reg[4]),
        .O(\ctrl_axil_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ctrl_axil_rdata[4]_i_3 
       (.I0(q_w_slverr_cnt_reg[4]),
        .I1(\RADDR_reg_n_0_[4] ),
        .I2(q_r_slverr_cnt_reg[4]),
        .I3(\RADDR_reg_n_0_[3] ),
        .I4(q_w_decerr_cnt_reg[4]),
        .O(\ctrl_axil_rdata[4]_i_3_n_0 ));
  FDRE \ctrl_axil_rdata_reg[0] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(\ctrl_axil_rdata_reg[0]_i_1_n_0 ),
        .Q(\^ctrl_axil_rdata [0]),
        .R(1'b0));
  MUXF7 \ctrl_axil_rdata_reg[0]_i_1 
       (.I0(\ctrl_axil_rdata[0]_i_2_n_0 ),
        .I1(\ctrl_axil_rdata[0]_i_3_n_0 ),
        .O(\ctrl_axil_rdata_reg[0]_i_1_n_0 ),
        .S(\RADDR_reg_n_0_[2] ));
  FDRE \ctrl_axil_rdata_reg[10] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_wd_err_cnt_reg[0]),
        .Q(\^ctrl_axil_rdata [10]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[11] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_wd_err_cnt_reg[1]),
        .Q(\^ctrl_axil_rdata [11]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[12] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_wd_err_cnt_reg[2]),
        .Q(\^ctrl_axil_rdata [12]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[13] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_wd_err_cnt_reg[3]),
        .Q(\^ctrl_axil_rdata [13]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[14] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_wd_err_cnt_reg[4]),
        .Q(\^ctrl_axil_rdata [14]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[15] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_slverr_cnt_reg[0]),
        .Q(\^ctrl_axil_rdata [15]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[16] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_slverr_cnt_reg[1]),
        .Q(\^ctrl_axil_rdata [16]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[17] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_slverr_cnt_reg[2]),
        .Q(\^ctrl_axil_rdata [17]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[18] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_slverr_cnt_reg[3]),
        .Q(\^ctrl_axil_rdata [18]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[19] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_slverr_cnt_reg[4]),
        .Q(\^ctrl_axil_rdata [19]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[1] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(\ctrl_axil_rdata_reg[1]_i_1_n_0 ),
        .Q(\^ctrl_axil_rdata [1]),
        .R(1'b0));
  MUXF7 \ctrl_axil_rdata_reg[1]_i_1 
       (.I0(\ctrl_axil_rdata[1]_i_2_n_0 ),
        .I1(\ctrl_axil_rdata[1]_i_3_n_0 ),
        .O(\ctrl_axil_rdata_reg[1]_i_1_n_0 ),
        .S(\RADDR_reg_n_0_[2] ));
  FDRE \ctrl_axil_rdata_reg[20] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_decerr_cnt_reg[0]),
        .Q(\^ctrl_axil_rdata [20]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[21] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_decerr_cnt_reg[1]),
        .Q(\^ctrl_axil_rdata [21]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[22] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_decerr_cnt_reg[2]),
        .Q(\^ctrl_axil_rdata [22]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[23] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_decerr_cnt_reg[3]),
        .Q(\^ctrl_axil_rdata [23]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[24] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_decerr_cnt_reg[4]),
        .Q(\^ctrl_axil_rdata [24]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[25] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_wd_err_cnt_reg[0]),
        .Q(\^ctrl_axil_rdata [25]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[26] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_wd_err_cnt_reg[1]),
        .Q(\^ctrl_axil_rdata [26]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[27] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_wd_err_cnt_reg[2]),
        .Q(\^ctrl_axil_rdata [27]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[28] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_wd_err_cnt_reg[3]),
        .Q(\^ctrl_axil_rdata [28]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[29] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_r_wd_err_cnt_reg[4]),
        .Q(\^ctrl_axil_rdata [29]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[2] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(\ctrl_axil_rdata_reg[2]_i_1_n_0 ),
        .Q(\^ctrl_axil_rdata [2]),
        .R(1'b0));
  MUXF7 \ctrl_axil_rdata_reg[2]_i_1 
       (.I0(\ctrl_axil_rdata[2]_i_2_n_0 ),
        .I1(\ctrl_axil_rdata[2]_i_3_n_0 ),
        .O(\ctrl_axil_rdata_reg[2]_i_1_n_0 ),
        .S(\RADDR_reg_n_0_[2] ));
  FDRE \ctrl_axil_rdata_reg[3] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(\ctrl_axil_rdata_reg[3]_i_1_n_0 ),
        .Q(\^ctrl_axil_rdata [3]),
        .R(1'b0));
  MUXF7 \ctrl_axil_rdata_reg[3]_i_1 
       (.I0(\ctrl_axil_rdata[3]_i_2_n_0 ),
        .I1(\ctrl_axil_rdata[3]_i_3_n_0 ),
        .O(\ctrl_axil_rdata_reg[3]_i_1_n_0 ),
        .S(\RADDR_reg_n_0_[2] ));
  FDRE \ctrl_axil_rdata_reg[4] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(\ctrl_axil_rdata_reg[4]_i_1_n_0 ),
        .Q(\^ctrl_axil_rdata [4]),
        .R(1'b0));
  MUXF7 \ctrl_axil_rdata_reg[4]_i_1 
       (.I0(\ctrl_axil_rdata[4]_i_2_n_0 ),
        .I1(\ctrl_axil_rdata[4]_i_3_n_0 ),
        .O(\ctrl_axil_rdata_reg[4]_i_1_n_0 ),
        .S(\RADDR_reg_n_0_[2] ));
  FDRE \ctrl_axil_rdata_reg[5] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_decerr_cnt_reg[0]),
        .Q(\^ctrl_axil_rdata [5]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[6] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_decerr_cnt_reg[1]),
        .Q(\^ctrl_axil_rdata [6]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[7] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_decerr_cnt_reg[2]),
        .Q(\^ctrl_axil_rdata [7]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[8] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_decerr_cnt_reg[3]),
        .Q(\^ctrl_axil_rdata [8]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  FDRE \ctrl_axil_rdata_reg[9] 
       (.C(i_clk),
        .CE(\ctrl_axil_rdata[29]_i_2_n_0 ),
        .D(q_w_decerr_cnt_reg[4]),
        .Q(\^ctrl_axil_rdata [9]),
        .R(\ctrl_axil_rdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hCAAA)) 
    \ctrl_axil_rresp[1]_i_1 
       (.I0(\^ctrl_axil_rresp ),
        .I1(\ctrl_axil_rresp[1]_i_2_n_0 ),
        .I2(aresetn),
        .I3(q_rena_reg_n_0),
        .O(\ctrl_axil_rresp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \ctrl_axil_rresp[1]_i_2 
       (.I0(\RADDR_reg_n_0_[0] ),
        .I1(\RADDR_reg_n_0_[1] ),
        .I2(\RADDR_reg_n_0_[2] ),
        .I3(\RADDR_reg_n_0_[3] ),
        .I4(\RADDR_reg_n_0_[4] ),
        .O(\ctrl_axil_rresp[1]_i_2_n_0 ));
  FDRE \ctrl_axil_rresp_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\ctrl_axil_rresp[1]_i_1_n_0 ),
        .Q(\^ctrl_axil_rresp ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5C00)) 
    ctrl_axil_rvalid_i_1
       (.I0(ctrl_axil_rready),
        .I1(q_rena_reg_n_0),
        .I2(ctrl_axil_rvalid),
        .I3(aresetn),
        .O(ctrl_axil_rvalid_i_1_n_0));
  FDRE ctrl_axil_rvalid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(ctrl_axil_rvalid_i_1_n_0),
        .Q(ctrl_axil_rvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q_bresp[0]_i_1 
       (.I0(m_axil_bresp[0]),
        .I1(\q_bresp[1]_i_2_n_0 ),
        .O(\q_bresp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \q_bresp[1]_i_1 
       (.I0(m_axil_bresp[1]),
        .I1(\q_bresp[1]_i_2_n_0 ),
        .I2(\q_w_wd_cnt[7]_i_5_n_0 ),
        .I3(\q_w_wd_cnt[5]_i_2_n_0 ),
        .O(\q_bresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q_bresp[1]_i_2 
       (.I0(m_axil_bvalid),
        .I1(s_axil_bready),
        .O(\q_bresp[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_bresp_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\q_bresp[0]_i_1_n_0 ),
        .Q(\q_bresp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_bresp_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\q_bresp[1]_i_1_n_0 ),
        .Q(\q_bresp_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88F88888)) 
    q_bvalid_i_1
       (.I0(q_bvalid_reg_n_0),
        .I1(q_w_wd_ena_reg_n_0),
        .I2(\q_w_wd_cnt[7]_i_5_n_0 ),
        .I3(\q_w_wd_cnt[5]_i_2_n_0 ),
        .I4(s_axil_bready),
        .O(q_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_bvalid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_bvalid_i_1_n_0),
        .Q(q_bvalid_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_decerr_cnt[0]_i_1 
       (.I0(q_r_decerr_cnt_reg[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_decerr_cnt[1]_i_1 
       (.I0(q_r_decerr_cnt_reg[1]),
        .I1(q_r_decerr_cnt_reg[0]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \q_r_decerr_cnt[2]_i_1 
       (.I0(q_r_decerr_cnt_reg[2]),
        .I1(q_r_decerr_cnt_reg[0]),
        .I2(q_r_decerr_cnt_reg[1]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \q_r_decerr_cnt[3]_i_1 
       (.I0(q_r_decerr_cnt_reg[3]),
        .I1(q_r_decerr_cnt_reg[1]),
        .I2(q_r_decerr_cnt_reg[0]),
        .I3(q_r_decerr_cnt_reg[2]),
        .O(p_0_in__4[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \q_r_decerr_cnt[4]_i_1 
       (.I0(\q_rresp_reg_n_0_[1] ),
        .I1(\q_rresp_reg_n_0_[0] ),
        .O(q_r_decerr_cnt));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \q_r_decerr_cnt[4]_i_2 
       (.I0(q_r_decerr_cnt_reg[4]),
        .I1(q_r_decerr_cnt_reg[2]),
        .I2(q_r_decerr_cnt_reg[0]),
        .I3(q_r_decerr_cnt_reg[1]),
        .I4(q_r_decerr_cnt_reg[3]),
        .O(p_0_in__4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_decerr_cnt_reg[0] 
       (.C(i_clk),
        .CE(q_r_decerr_cnt),
        .D(p_0_in__4[0]),
        .Q(q_r_decerr_cnt_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_decerr_cnt_reg[1] 
       (.C(i_clk),
        .CE(q_r_decerr_cnt),
        .D(p_0_in__4[1]),
        .Q(q_r_decerr_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_decerr_cnt_reg[2] 
       (.C(i_clk),
        .CE(q_r_decerr_cnt),
        .D(p_0_in__4[2]),
        .Q(q_r_decerr_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_decerr_cnt_reg[3] 
       (.C(i_clk),
        .CE(q_r_decerr_cnt),
        .D(p_0_in__4[3]),
        .Q(q_r_decerr_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_decerr_cnt_reg[4] 
       (.C(i_clk),
        .CE(q_r_decerr_cnt),
        .D(p_0_in__4[4]),
        .Q(q_r_decerr_cnt_reg[4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    q_r_ena_set_i_1
       (.I0(m_axil_arready),
        .I1(s_axil_arvalid),
        .I2(s_axil_rready),
        .I3(m_axil_rvalid),
        .O(q_r_ena_set0));
  FDRE #(
    .INIT(1'b0)) 
    q_r_ena_set_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_r_ena_set0),
        .Q(q_r_ena_set),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_r_slverr_cnt[0]_i_1 
       (.I0(q_r_slverr_cnt_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_r_slverr_cnt[1]_i_1 
       (.I0(q_r_slverr_cnt_reg[1]),
        .I1(q_r_slverr_cnt_reg[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \q_r_slverr_cnt[2]_i_1 
       (.I0(q_r_slverr_cnt_reg[2]),
        .I1(q_r_slverr_cnt_reg[0]),
        .I2(q_r_slverr_cnt_reg[1]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \q_r_slverr_cnt[3]_i_1 
       (.I0(q_r_slverr_cnt_reg[3]),
        .I1(q_r_slverr_cnt_reg[1]),
        .I2(q_r_slverr_cnt_reg[0]),
        .I3(q_r_slverr_cnt_reg[2]),
        .O(p_0_in__3[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \q_r_slverr_cnt[4]_i_1 
       (.I0(\q_rresp_reg_n_0_[1] ),
        .I1(\q_rresp_reg_n_0_[0] ),
        .O(q_r_slverr_cnt));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \q_r_slverr_cnt[4]_i_2 
       (.I0(q_r_slverr_cnt_reg[4]),
        .I1(q_r_slverr_cnt_reg[2]),
        .I2(q_r_slverr_cnt_reg[0]),
        .I3(q_r_slverr_cnt_reg[1]),
        .I4(q_r_slverr_cnt_reg[3]),
        .O(p_0_in__3[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_slverr_cnt_reg[0] 
       (.C(i_clk),
        .CE(q_r_slverr_cnt),
        .D(p_0_in__3[0]),
        .Q(q_r_slverr_cnt_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_slverr_cnt_reg[1] 
       (.C(i_clk),
        .CE(q_r_slverr_cnt),
        .D(p_0_in__3[1]),
        .Q(q_r_slverr_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_slverr_cnt_reg[2] 
       (.C(i_clk),
        .CE(q_r_slverr_cnt),
        .D(p_0_in__3[2]),
        .Q(q_r_slverr_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_slverr_cnt_reg[3] 
       (.C(i_clk),
        .CE(q_r_slverr_cnt),
        .D(p_0_in__3[3]),
        .Q(q_r_slverr_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_slverr_cnt_reg[4] 
       (.C(i_clk),
        .CE(q_r_slverr_cnt),
        .D(p_0_in__3[4]),
        .Q(q_r_slverr_cnt_reg[4]),
        .R(clear));
  LUT6 #(
    .INIT(64'hFF75FFFF00450000)) 
    \q_r_wd_cnt[0]_i_1 
       (.I0(q_r_wd_cnt[0]),
        .I1(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I2(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I3(q_r_ena_set),
        .I4(aresetn),
        .I5(C_WD_TIM[0]),
        .O(\q_r_wd_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBAB88A888A8BBAB)) 
    \q_r_wd_cnt[1]_i_1 
       (.I0(C_WD_TIM[1]),
        .I1(\q_r_wd_cnt[7]_i_3_n_0 ),
        .I2(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I3(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I4(q_r_wd_cnt[1]),
        .I5(q_r_wd_cnt[0]),
        .O(\q_r_wd_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB88BB88BB88BA8)) 
    \q_r_wd_cnt[2]_i_1 
       (.I0(C_WD_TIM[2]),
        .I1(\q_r_wd_cnt[7]_i_3_n_0 ),
        .I2(\q_r_wd_cnt[3]_i_2_n_0 ),
        .I3(q_r_wd_cnt[2]),
        .I4(q_r_wd_cnt[3]),
        .I5(\q_r_wd_cnt[5]_i_2_n_0 ),
        .O(\q_r_wd_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB8B88B8BB8B88A8)) 
    \q_r_wd_cnt[3]_i_1 
       (.I0(C_WD_TIM[3]),
        .I1(\q_r_wd_cnt[7]_i_3_n_0 ),
        .I2(\q_r_wd_cnt[3]_i_2_n_0 ),
        .I3(q_r_wd_cnt[2]),
        .I4(q_r_wd_cnt[3]),
        .I5(\q_r_wd_cnt[5]_i_2_n_0 ),
        .O(\q_r_wd_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q_r_wd_cnt[3]_i_2 
       (.I0(q_r_wd_cnt[1]),
        .I1(q_r_wd_cnt[0]),
        .O(\q_r_wd_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA2AEAAAEAEA2AAA2)) 
    \q_r_wd_cnt[4]_i_1 
       (.I0(C_WD_TIM[4]),
        .I1(aresetn),
        .I2(q_r_ena_set),
        .I3(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I4(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I5(q_r_wd_cnt[4]),
        .O(\q_r_wd_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBAB88A88BABB8A8)) 
    \q_r_wd_cnt[5]_i_1 
       (.I0(C_WD_TIM[5]),
        .I1(\q_r_wd_cnt[7]_i_3_n_0 ),
        .I2(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I3(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I4(q_r_wd_cnt[5]),
        .I5(q_r_wd_cnt[4]),
        .O(\q_r_wd_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q_r_wd_cnt[5]_i_2 
       (.I0(q_r_wd_cnt[4]),
        .I1(q_r_wd_cnt[5]),
        .I2(q_r_wd_cnt[7]),
        .I3(q_r_wd_cnt[6]),
        .O(\q_r_wd_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB8BBB8B88B888A8)) 
    \q_r_wd_cnt[6]_i_1 
       (.I0(C_WD_TIM[6]),
        .I1(\q_r_wd_cnt[7]_i_3_n_0 ),
        .I2(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I3(\q_r_wd_cnt[7]_i_4_n_0 ),
        .I4(q_r_wd_cnt[7]),
        .I5(q_r_wd_cnt[6]),
        .O(\q_r_wd_cnt[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q_r_wd_cnt[7]_i_1 
       (.I0(q_r_wd_ena_reg_n_0),
        .I1(aresetn),
        .O(\q_r_wd_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88AB8B8B8B8)) 
    \q_r_wd_cnt[7]_i_2 
       (.I0(C_WD_TIM[7]),
        .I1(\q_r_wd_cnt[7]_i_3_n_0 ),
        .I2(q_r_wd_cnt[7]),
        .I3(q_r_wd_cnt[6]),
        .I4(\q_r_wd_cnt[7]_i_4_n_0 ),
        .I5(\q_r_wd_cnt[7]_i_5_n_0 ),
        .O(\q_r_wd_cnt[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q_r_wd_cnt[7]_i_3 
       (.I0(q_r_ena_set),
        .I1(aresetn),
        .O(\q_r_wd_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q_r_wd_cnt[7]_i_4 
       (.I0(q_r_wd_cnt[5]),
        .I1(q_r_wd_cnt[4]),
        .O(\q_r_wd_cnt[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \q_r_wd_cnt[7]_i_5 
       (.I0(q_r_wd_cnt[0]),
        .I1(q_r_wd_cnt[1]),
        .I2(q_r_wd_cnt[2]),
        .I3(q_r_wd_cnt[3]),
        .O(\q_r_wd_cnt[7]_i_5_n_0 ));
  FDRE \q_r_wd_cnt_reg[0] 
       (.C(i_clk),
        .CE(\q_r_wd_cnt[7]_i_1_n_0 ),
        .D(\q_r_wd_cnt[0]_i_1_n_0 ),
        .Q(q_r_wd_cnt[0]),
        .R(1'b0));
  FDRE \q_r_wd_cnt_reg[1] 
       (.C(i_clk),
        .CE(\q_r_wd_cnt[7]_i_1_n_0 ),
        .D(\q_r_wd_cnt[1]_i_1_n_0 ),
        .Q(q_r_wd_cnt[1]),
        .R(1'b0));
  FDRE \q_r_wd_cnt_reg[2] 
       (.C(i_clk),
        .CE(\q_r_wd_cnt[7]_i_1_n_0 ),
        .D(\q_r_wd_cnt[2]_i_1_n_0 ),
        .Q(q_r_wd_cnt[2]),
        .R(1'b0));
  FDRE \q_r_wd_cnt_reg[3] 
       (.C(i_clk),
        .CE(\q_r_wd_cnt[7]_i_1_n_0 ),
        .D(\q_r_wd_cnt[3]_i_1_n_0 ),
        .Q(q_r_wd_cnt[3]),
        .R(1'b0));
  FDRE \q_r_wd_cnt_reg[4] 
       (.C(i_clk),
        .CE(\q_r_wd_cnt[7]_i_1_n_0 ),
        .D(\q_r_wd_cnt[4]_i_1_n_0 ),
        .Q(q_r_wd_cnt[4]),
        .R(1'b0));
  FDRE \q_r_wd_cnt_reg[5] 
       (.C(i_clk),
        .CE(\q_r_wd_cnt[7]_i_1_n_0 ),
        .D(\q_r_wd_cnt[5]_i_1_n_0 ),
        .Q(q_r_wd_cnt[5]),
        .R(1'b0));
  FDRE \q_r_wd_cnt_reg[6] 
       (.C(i_clk),
        .CE(\q_r_wd_cnt[7]_i_1_n_0 ),
        .D(\q_r_wd_cnt[6]_i_1_n_0 ),
        .Q(q_r_wd_cnt[6]),
        .R(1'b0));
  FDRE \q_r_wd_cnt_reg[7] 
       (.C(i_clk),
        .CE(\q_r_wd_cnt[7]_i_1_n_0 ),
        .D(\q_r_wd_cnt[7]_i_2_n_0 ),
        .Q(q_r_wd_cnt[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FBAA0000)) 
    q_r_wd_ena_i_1
       (.I0(q_r_ena_set1),
        .I1(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I2(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I3(q_r_wd_ena_reg_n_0),
        .I4(aresetn),
        .I5(\q_rresp[1]_i_2_n_0 ),
        .O(q_r_wd_ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_r_wd_ena_i_2
       (.I0(s_axil_arvalid),
        .I1(m_axil_arready),
        .O(q_r_ena_set1));
  FDRE #(
    .INIT(1'b0)) 
    q_r_wd_ena_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_r_wd_ena_i_1_n_0),
        .Q(q_r_wd_ena_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAA8AAAA00020000)) 
    \q_r_wd_err_cnt[0]_i_1 
       (.I0(aresetn),
        .I1(q_r_wd_cnt[6]),
        .I2(q_r_wd_cnt[7]),
        .I3(\q_r_wd_cnt[7]_i_4_n_0 ),
        .I4(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I5(q_r_wd_err_cnt_reg[0]),
        .O(\q_r_wd_err_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \q_r_wd_err_cnt[1]_i_1 
       (.I0(aresetn),
        .I1(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I2(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I3(q_r_wd_err_cnt_reg[0]),
        .I4(q_r_wd_err_cnt_reg[1]),
        .O(\q_r_wd_err_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \q_r_wd_err_cnt[2]_i_1 
       (.I0(aresetn),
        .I1(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I2(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I3(q_r_wd_err_cnt_reg[1]),
        .I4(q_r_wd_err_cnt_reg[0]),
        .I5(q_r_wd_err_cnt_reg[2]),
        .O(\q_r_wd_err_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0D2F000000000)) 
    \q_r_wd_err_cnt[3]_i_1 
       (.I0(q_r_wd_err_cnt_reg[2]),
        .I1(\q_r_wd_err_cnt[3]_i_2_n_0 ),
        .I2(q_r_wd_err_cnt_reg[3]),
        .I3(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I4(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I5(aresetn),
        .O(\q_r_wd_err_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \q_r_wd_err_cnt[3]_i_2 
       (.I0(q_r_wd_err_cnt_reg[0]),
        .I1(q_r_wd_err_cnt_reg[1]),
        .O(\q_r_wd_err_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFB080000)) 
    \q_r_wd_err_cnt[4]_i_1 
       (.I0(\q_r_wd_err_cnt[4]_i_2_n_0 ),
        .I1(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I2(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I3(q_r_wd_err_cnt_reg[4]),
        .I4(aresetn),
        .O(\q_r_wd_err_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \q_r_wd_err_cnt[4]_i_2 
       (.I0(q_r_wd_err_cnt_reg[4]),
        .I1(q_r_wd_err_cnt_reg[0]),
        .I2(q_r_wd_err_cnt_reg[1]),
        .I3(q_r_wd_err_cnt_reg[3]),
        .I4(q_r_wd_err_cnt_reg[2]),
        .O(\q_r_wd_err_cnt[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_wd_err_cnt_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\q_r_wd_err_cnt[0]_i_1_n_0 ),
        .Q(q_r_wd_err_cnt_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_wd_err_cnt_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\q_r_wd_err_cnt[1]_i_1_n_0 ),
        .Q(q_r_wd_err_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_wd_err_cnt_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\q_r_wd_err_cnt[2]_i_1_n_0 ),
        .Q(q_r_wd_err_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_wd_err_cnt_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\q_r_wd_err_cnt[3]_i_1_n_0 ),
        .Q(q_r_wd_err_cnt_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_r_wd_err_cnt_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\q_r_wd_err_cnt[4]_i_1_n_0 ),
        .Q(q_r_wd_err_cnt_reg[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h40AA)) 
    q_rena_i_1
       (.I0(q_rena_reg_n_0),
        .I1(ctrl_axil_arready),
        .I2(ctrl_axil_arvalid),
        .I3(aresetn),
        .O(q_rena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_rena_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_rena_i_1_n_0),
        .Q(q_rena_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q_rresp[0]_i_1 
       (.I0(m_axil_rresp[0]),
        .I1(\q_rresp[1]_i_2_n_0 ),
        .O(\q_rresp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \q_rresp[1]_i_1 
       (.I0(m_axil_rresp[1]),
        .I1(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I2(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I3(\q_rresp[1]_i_2_n_0 ),
        .O(\q_rresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q_rresp[1]_i_2 
       (.I0(m_axil_rvalid),
        .I1(s_axil_rready),
        .O(\q_rresp[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_rresp_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\q_rresp[0]_i_1_n_0 ),
        .Q(\q_rresp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_rresp_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\q_rresp[1]_i_1_n_0 ),
        .Q(\q_rresp_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8F888888)) 
    q_rvalid_i_1
       (.I0(q_rvalid_reg_n_0),
        .I1(q_r_wd_ena_reg_n_0),
        .I2(\q_r_wd_cnt[5]_i_2_n_0 ),
        .I3(\q_r_wd_cnt[7]_i_5_n_0 ),
        .I4(s_axil_rready),
        .O(q_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_rvalid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_rvalid_i_1_n_0),
        .Q(q_rvalid_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_w_decerr_cnt[0]_i_1 
       (.I0(q_w_decerr_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_w_decerr_cnt[1]_i_1 
       (.I0(q_w_decerr_cnt_reg[1]),
        .I1(q_w_decerr_cnt_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \q_w_decerr_cnt[2]_i_1 
       (.I0(q_w_decerr_cnt_reg[2]),
        .I1(q_w_decerr_cnt_reg[0]),
        .I2(q_w_decerr_cnt_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \q_w_decerr_cnt[3]_i_1 
       (.I0(q_w_decerr_cnt_reg[3]),
        .I1(q_w_decerr_cnt_reg[1]),
        .I2(q_w_decerr_cnt_reg[0]),
        .I3(q_w_decerr_cnt_reg[2]),
        .O(p_0_in__1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \q_w_decerr_cnt[4]_i_1 
       (.I0(\q_bresp_reg_n_0_[1] ),
        .I1(\q_bresp_reg_n_0_[0] ),
        .O(q_w_decerr_cnt));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \q_w_decerr_cnt[4]_i_2 
       (.I0(q_w_decerr_cnt_reg[4]),
        .I1(q_w_decerr_cnt_reg[2]),
        .I2(q_w_decerr_cnt_reg[0]),
        .I3(q_w_decerr_cnt_reg[1]),
        .I4(q_w_decerr_cnt_reg[3]),
        .O(p_0_in__1[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_decerr_cnt_reg[0] 
       (.C(i_clk),
        .CE(q_w_decerr_cnt),
        .D(p_0_in__1[0]),
        .Q(q_w_decerr_cnt_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_decerr_cnt_reg[1] 
       (.C(i_clk),
        .CE(q_w_decerr_cnt),
        .D(p_0_in__1[1]),
        .Q(q_w_decerr_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_decerr_cnt_reg[2] 
       (.C(i_clk),
        .CE(q_w_decerr_cnt),
        .D(p_0_in__1[2]),
        .Q(q_w_decerr_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_decerr_cnt_reg[3] 
       (.C(i_clk),
        .CE(q_w_decerr_cnt),
        .D(p_0_in__1[3]),
        .Q(q_w_decerr_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_decerr_cnt_reg[4] 
       (.C(i_clk),
        .CE(q_w_decerr_cnt),
        .D(p_0_in__1[4]),
        .Q(q_w_decerr_cnt_reg[4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    q_w_ena_set_i_1
       (.I0(m_axil_awready),
        .I1(s_axil_awvalid),
        .I2(s_axil_bready),
        .I3(m_axil_bvalid),
        .O(q_w_ena_set0));
  FDRE #(
    .INIT(1'b0)) 
    q_w_ena_set_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_w_ena_set0),
        .Q(q_w_ena_set),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_w_slverr_cnt[0]_i_1 
       (.I0(q_w_slverr_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_w_slverr_cnt[1]_i_1 
       (.I0(q_w_slverr_cnt_reg[1]),
        .I1(q_w_slverr_cnt_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \q_w_slverr_cnt[2]_i_1 
       (.I0(q_w_slverr_cnt_reg[2]),
        .I1(q_w_slverr_cnt_reg[0]),
        .I2(q_w_slverr_cnt_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \q_w_slverr_cnt[3]_i_1 
       (.I0(q_w_slverr_cnt_reg[3]),
        .I1(q_w_slverr_cnt_reg[1]),
        .I2(q_w_slverr_cnt_reg[0]),
        .I3(q_w_slverr_cnt_reg[2]),
        .O(p_0_in__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \q_w_slverr_cnt[4]_i_1 
       (.I0(aresetn),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \q_w_slverr_cnt[4]_i_2 
       (.I0(\q_bresp_reg_n_0_[1] ),
        .I1(\q_bresp_reg_n_0_[0] ),
        .O(q_w_slverr_cnt));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \q_w_slverr_cnt[4]_i_3 
       (.I0(q_w_slverr_cnt_reg[4]),
        .I1(q_w_slverr_cnt_reg[2]),
        .I2(q_w_slverr_cnt_reg[0]),
        .I3(q_w_slverr_cnt_reg[1]),
        .I4(q_w_slverr_cnt_reg[3]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_slverr_cnt_reg[0] 
       (.C(i_clk),
        .CE(q_w_slverr_cnt),
        .D(p_0_in__0[0]),
        .Q(q_w_slverr_cnt_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_slverr_cnt_reg[1] 
       (.C(i_clk),
        .CE(q_w_slverr_cnt),
        .D(p_0_in__0[1]),
        .Q(q_w_slverr_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_slverr_cnt_reg[2] 
       (.C(i_clk),
        .CE(q_w_slverr_cnt),
        .D(p_0_in__0[2]),
        .Q(q_w_slverr_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_slverr_cnt_reg[3] 
       (.C(i_clk),
        .CE(q_w_slverr_cnt),
        .D(p_0_in__0[3]),
        .Q(q_w_slverr_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_slverr_cnt_reg[4] 
       (.C(i_clk),
        .CE(q_w_slverr_cnt),
        .D(p_0_in__0[4]),
        .Q(q_w_slverr_cnt_reg[4]),
        .R(clear));
  LUT6 #(
    .INIT(64'hAAAA20AAAAAAEFAA)) 
    \q_w_wd_cnt[0]_i_1 
       (.I0(C_WD_TIM[0]),
        .I1(\q_w_wd_cnt[5]_i_2_n_0 ),
        .I2(\q_w_wd_cnt[7]_i_5_n_0 ),
        .I3(aresetn),
        .I4(q_w_ena_set),
        .I5(q_w_wd_cnt[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAAEFAA20AA20AAEF)) 
    \q_w_wd_cnt[1]_i_1 
       (.I0(C_WD_TIM[1]),
        .I1(\q_w_wd_cnt[5]_i_2_n_0 ),
        .I2(\q_w_wd_cnt[7]_i_5_n_0 ),
        .I3(\q_w_wd_cnt[7]_i_3_n_0 ),
        .I4(q_w_wd_cnt[1]),
        .I5(q_w_wd_cnt[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA0FF00FE0)) 
    \q_w_wd_cnt[2]_i_1 
       (.I0(C_WD_TIM[2]),
        .I1(\q_w_wd_cnt[5]_i_2_n_0 ),
        .I2(\q_w_wd_cnt[3]_i_2_n_0 ),
        .I3(q_w_wd_cnt[2]),
        .I4(q_w_wd_cnt[3]),
        .I5(\q_w_wd_cnt[7]_i_3_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFF0F00E0)) 
    \q_w_wd_cnt[3]_i_1 
       (.I0(C_WD_TIM[3]),
        .I1(\q_w_wd_cnt[5]_i_2_n_0 ),
        .I2(\q_w_wd_cnt[3]_i_2_n_0 ),
        .I3(q_w_wd_cnt[2]),
        .I4(q_w_wd_cnt[3]),
        .I5(\q_w_wd_cnt[7]_i_3_n_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q_w_wd_cnt[3]_i_2 
       (.I0(q_w_wd_cnt[1]),
        .I1(q_w_wd_cnt[0]),
        .O(\q_w_wd_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2FAAAAAAE0AA)) 
    \q_w_wd_cnt[4]_i_1 
       (.I0(C_WD_TIM[4]),
        .I1(\q_w_wd_cnt[5]_i_2_n_0 ),
        .I2(\q_w_wd_cnt[7]_i_5_n_0 ),
        .I3(aresetn),
        .I4(q_w_ena_set),
        .I5(q_w_wd_cnt[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAAEFAA20AA2FAAE0)) 
    \q_w_wd_cnt[5]_i_1 
       (.I0(C_WD_TIM[5]),
        .I1(\q_w_wd_cnt[5]_i_2_n_0 ),
        .I2(\q_w_wd_cnt[7]_i_5_n_0 ),
        .I3(\q_w_wd_cnt[7]_i_3_n_0 ),
        .I4(q_w_wd_cnt[5]),
        .I5(q_w_wd_cnt[4]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q_w_wd_cnt[5]_i_2 
       (.I0(q_w_wd_cnt[7]),
        .I1(q_w_wd_cnt[6]),
        .I2(q_w_wd_cnt[4]),
        .I3(q_w_wd_cnt[5]),
        .O(\q_w_wd_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAF00EF0F0)) 
    \q_w_wd_cnt[6]_i_1 
       (.I0(C_WD_TIM[6]),
        .I1(q_w_wd_cnt[7]),
        .I2(q_w_wd_cnt[6]),
        .I3(\q_w_wd_cnt[7]_i_4_n_0 ),
        .I4(\q_w_wd_cnt[7]_i_5_n_0 ),
        .I5(\q_w_wd_cnt[7]_i_3_n_0 ),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \q_w_wd_cnt[7]_i_1 
       (.I0(q_w_wd_ena_reg_n_0),
        .I1(aresetn),
        .O(\q_w_wd_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88AB8B8B8B8)) 
    \q_w_wd_cnt[7]_i_2 
       (.I0(C_WD_TIM[7]),
        .I1(\q_w_wd_cnt[7]_i_3_n_0 ),
        .I2(q_w_wd_cnt[7]),
        .I3(q_w_wd_cnt[6]),
        .I4(\q_w_wd_cnt[7]_i_4_n_0 ),
        .I5(\q_w_wd_cnt[7]_i_5_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \q_w_wd_cnt[7]_i_3 
       (.I0(q_w_ena_set),
        .I1(aresetn),
        .O(\q_w_wd_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q_w_wd_cnt[7]_i_4 
       (.I0(q_w_wd_cnt[5]),
        .I1(q_w_wd_cnt[4]),
        .O(\q_w_wd_cnt[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \q_w_wd_cnt[7]_i_5 
       (.I0(q_w_wd_cnt[0]),
        .I1(q_w_wd_cnt[1]),
        .I2(q_w_wd_cnt[2]),
        .I3(q_w_wd_cnt[3]),
        .O(\q_w_wd_cnt[7]_i_5_n_0 ));
  FDRE \q_w_wd_cnt_reg[0] 
       (.C(i_clk),
        .CE(\q_w_wd_cnt[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(q_w_wd_cnt[0]),
        .R(1'b0));
  FDRE \q_w_wd_cnt_reg[1] 
       (.C(i_clk),
        .CE(\q_w_wd_cnt[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(q_w_wd_cnt[1]),
        .R(1'b0));
  FDRE \q_w_wd_cnt_reg[2] 
       (.C(i_clk),
        .CE(\q_w_wd_cnt[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(q_w_wd_cnt[2]),
        .R(1'b0));
  FDRE \q_w_wd_cnt_reg[3] 
       (.C(i_clk),
        .CE(\q_w_wd_cnt[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(q_w_wd_cnt[3]),
        .R(1'b0));
  FDRE \q_w_wd_cnt_reg[4] 
       (.C(i_clk),
        .CE(\q_w_wd_cnt[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(q_w_wd_cnt[4]),
        .R(1'b0));
  FDRE \q_w_wd_cnt_reg[5] 
       (.C(i_clk),
        .CE(\q_w_wd_cnt[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(q_w_wd_cnt[5]),
        .R(1'b0));
  FDRE \q_w_wd_cnt_reg[6] 
       (.C(i_clk),
        .CE(\q_w_wd_cnt[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(q_w_wd_cnt[6]),
        .R(1'b0));
  FDRE \q_w_wd_cnt_reg[7] 
       (.C(i_clk),
        .CE(\q_w_wd_cnt[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(q_w_wd_cnt[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EFAA0000)) 
    q_w_wd_ena_i_1
       (.I0(q_w_wd_ena0),
        .I1(\q_w_wd_cnt[5]_i_2_n_0 ),
        .I2(\q_w_wd_cnt[7]_i_5_n_0 ),
        .I3(q_w_wd_ena_reg_n_0),
        .I4(aresetn),
        .I5(\q_bresp[1]_i_2_n_0 ),
        .O(q_w_wd_ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    q_w_wd_ena_i_2
       (.I0(s_axil_awvalid),
        .I1(m_axil_awready),
        .O(q_w_wd_ena0));
  FDRE #(
    .INIT(1'b0)) 
    q_w_wd_ena_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(q_w_wd_ena_i_1_n_0),
        .Q(q_w_wd_ena_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_w_wd_err_cnt[0]_i_1 
       (.I0(q_w_wd_err_cnt_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_w_wd_err_cnt[1]_i_1 
       (.I0(q_w_wd_err_cnt_reg[1]),
        .I1(q_w_wd_err_cnt_reg[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \q_w_wd_err_cnt[2]_i_1 
       (.I0(q_w_wd_err_cnt_reg[2]),
        .I1(q_w_wd_err_cnt_reg[0]),
        .I2(q_w_wd_err_cnt_reg[1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \q_w_wd_err_cnt[3]_i_1 
       (.I0(q_w_wd_err_cnt_reg[3]),
        .I1(q_w_wd_err_cnt_reg[1]),
        .I2(q_w_wd_err_cnt_reg[0]),
        .I3(q_w_wd_err_cnt_reg[2]),
        .O(p_0_in__2[3]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \q_w_wd_err_cnt[4]_i_1 
       (.I0(\q_w_wd_cnt[7]_i_5_n_0 ),
        .I1(q_w_wd_cnt[5]),
        .I2(q_w_wd_cnt[4]),
        .I3(q_w_wd_cnt[6]),
        .I4(q_w_wd_cnt[7]),
        .O(q_w_wd_cnt2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \q_w_wd_err_cnt[4]_i_2 
       (.I0(q_w_wd_err_cnt_reg[4]),
        .I1(q_w_wd_err_cnt_reg[2]),
        .I2(q_w_wd_err_cnt_reg[0]),
        .I3(q_w_wd_err_cnt_reg[1]),
        .I4(q_w_wd_err_cnt_reg[3]),
        .O(p_0_in__2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_wd_err_cnt_reg[0] 
       (.C(i_clk),
        .CE(q_w_wd_cnt2),
        .D(p_0_in__2[0]),
        .Q(q_w_wd_err_cnt_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_wd_err_cnt_reg[1] 
       (.C(i_clk),
        .CE(q_w_wd_cnt2),
        .D(p_0_in__2[1]),
        .Q(q_w_wd_err_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_wd_err_cnt_reg[2] 
       (.C(i_clk),
        .CE(q_w_wd_cnt2),
        .D(p_0_in__2[2]),
        .Q(q_w_wd_err_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_wd_err_cnt_reg[3] 
       (.C(i_clk),
        .CE(q_w_wd_cnt2),
        .D(p_0_in__2[3]),
        .Q(q_w_wd_err_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \q_w_wd_err_cnt_reg[4] 
       (.C(i_clk),
        .CE(q_w_wd_cnt2),
        .D(p_0_in__2[4]),
        .Q(q_w_wd_err_cnt_reg[4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axil_bvalid_INST_0
       (.I0(m_axil_bvalid),
        .I1(q_bvalid_reg_n_0),
        .O(s_axil_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axil_rvalid_INST_0
       (.I0(m_axil_rvalid),
        .I1(q_rvalid_reg_n_0),
        .O(s_axil_rvalid));
endmodule

(* CHECK_LICENSE_TYPE = "axil_fw_0,axil_fw,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axil_fw,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_clk,
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
    ctrl_axil_rresp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF ctrl_axil:m_axil:s_axil, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [7:0]i_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil AWREADY" *) input m_axil_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil AWVALID" *) output m_axil_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil AWADDR" *) output [19:0]m_axil_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil AWPROT" *) output [2:0]m_axil_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil WREADY" *) input m_axil_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil WVALID" *) output m_axil_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil WDATA" *) output [31:0]m_axil_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil WSTRB" *) output [3:0]m_axil_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil BREADY" *) output m_axil_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil BVALID" *) input m_axil_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil BRESP" *) input [1:0]m_axil_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil ARREADY" *) input m_axil_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil ARVALID" *) output m_axil_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil ARADDR" *) output [19:0]m_axil_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil ARPROT" *) output [2:0]m_axil_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil RREADY" *) output m_axil_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil RVALID" *) input m_axil_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil RDATA" *) input [31:0]m_axil_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axil RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [1:0]m_axil_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *) output s_axil_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *) input s_axil_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *) input [19:0]s_axil_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWPROT" *) input [2:0]s_axil_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *) output s_axil_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *) input s_axil_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *) input [31:0]s_axil_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *) input [3:0]s_axil_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *) input s_axil_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *) output s_axil_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *) output [1:0]s_axil_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *) output s_axil_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *) input s_axil_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *) input [19:0]s_axil_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARPROT" *) input [2:0]s_axil_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *) input s_axil_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *) output s_axil_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *) output [31:0]s_axil_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]s_axil_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil AWREADY" *) output ctrl_axil_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil AWVALID" *) input ctrl_axil_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil AWADDR" *) input [4:0]ctrl_axil_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil AWPROT" *) input [2:0]ctrl_axil_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil WREADY" *) output ctrl_axil_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil WVALID" *) input ctrl_axil_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil WDATA" *) input [31:0]ctrl_axil_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil WSTRB" *) input [3:0]ctrl_axil_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil BREADY" *) input ctrl_axil_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil BVALID" *) output ctrl_axil_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil BRESP" *) output [1:0]ctrl_axil_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil ARREADY" *) output ctrl_axil_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil ARVALID" *) input ctrl_axil_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil ARADDR" *) input [4:0]ctrl_axil_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil ARPROT" *) input [2:0]ctrl_axil_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil RREADY" *) input ctrl_axil_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil RVALID" *) output ctrl_axil_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil RDATA" *) output [31:0]ctrl_axil_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axil RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]ctrl_axil_rresp;

  wire \<const0> ;
  wire \<const1> ;
  wire aresetn;
  wire [4:0]ctrl_axil_araddr;
  wire ctrl_axil_arready;
  wire ctrl_axil_arvalid;
  wire [29:0]\^ctrl_axil_rdata ;
  wire ctrl_axil_rready;
  wire [1:0]ctrl_axil_rresp;
  wire ctrl_axil_rvalid;
  wire i_clk;
  wire [7:0]i_len;
  wire [19:0]m_axil_araddr;
  wire m_axil_arready;
  wire m_axil_arvalid;
  wire [19:0]m_axil_awaddr;
  wire m_axil_awready;
  wire m_axil_awvalid;
  wire m_axil_bready;
  wire [1:0]m_axil_bresp;
  wire m_axil_bvalid;
  wire [31:0]m_axil_rdata;
  wire m_axil_rready;
  wire [1:0]m_axil_rresp;
  wire m_axil_rvalid;
  wire [31:0]m_axil_wdata;
  wire m_axil_wready;
  wire [3:0]m_axil_wstrb;
  wire m_axil_wvalid;
  wire [19:0]s_axil_araddr;
  wire s_axil_arready;
  wire s_axil_arvalid;
  wire [19:0]s_axil_awaddr;
  wire s_axil_awready;
  wire s_axil_awvalid;
  wire s_axil_bready;
  wire s_axil_bvalid;
  wire [31:0]s_axil_rdata;
  wire s_axil_rready;
  wire s_axil_rvalid;
  wire [31:0]s_axil_wdata;
  wire s_axil_wready;
  wire [3:0]s_axil_wstrb;
  wire s_axil_wvalid;
  wire NLW_inst_ctrl_axil_awready_UNCONNECTED;
  wire NLW_inst_ctrl_axil_bvalid_UNCONNECTED;
  wire NLW_inst_ctrl_axil_wready_UNCONNECTED;
  wire [1:0]NLW_inst_ctrl_axil_bresp_UNCONNECTED;
  wire [31:30]NLW_inst_ctrl_axil_rdata_UNCONNECTED;
  wire [2:0]NLW_inst_m_axil_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_axil_awprot_UNCONNECTED;
  wire [1:0]NLW_inst_s_axil_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_axil_rresp_UNCONNECTED;

  assign ctrl_axil_awready = \<const1> ;
  assign ctrl_axil_bresp[1] = \<const0> ;
  assign ctrl_axil_bresp[0] = \<const0> ;
  assign ctrl_axil_bvalid = \<const0> ;
  assign ctrl_axil_rdata[31] = \<const0> ;
  assign ctrl_axil_rdata[30] = \<const0> ;
  assign ctrl_axil_rdata[29:0] = \^ctrl_axil_rdata [29:0];
  assign ctrl_axil_wready = \<const1> ;
  assign m_axil_arprot[2] = \<const0> ;
  assign m_axil_arprot[1] = \<const0> ;
  assign m_axil_arprot[0] = \<const0> ;
  assign m_axil_awprot[2] = \<const0> ;
  assign m_axil_awprot[1] = \<const0> ;
  assign m_axil_awprot[0] = \<const0> ;
  assign s_axil_bresp[1] = \<const0> ;
  assign s_axil_bresp[0] = \<const0> ;
  assign s_axil_rresp[1] = \<const0> ;
  assign s_axil_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ADDR_W = "16'sb0000000000000101" *) 
  (* G_ADDR_W = "16'sb0000000000010100" *) 
  (* G_CNT_WDT = "16'sb0000000000000100" *) 
  (* G_CTRL_ADDR_W = "16'sb0000000000000101" *) 
  (* G_DATA_W = "16'sb0000000000100000" *) 
  (* G_RD_DECERR_ADDR = "5'b10000" *) 
  (* G_RD_SLVERR_ADDR = "5'b01100" *) 
  (* G_RD_WD_ERR_ADDR = "5'b10100" *) 
  (* G_RG_ST_ERR_ADDR = "5'b11000" *) 
  (* G_WD_WDT = "16'sb0000000000001000" *) 
  (* G_WR_DECERR_ADDR = "5'b00100" *) 
  (* G_WR_SLVERR_ADDR = "5'b00000" *) 
  (* G_WR_WD_ERR_ADDR = "5'b01000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw inst
       (.aresetn(aresetn),
        .ctrl_axil_araddr(ctrl_axil_araddr),
        .ctrl_axil_arprot({1'b0,1'b0,1'b0}),
        .ctrl_axil_arready(ctrl_axil_arready),
        .ctrl_axil_arvalid(ctrl_axil_arvalid),
        .ctrl_axil_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctrl_axil_awprot({1'b0,1'b0,1'b0}),
        .ctrl_axil_awready(NLW_inst_ctrl_axil_awready_UNCONNECTED),
        .ctrl_axil_awvalid(1'b0),
        .ctrl_axil_bready(1'b0),
        .ctrl_axil_bresp(NLW_inst_ctrl_axil_bresp_UNCONNECTED[1:0]),
        .ctrl_axil_bvalid(NLW_inst_ctrl_axil_bvalid_UNCONNECTED),
        .ctrl_axil_rdata({NLW_inst_ctrl_axil_rdata_UNCONNECTED[31:30],\^ctrl_axil_rdata }),
        .ctrl_axil_rready(ctrl_axil_rready),
        .ctrl_axil_rresp(ctrl_axil_rresp),
        .ctrl_axil_rvalid(ctrl_axil_rvalid),
        .ctrl_axil_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctrl_axil_wready(NLW_inst_ctrl_axil_wready_UNCONNECTED),
        .ctrl_axil_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .ctrl_axil_wvalid(1'b0),
        .i_clk(i_clk),
        .i_len(i_len),
        .m_axil_araddr(m_axil_araddr),
        .m_axil_arprot(NLW_inst_m_axil_arprot_UNCONNECTED[2:0]),
        .m_axil_arready(m_axil_arready),
        .m_axil_arvalid(m_axil_arvalid),
        .m_axil_awaddr(m_axil_awaddr),
        .m_axil_awprot(NLW_inst_m_axil_awprot_UNCONNECTED[2:0]),
        .m_axil_awready(m_axil_awready),
        .m_axil_awvalid(m_axil_awvalid),
        .m_axil_bready(m_axil_bready),
        .m_axil_bresp(m_axil_bresp),
        .m_axil_bvalid(m_axil_bvalid),
        .m_axil_rdata(m_axil_rdata),
        .m_axil_rready(m_axil_rready),
        .m_axil_rresp(m_axil_rresp),
        .m_axil_rvalid(m_axil_rvalid),
        .m_axil_wdata(m_axil_wdata),
        .m_axil_wready(m_axil_wready),
        .m_axil_wstrb(m_axil_wstrb),
        .m_axil_wvalid(m_axil_wvalid),
        .s_axil_araddr(s_axil_araddr),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arready(s_axil_arready),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_awaddr(s_axil_awaddr),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awready(s_axil_awready),
        .s_axil_awvalid(s_axil_awvalid),
        .s_axil_bready(s_axil_bready),
        .s_axil_bresp(NLW_inst_s_axil_bresp_UNCONNECTED[1:0]),
        .s_axil_bvalid(s_axil_bvalid),
        .s_axil_rdata(s_axil_rdata),
        .s_axil_rready(s_axil_rready),
        .s_axil_rresp(NLW_inst_s_axil_rresp_UNCONNECTED[1:0]),
        .s_axil_rvalid(s_axil_rvalid),
        .s_axil_wdata(s_axil_wdata),
        .s_axil_wready(s_axil_wready),
        .s_axil_wstrb(s_axil_wstrb),
        .s_axil_wvalid(s_axil_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
