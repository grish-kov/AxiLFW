-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Jul  2 14:20:49 2024
-- Host        : Griffon running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axil_fw_0_sim_netlist.vhdl
-- Design      : axil_fw_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw is
  port (
    i_clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    i_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axil_awready : in STD_LOGIC;
    m_axil_awvalid : out STD_LOGIC;
    m_axil_awaddr : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axil_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_wready : in STD_LOGIC;
    m_axil_wvalid : out STD_LOGIC;
    m_axil_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axil_bready : out STD_LOGIC;
    m_axil_bvalid : in STD_LOGIC;
    m_axil_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axil_arready : in STD_LOGIC;
    m_axil_arvalid : out STD_LOGIC;
    m_axil_araddr : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axil_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_rready : out STD_LOGIC;
    m_axil_rvalid : in STD_LOGIC;
    m_axil_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_awready : out STD_LOGIC;
    s_axil_awvalid : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_wready : out STD_LOGIC;
    s_axil_wvalid : in STD_LOGIC;
    s_axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_bready : in STD_LOGIC;
    s_axil_bvalid : out STD_LOGIC;
    s_axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_arready : out STD_LOGIC;
    s_axil_arvalid : in STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_rready : in STD_LOGIC;
    s_axil_rvalid : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ctrl_axil_awready : out STD_LOGIC;
    ctrl_axil_awvalid : in STD_LOGIC;
    ctrl_axil_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ctrl_axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ctrl_axil_wready : out STD_LOGIC;
    ctrl_axil_wvalid : in STD_LOGIC;
    ctrl_axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl_axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ctrl_axil_bready : in STD_LOGIC;
    ctrl_axil_bvalid : out STD_LOGIC;
    ctrl_axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ctrl_axil_arready : out STD_LOGIC;
    ctrl_axil_arvalid : in STD_LOGIC;
    ctrl_axil_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ctrl_axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ctrl_axil_rready : in STD_LOGIC;
    ctrl_axil_rvalid : out STD_LOGIC;
    ctrl_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl_axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ADDR_W : string;
  attribute C_ADDR_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "16'sb0000000000000101";
  attribute G_ADDR_W : string;
  attribute G_ADDR_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "16'sb0000000000010100";
  attribute G_CNT_WDT : string;
  attribute G_CNT_WDT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "16'sb0000000000000100";
  attribute G_CTRL_ADDR_W : string;
  attribute G_CTRL_ADDR_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "16'sb0000000000000101";
  attribute G_DATA_W : string;
  attribute G_DATA_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "16'sb0000000000100000";
  attribute G_RD_DECERR_ADDR : string;
  attribute G_RD_DECERR_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "5'b10000";
  attribute G_RD_SLVERR_ADDR : string;
  attribute G_RD_SLVERR_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "5'b01100";
  attribute G_RD_WD_ERR_ADDR : string;
  attribute G_RD_WD_ERR_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "5'b10100";
  attribute G_RG_ST_ERR_ADDR : string;
  attribute G_RG_ST_ERR_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "5'b11000";
  attribute G_WD_WDT : string;
  attribute G_WD_WDT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "16'sb0000000000001000";
  attribute G_WR_DECERR_ADDR : string;
  attribute G_WR_DECERR_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "5'b00100";
  attribute G_WR_SLVERR_ADDR : string;
  attribute G_WR_SLVERR_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "5'b00000";
  attribute G_WR_WD_ERR_ADDR : string;
  attribute G_WR_WD_ERR_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw : entity is "5'b01000";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw is
  signal \<const0>\ : STD_LOGIC;
  signal C_WD_TIM : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \C_WD_TIM[7]_i_2_n_0\ : STD_LOGIC;
  signal RADDR : STD_LOGIC;
  signal \RADDR_reg_n_0_[0]\ : STD_LOGIC;
  signal \RADDR_reg_n_0_[1]\ : STD_LOGIC;
  signal \RADDR_reg_n_0_[2]\ : STD_LOGIC;
  signal \RADDR_reg_n_0_[3]\ : STD_LOGIC;
  signal \RADDR_reg_n_0_[4]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^ctrl_axil_arready\ : STD_LOGIC;
  signal ctrl_axil_arready_i_1_n_0 : STD_LOGIC;
  signal \^ctrl_axil_rdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \ctrl_axil_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rdata_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \^ctrl_axil_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ctrl_axil_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_axil_rresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \^ctrl_axil_rvalid\ : STD_LOGIC;
  signal ctrl_axil_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axil_arready\ : STD_LOGIC;
  signal \^m_axil_awready\ : STD_LOGIC;
  signal \^m_axil_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axil_wready\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \q_bresp[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \q_bresp_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_bresp_reg_n_0_[1]\ : STD_LOGIC;
  signal q_bvalid_i_1_n_0 : STD_LOGIC;
  signal q_bvalid_reg_n_0 : STD_LOGIC;
  signal q_r_decerr_cnt : STD_LOGIC;
  signal q_r_decerr_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal q_r_ena_set : STD_LOGIC;
  signal q_r_ena_set0 : STD_LOGIC;
  signal q_r_ena_set1 : STD_LOGIC;
  signal q_r_slverr_cnt : STD_LOGIC;
  signal q_r_slverr_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal q_r_wd_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \q_r_wd_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \q_r_wd_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal q_r_wd_ena_i_1_n_0 : STD_LOGIC;
  signal q_r_wd_ena_reg_n_0 : STD_LOGIC;
  signal \q_r_wd_err_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_err_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_err_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_err_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_err_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_r_wd_err_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \q_r_wd_err_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal q_r_wd_err_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal q_rena_i_1_n_0 : STD_LOGIC;
  signal q_rena_reg_n_0 : STD_LOGIC;
  signal \q_rresp[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_rresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \q_rresp_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_rresp_reg_n_0_[1]\ : STD_LOGIC;
  signal q_rvalid_i_1_n_0 : STD_LOGIC;
  signal q_rvalid_reg_n_0 : STD_LOGIC;
  signal q_w_decerr_cnt : STD_LOGIC;
  signal q_w_decerr_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal q_w_ena_set : STD_LOGIC;
  signal q_w_ena_set0 : STD_LOGIC;
  signal q_w_slverr_cnt : STD_LOGIC;
  signal q_w_slverr_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal q_w_wd_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q_w_wd_cnt2 : STD_LOGIC;
  signal \q_w_wd_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_w_wd_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_w_wd_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \q_w_wd_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \q_w_wd_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \q_w_wd_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal q_w_wd_ena0 : STD_LOGIC;
  signal q_w_wd_ena_i_1_n_0 : STD_LOGIC;
  signal q_w_wd_ena_reg_n_0 : STD_LOGIC;
  signal q_w_wd_err_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s_axil_araddr\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^s_axil_arvalid\ : STD_LOGIC;
  signal \^s_axil_awaddr\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^s_axil_awvalid\ : STD_LOGIC;
  signal \^s_axil_bready\ : STD_LOGIC;
  signal \^s_axil_rready\ : STD_LOGIC;
  signal \^s_axil_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axil_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axil_wvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ctrl_axil_arready_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ctrl_axil_rdata[29]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ctrl_axil_rresp[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ctrl_axil_rvalid_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_bresp[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_bresp[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_bresp[1]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q_r_decerr_cnt[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q_r_decerr_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q_r_decerr_cnt[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_r_decerr_cnt[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of q_r_ena_set_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_r_slverr_cnt[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q_r_slverr_cnt[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q_r_slverr_cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_r_slverr_cnt[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_r_wd_cnt[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_r_wd_cnt[5]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_r_wd_cnt[7]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_r_wd_cnt[7]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of q_r_wd_ena_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_r_wd_err_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q_r_wd_err_cnt[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of q_rena_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_rresp[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_rresp[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_rresp[1]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \q_w_decerr_cnt[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q_w_decerr_cnt[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q_w_decerr_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_w_decerr_cnt[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of q_w_ena_set_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_w_slverr_cnt[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q_w_slverr_cnt[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q_w_slverr_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_w_slverr_cnt[4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_w_wd_cnt[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_w_wd_cnt[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_w_wd_cnt[7]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_w_wd_cnt[7]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_w_wd_cnt[7]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of q_w_wd_ena_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_w_wd_err_cnt[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q_w_wd_err_cnt[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q_w_wd_err_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_w_wd_err_cnt[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axil_bvalid_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of s_axil_rvalid_INST_0 : label is "soft_lutpair23";
begin
  \^m_axil_arready\ <= m_axil_arready;
  \^m_axil_awready\ <= m_axil_awready;
  \^m_axil_rdata\(31 downto 0) <= m_axil_rdata(31 downto 0);
  \^m_axil_wready\ <= m_axil_wready;
  \^s_axil_araddr\(19 downto 0) <= s_axil_araddr(19 downto 0);
  \^s_axil_arvalid\ <= s_axil_arvalid;
  \^s_axil_awaddr\(19 downto 0) <= s_axil_awaddr(19 downto 0);
  \^s_axil_awvalid\ <= s_axil_awvalid;
  \^s_axil_bready\ <= s_axil_bready;
  \^s_axil_rready\ <= s_axil_rready;
  \^s_axil_wdata\(31 downto 0) <= s_axil_wdata(31 downto 0);
  \^s_axil_wstrb\(3 downto 0) <= s_axil_wstrb(3 downto 0);
  \^s_axil_wvalid\ <= s_axil_wvalid;
  ctrl_axil_arready <= \^ctrl_axil_arready\;
  ctrl_axil_awready <= \<const0>\;
  ctrl_axil_bresp(1) <= \<const0>\;
  ctrl_axil_bresp(0) <= \<const0>\;
  ctrl_axil_bvalid <= \<const0>\;
  ctrl_axil_rdata(31) <= \<const0>\;
  ctrl_axil_rdata(30) <= \<const0>\;
  ctrl_axil_rdata(29 downto 0) <= \^ctrl_axil_rdata\(29 downto 0);
  ctrl_axil_rresp(1) <= \^ctrl_axil_rresp\(0);
  ctrl_axil_rresp(0) <= \^ctrl_axil_rresp\(0);
  ctrl_axil_rvalid <= \^ctrl_axil_rvalid\;
  ctrl_axil_wready <= \<const0>\;
  m_axil_araddr(19 downto 0) <= \^s_axil_araddr\(19 downto 0);
  m_axil_arprot(2) <= \<const0>\;
  m_axil_arprot(1) <= \<const0>\;
  m_axil_arprot(0) <= \<const0>\;
  m_axil_arvalid <= \^s_axil_arvalid\;
  m_axil_awaddr(19 downto 0) <= \^s_axil_awaddr\(19 downto 0);
  m_axil_awprot(2) <= \<const0>\;
  m_axil_awprot(1) <= \<const0>\;
  m_axil_awprot(0) <= \<const0>\;
  m_axil_awvalid <= \^s_axil_awvalid\;
  m_axil_bready <= \^s_axil_bready\;
  m_axil_rready <= \^s_axil_rready\;
  m_axil_wdata(31 downto 0) <= \^s_axil_wdata\(31 downto 0);
  m_axil_wstrb(3 downto 0) <= \^s_axil_wstrb\(3 downto 0);
  m_axil_wvalid <= \^s_axil_wvalid\;
  s_axil_arready <= \^m_axil_arready\;
  s_axil_awready <= \^m_axil_awready\;
  s_axil_bresp(1) <= \<const0>\;
  s_axil_bresp(0) <= \<const0>\;
  s_axil_rdata(31 downto 0) <= \^m_axil_rdata\(31 downto 0);
  s_axil_rresp(1) <= \<const0>\;
  s_axil_rresp(0) <= \<const0>\;
  s_axil_wready <= \^m_axil_wready\;
\C_WD_TIM[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => i_len(3),
      I1 => i_len(4),
      I2 => i_len(1),
      I3 => i_len(2),
      I4 => \C_WD_TIM[7]_i_2_n_0\,
      O => p_0_in
    );
\C_WD_TIM[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_len(6),
      I1 => i_len(5),
      I2 => i_len(0),
      I3 => i_len(7),
      O => \C_WD_TIM[7]_i_2_n_0\
    );
\C_WD_TIM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => p_0_in,
      D => i_len(0),
      Q => C_WD_TIM(0),
      R => '0'
    );
\C_WD_TIM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => p_0_in,
      D => i_len(1),
      Q => C_WD_TIM(1),
      R => '0'
    );
\C_WD_TIM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => p_0_in,
      D => i_len(2),
      Q => C_WD_TIM(2),
      R => '0'
    );
\C_WD_TIM_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => p_0_in,
      D => i_len(3),
      Q => C_WD_TIM(3),
      R => '0'
    );
\C_WD_TIM_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => p_0_in,
      D => i_len(4),
      Q => C_WD_TIM(4),
      R => '0'
    );
\C_WD_TIM_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => p_0_in,
      D => i_len(5),
      Q => C_WD_TIM(5),
      R => '0'
    );
\C_WD_TIM_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => p_0_in,
      D => i_len(6),
      Q => C_WD_TIM(6),
      R => '0'
    );
\C_WD_TIM_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => p_0_in,
      D => i_len(7),
      Q => C_WD_TIM(7),
      R => '0'
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\RADDR[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aresetn,
      I1 => ctrl_axil_arvalid,
      I2 => \^ctrl_axil_arready\,
      O => RADDR
    );
\RADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => RADDR,
      D => ctrl_axil_araddr(0),
      Q => \RADDR_reg_n_0_[0]\,
      R => '0'
    );
\RADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => RADDR,
      D => ctrl_axil_araddr(1),
      Q => \RADDR_reg_n_0_[1]\,
      R => '0'
    );
\RADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => RADDR,
      D => ctrl_axil_araddr(2),
      Q => \RADDR_reg_n_0_[2]\,
      R => '0'
    );
\RADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => RADDR,
      D => ctrl_axil_araddr(3),
      Q => \RADDR_reg_n_0_[3]\,
      R => '0'
    );
\RADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => RADDR,
      D => ctrl_axil_araddr(4),
      Q => \RADDR_reg_n_0_[4]\,
      R => '0'
    );
ctrl_axil_arready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => ctrl_axil_arvalid,
      I1 => \^ctrl_axil_arready\,
      I2 => aresetn,
      O => ctrl_axil_arready_i_1_n_0
    );
ctrl_axil_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => ctrl_axil_arready_i_1_n_0,
      Q => \^ctrl_axil_arready\,
      R => '0'
    );
\ctrl_axil_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(0),
      I1 => \RADDR_reg_n_0_[3]\,
      I2 => q_r_decerr_cnt_reg(0),
      I3 => \RADDR_reg_n_0_[4]\,
      I4 => q_w_slverr_cnt_reg(0),
      O => \ctrl_axil_rdata[0]_i_2_n_0\
    );
\ctrl_axil_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(0),
      I1 => \RADDR_reg_n_0_[4]\,
      I2 => q_r_slverr_cnt_reg(0),
      I3 => \RADDR_reg_n_0_[3]\,
      I4 => q_w_decerr_cnt_reg(0),
      O => \ctrl_axil_rdata[0]_i_3_n_0\
    );
\ctrl_axil_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(1),
      I1 => \RADDR_reg_n_0_[3]\,
      I2 => q_r_decerr_cnt_reg(1),
      I3 => \RADDR_reg_n_0_[4]\,
      I4 => q_w_slverr_cnt_reg(1),
      O => \ctrl_axil_rdata[1]_i_2_n_0\
    );
\ctrl_axil_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(1),
      I1 => \RADDR_reg_n_0_[4]\,
      I2 => q_r_slverr_cnt_reg(1),
      I3 => \RADDR_reg_n_0_[3]\,
      I4 => q_w_decerr_cnt_reg(1),
      O => \ctrl_axil_rdata[1]_i_3_n_0\
    );
\ctrl_axil_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01110000"
    )
        port map (
      I0 => \RADDR_reg_n_0_[0]\,
      I1 => \RADDR_reg_n_0_[1]\,
      I2 => \RADDR_reg_n_0_[3]\,
      I3 => \RADDR_reg_n_0_[4]\,
      I4 => \ctrl_axil_rdata[29]_i_3_n_0\,
      O => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002AAA"
    )
        port map (
      I0 => \ctrl_axil_rdata[29]_i_3_n_0\,
      I1 => \RADDR_reg_n_0_[4]\,
      I2 => \RADDR_reg_n_0_[3]\,
      I3 => \RADDR_reg_n_0_[2]\,
      I4 => \RADDR_reg_n_0_[1]\,
      I5 => \RADDR_reg_n_0_[0]\,
      O => \ctrl_axil_rdata[29]_i_2_n_0\
    );
\ctrl_axil_rdata[29]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aresetn,
      I1 => q_rena_reg_n_0,
      O => \ctrl_axil_rdata[29]_i_3_n_0\
    );
\ctrl_axil_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(2),
      I1 => \RADDR_reg_n_0_[3]\,
      I2 => q_r_decerr_cnt_reg(2),
      I3 => \RADDR_reg_n_0_[4]\,
      I4 => q_w_slverr_cnt_reg(2),
      O => \ctrl_axil_rdata[2]_i_2_n_0\
    );
\ctrl_axil_rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(2),
      I1 => \RADDR_reg_n_0_[4]\,
      I2 => q_r_slverr_cnt_reg(2),
      I3 => \RADDR_reg_n_0_[3]\,
      I4 => q_w_decerr_cnt_reg(2),
      O => \ctrl_axil_rdata[2]_i_3_n_0\
    );
\ctrl_axil_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(3),
      I1 => \RADDR_reg_n_0_[3]\,
      I2 => q_r_decerr_cnt_reg(3),
      I3 => \RADDR_reg_n_0_[4]\,
      I4 => q_w_slverr_cnt_reg(3),
      O => \ctrl_axil_rdata[3]_i_2_n_0\
    );
\ctrl_axil_rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(3),
      I1 => \RADDR_reg_n_0_[4]\,
      I2 => q_r_slverr_cnt_reg(3),
      I3 => \RADDR_reg_n_0_[3]\,
      I4 => q_w_decerr_cnt_reg(3),
      O => \ctrl_axil_rdata[3]_i_3_n_0\
    );
\ctrl_axil_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(4),
      I1 => \RADDR_reg_n_0_[3]\,
      I2 => q_r_decerr_cnt_reg(4),
      I3 => \RADDR_reg_n_0_[4]\,
      I4 => q_w_slverr_cnt_reg(4),
      O => \ctrl_axil_rdata[4]_i_2_n_0\
    );
\ctrl_axil_rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(4),
      I1 => \RADDR_reg_n_0_[4]\,
      I2 => q_r_slverr_cnt_reg(4),
      I3 => \RADDR_reg_n_0_[3]\,
      I4 => q_w_decerr_cnt_reg(4),
      O => \ctrl_axil_rdata[4]_i_3_n_0\
    );
\ctrl_axil_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => \ctrl_axil_rdata_reg[0]_i_1_n_0\,
      Q => \^ctrl_axil_rdata\(0),
      R => '0'
    );
\ctrl_axil_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ctrl_axil_rdata[0]_i_2_n_0\,
      I1 => \ctrl_axil_rdata[0]_i_3_n_0\,
      O => \ctrl_axil_rdata_reg[0]_i_1_n_0\,
      S => \RADDR_reg_n_0_[2]\
    );
\ctrl_axil_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_wd_err_cnt_reg(0),
      Q => \^ctrl_axil_rdata\(10),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_wd_err_cnt_reg(1),
      Q => \^ctrl_axil_rdata\(11),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_wd_err_cnt_reg(2),
      Q => \^ctrl_axil_rdata\(12),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_wd_err_cnt_reg(3),
      Q => \^ctrl_axil_rdata\(13),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_wd_err_cnt_reg(4),
      Q => \^ctrl_axil_rdata\(14),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_slverr_cnt_reg(0),
      Q => \^ctrl_axil_rdata\(15),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_slverr_cnt_reg(1),
      Q => \^ctrl_axil_rdata\(16),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_slverr_cnt_reg(2),
      Q => \^ctrl_axil_rdata\(17),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_slverr_cnt_reg(3),
      Q => \^ctrl_axil_rdata\(18),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_slverr_cnt_reg(4),
      Q => \^ctrl_axil_rdata\(19),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => \ctrl_axil_rdata_reg[1]_i_1_n_0\,
      Q => \^ctrl_axil_rdata\(1),
      R => '0'
    );
\ctrl_axil_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ctrl_axil_rdata[1]_i_2_n_0\,
      I1 => \ctrl_axil_rdata[1]_i_3_n_0\,
      O => \ctrl_axil_rdata_reg[1]_i_1_n_0\,
      S => \RADDR_reg_n_0_[2]\
    );
\ctrl_axil_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_decerr_cnt_reg(0),
      Q => \^ctrl_axil_rdata\(20),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_decerr_cnt_reg(1),
      Q => \^ctrl_axil_rdata\(21),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_decerr_cnt_reg(2),
      Q => \^ctrl_axil_rdata\(22),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_decerr_cnt_reg(3),
      Q => \^ctrl_axil_rdata\(23),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_decerr_cnt_reg(4),
      Q => \^ctrl_axil_rdata\(24),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_wd_err_cnt_reg(0),
      Q => \^ctrl_axil_rdata\(25),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_wd_err_cnt_reg(1),
      Q => \^ctrl_axil_rdata\(26),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_wd_err_cnt_reg(2),
      Q => \^ctrl_axil_rdata\(27),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_wd_err_cnt_reg(3),
      Q => \^ctrl_axil_rdata\(28),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_r_wd_err_cnt_reg(4),
      Q => \^ctrl_axil_rdata\(29),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => \ctrl_axil_rdata_reg[2]_i_1_n_0\,
      Q => \^ctrl_axil_rdata\(2),
      R => '0'
    );
\ctrl_axil_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ctrl_axil_rdata[2]_i_2_n_0\,
      I1 => \ctrl_axil_rdata[2]_i_3_n_0\,
      O => \ctrl_axil_rdata_reg[2]_i_1_n_0\,
      S => \RADDR_reg_n_0_[2]\
    );
\ctrl_axil_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => \ctrl_axil_rdata_reg[3]_i_1_n_0\,
      Q => \^ctrl_axil_rdata\(3),
      R => '0'
    );
\ctrl_axil_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ctrl_axil_rdata[3]_i_2_n_0\,
      I1 => \ctrl_axil_rdata[3]_i_3_n_0\,
      O => \ctrl_axil_rdata_reg[3]_i_1_n_0\,
      S => \RADDR_reg_n_0_[2]\
    );
\ctrl_axil_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => \ctrl_axil_rdata_reg[4]_i_1_n_0\,
      Q => \^ctrl_axil_rdata\(4),
      R => '0'
    );
\ctrl_axil_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ctrl_axil_rdata[4]_i_2_n_0\,
      I1 => \ctrl_axil_rdata[4]_i_3_n_0\,
      O => \ctrl_axil_rdata_reg[4]_i_1_n_0\,
      S => \RADDR_reg_n_0_[2]\
    );
\ctrl_axil_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_decerr_cnt_reg(0),
      Q => \^ctrl_axil_rdata\(5),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_decerr_cnt_reg(1),
      Q => \^ctrl_axil_rdata\(6),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_decerr_cnt_reg(2),
      Q => \^ctrl_axil_rdata\(7),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_decerr_cnt_reg(3),
      Q => \^ctrl_axil_rdata\(8),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \ctrl_axil_rdata[29]_i_2_n_0\,
      D => q_w_decerr_cnt_reg(4),
      Q => \^ctrl_axil_rdata\(9),
      R => \ctrl_axil_rdata[29]_i_1_n_0\
    );
\ctrl_axil_rresp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAA"
    )
        port map (
      I0 => \^ctrl_axil_rresp\(0),
      I1 => \ctrl_axil_rresp[1]_i_2_n_0\,
      I2 => aresetn,
      I3 => q_rena_reg_n_0,
      O => \ctrl_axil_rresp[1]_i_1_n_0\
    );
\ctrl_axil_rresp[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEEEEE"
    )
        port map (
      I0 => \RADDR_reg_n_0_[0]\,
      I1 => \RADDR_reg_n_0_[1]\,
      I2 => \RADDR_reg_n_0_[2]\,
      I3 => \RADDR_reg_n_0_[3]\,
      I4 => \RADDR_reg_n_0_[4]\,
      O => \ctrl_axil_rresp[1]_i_2_n_0\
    );
\ctrl_axil_rresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \ctrl_axil_rresp[1]_i_1_n_0\,
      Q => \^ctrl_axil_rresp\(0),
      R => '0'
    );
ctrl_axil_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C00"
    )
        port map (
      I0 => ctrl_axil_rready,
      I1 => q_rena_reg_n_0,
      I2 => \^ctrl_axil_rvalid\,
      I3 => aresetn,
      O => ctrl_axil_rvalid_i_1_n_0
    );
ctrl_axil_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => ctrl_axil_rvalid_i_1_n_0,
      Q => \^ctrl_axil_rvalid\,
      R => '0'
    );
\q_bresp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axil_bresp(0),
      I1 => \q_bresp[1]_i_2_n_0\,
      O => \q_bresp[0]_i_1_n_0\
    );
\q_bresp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => m_axil_bresp(1),
      I1 => \q_bresp[1]_i_2_n_0\,
      I2 => \q_w_wd_cnt[7]_i_5_n_0\,
      I3 => \q_w_wd_cnt[5]_i_2_n_0\,
      O => \q_bresp[1]_i_1_n_0\
    );
\q_bresp[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axil_bvalid,
      I1 => \^s_axil_bready\,
      O => \q_bresp[1]_i_2_n_0\
    );
\q_bresp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \q_bresp[0]_i_1_n_0\,
      Q => \q_bresp_reg_n_0_[0]\,
      R => '0'
    );
\q_bresp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \q_bresp[1]_i_1_n_0\,
      Q => \q_bresp_reg_n_0_[1]\,
      R => '0'
    );
q_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => q_bvalid_reg_n_0,
      I1 => q_w_wd_ena_reg_n_0,
      I2 => \q_w_wd_cnt[7]_i_5_n_0\,
      I3 => \q_w_wd_cnt[5]_i_2_n_0\,
      I4 => \^s_axil_bready\,
      O => q_bvalid_i_1_n_0
    );
q_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => q_bvalid_i_1_n_0,
      Q => q_bvalid_reg_n_0,
      R => '0'
    );
\q_r_decerr_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => q_r_decerr_cnt_reg(0),
      O => \p_0_in__4\(0)
    );
\q_r_decerr_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q_r_decerr_cnt_reg(1),
      I1 => q_r_decerr_cnt_reg(0),
      O => \p_0_in__4\(1)
    );
\q_r_decerr_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => q_r_decerr_cnt_reg(2),
      I1 => q_r_decerr_cnt_reg(0),
      I2 => q_r_decerr_cnt_reg(1),
      O => \p_0_in__4\(2)
    );
\q_r_decerr_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => q_r_decerr_cnt_reg(3),
      I1 => q_r_decerr_cnt_reg(1),
      I2 => q_r_decerr_cnt_reg(0),
      I3 => q_r_decerr_cnt_reg(2),
      O => \p_0_in__4\(3)
    );
\q_r_decerr_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q_rresp_reg_n_0_[1]\,
      I1 => \q_rresp_reg_n_0_[0]\,
      O => q_r_decerr_cnt
    );
\q_r_decerr_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => q_r_decerr_cnt_reg(4),
      I1 => q_r_decerr_cnt_reg(2),
      I2 => q_r_decerr_cnt_reg(0),
      I3 => q_r_decerr_cnt_reg(1),
      I4 => q_r_decerr_cnt_reg(3),
      O => \p_0_in__4\(4)
    );
\q_r_decerr_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_decerr_cnt,
      D => \p_0_in__4\(0),
      Q => q_r_decerr_cnt_reg(0),
      R => clear
    );
\q_r_decerr_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_decerr_cnt,
      D => \p_0_in__4\(1),
      Q => q_r_decerr_cnt_reg(1),
      R => clear
    );
\q_r_decerr_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_decerr_cnt,
      D => \p_0_in__4\(2),
      Q => q_r_decerr_cnt_reg(2),
      R => clear
    );
\q_r_decerr_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_decerr_cnt,
      D => \p_0_in__4\(3),
      Q => q_r_decerr_cnt_reg(3),
      R => clear
    );
\q_r_decerr_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_decerr_cnt,
      D => \p_0_in__4\(4),
      Q => q_r_decerr_cnt_reg(4),
      R => clear
    );
q_r_ena_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^m_axil_arready\,
      I1 => \^s_axil_arvalid\,
      I2 => \^s_axil_rready\,
      I3 => m_axil_rvalid,
      O => q_r_ena_set0
    );
q_r_ena_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => q_r_ena_set0,
      Q => q_r_ena_set,
      R => '0'
    );
\q_r_slverr_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => q_r_slverr_cnt_reg(0),
      O => \p_0_in__3\(0)
    );
\q_r_slverr_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q_r_slverr_cnt_reg(1),
      I1 => q_r_slverr_cnt_reg(0),
      O => \p_0_in__3\(1)
    );
\q_r_slverr_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => q_r_slverr_cnt_reg(2),
      I1 => q_r_slverr_cnt_reg(0),
      I2 => q_r_slverr_cnt_reg(1),
      O => \p_0_in__3\(2)
    );
\q_r_slverr_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => q_r_slverr_cnt_reg(3),
      I1 => q_r_slverr_cnt_reg(1),
      I2 => q_r_slverr_cnt_reg(0),
      I3 => q_r_slverr_cnt_reg(2),
      O => \p_0_in__3\(3)
    );
\q_r_slverr_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_rresp_reg_n_0_[1]\,
      I1 => \q_rresp_reg_n_0_[0]\,
      O => q_r_slverr_cnt
    );
\q_r_slverr_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => q_r_slverr_cnt_reg(4),
      I1 => q_r_slverr_cnt_reg(2),
      I2 => q_r_slverr_cnt_reg(0),
      I3 => q_r_slverr_cnt_reg(1),
      I4 => q_r_slverr_cnt_reg(3),
      O => \p_0_in__3\(4)
    );
\q_r_slverr_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_slverr_cnt,
      D => \p_0_in__3\(0),
      Q => q_r_slverr_cnt_reg(0),
      R => clear
    );
\q_r_slverr_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_slverr_cnt,
      D => \p_0_in__3\(1),
      Q => q_r_slverr_cnt_reg(1),
      R => clear
    );
\q_r_slverr_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_slverr_cnt,
      D => \p_0_in__3\(2),
      Q => q_r_slverr_cnt_reg(2),
      R => clear
    );
\q_r_slverr_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_slverr_cnt,
      D => \p_0_in__3\(3),
      Q => q_r_slverr_cnt_reg(3),
      R => clear
    );
\q_r_slverr_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_r_slverr_cnt,
      D => \p_0_in__3\(4),
      Q => q_r_slverr_cnt_reg(4),
      R => clear
    );
\q_r_wd_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFF00450000"
    )
        port map (
      I0 => q_r_wd_cnt(0),
      I1 => \q_r_wd_cnt[5]_i_2_n_0\,
      I2 => \q_r_wd_cnt[7]_i_5_n_0\,
      I3 => q_r_ena_set,
      I4 => aresetn,
      I5 => C_WD_TIM(0),
      O => \q_r_wd_cnt[0]_i_1_n_0\
    );
\q_r_wd_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB88A888A8BBAB"
    )
        port map (
      I0 => C_WD_TIM(1),
      I1 => \q_r_wd_cnt[7]_i_3_n_0\,
      I2 => \q_r_wd_cnt[7]_i_5_n_0\,
      I3 => \q_r_wd_cnt[5]_i_2_n_0\,
      I4 => q_r_wd_cnt(1),
      I5 => q_r_wd_cnt(0),
      O => \q_r_wd_cnt[1]_i_1_n_0\
    );
\q_r_wd_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB88BB88BB88BA8"
    )
        port map (
      I0 => C_WD_TIM(2),
      I1 => \q_r_wd_cnt[7]_i_3_n_0\,
      I2 => \q_r_wd_cnt[3]_i_2_n_0\,
      I3 => q_r_wd_cnt(2),
      I4 => q_r_wd_cnt(3),
      I5 => \q_r_wd_cnt[5]_i_2_n_0\,
      O => \q_r_wd_cnt[2]_i_1_n_0\
    );
\q_r_wd_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8B88B8BB8B88A8"
    )
        port map (
      I0 => C_WD_TIM(3),
      I1 => \q_r_wd_cnt[7]_i_3_n_0\,
      I2 => \q_r_wd_cnt[3]_i_2_n_0\,
      I3 => q_r_wd_cnt(2),
      I4 => q_r_wd_cnt(3),
      I5 => \q_r_wd_cnt[5]_i_2_n_0\,
      O => \q_r_wd_cnt[3]_i_1_n_0\
    );
\q_r_wd_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => q_r_wd_cnt(1),
      I1 => q_r_wd_cnt(0),
      O => \q_r_wd_cnt[3]_i_2_n_0\
    );
\q_r_wd_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AEAAAEAEA2AAA2"
    )
        port map (
      I0 => C_WD_TIM(4),
      I1 => aresetn,
      I2 => q_r_ena_set,
      I3 => \q_r_wd_cnt[7]_i_5_n_0\,
      I4 => \q_r_wd_cnt[5]_i_2_n_0\,
      I5 => q_r_wd_cnt(4),
      O => \q_r_wd_cnt[4]_i_1_n_0\
    );
\q_r_wd_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB88A88BABB8A8"
    )
        port map (
      I0 => C_WD_TIM(5),
      I1 => \q_r_wd_cnt[7]_i_3_n_0\,
      I2 => \q_r_wd_cnt[7]_i_5_n_0\,
      I3 => \q_r_wd_cnt[5]_i_2_n_0\,
      I4 => q_r_wd_cnt(5),
      I5 => q_r_wd_cnt(4),
      O => \q_r_wd_cnt[5]_i_1_n_0\
    );
\q_r_wd_cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => q_r_wd_cnt(4),
      I1 => q_r_wd_cnt(5),
      I2 => q_r_wd_cnt(7),
      I3 => q_r_wd_cnt(6),
      O => \q_r_wd_cnt[5]_i_2_n_0\
    );
\q_r_wd_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8BBB8B88B888A8"
    )
        port map (
      I0 => C_WD_TIM(6),
      I1 => \q_r_wd_cnt[7]_i_3_n_0\,
      I2 => \q_r_wd_cnt[7]_i_5_n_0\,
      I3 => \q_r_wd_cnt[7]_i_4_n_0\,
      I4 => q_r_wd_cnt(7),
      I5 => q_r_wd_cnt(6),
      O => \q_r_wd_cnt[6]_i_1_n_0\
    );
\q_r_wd_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => q_r_wd_ena_reg_n_0,
      I1 => aresetn,
      O => \q_r_wd_cnt[7]_i_1_n_0\
    );
\q_r_wd_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B88AB8B8B8B8"
    )
        port map (
      I0 => C_WD_TIM(7),
      I1 => \q_r_wd_cnt[7]_i_3_n_0\,
      I2 => q_r_wd_cnt(7),
      I3 => q_r_wd_cnt(6),
      I4 => \q_r_wd_cnt[7]_i_4_n_0\,
      I5 => \q_r_wd_cnt[7]_i_5_n_0\,
      O => \q_r_wd_cnt[7]_i_2_n_0\
    );
\q_r_wd_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => q_r_ena_set,
      I1 => aresetn,
      O => \q_r_wd_cnt[7]_i_3_n_0\
    );
\q_r_wd_cnt[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => q_r_wd_cnt(5),
      I1 => q_r_wd_cnt(4),
      O => \q_r_wd_cnt[7]_i_4_n_0\
    );
\q_r_wd_cnt[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => q_r_wd_cnt(0),
      I1 => q_r_wd_cnt(1),
      I2 => q_r_wd_cnt(2),
      I3 => q_r_wd_cnt(3),
      O => \q_r_wd_cnt[7]_i_5_n_0\
    );
\q_r_wd_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_r_wd_cnt[7]_i_1_n_0\,
      D => \q_r_wd_cnt[0]_i_1_n_0\,
      Q => q_r_wd_cnt(0),
      R => '0'
    );
\q_r_wd_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_r_wd_cnt[7]_i_1_n_0\,
      D => \q_r_wd_cnt[1]_i_1_n_0\,
      Q => q_r_wd_cnt(1),
      R => '0'
    );
\q_r_wd_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_r_wd_cnt[7]_i_1_n_0\,
      D => \q_r_wd_cnt[2]_i_1_n_0\,
      Q => q_r_wd_cnt(2),
      R => '0'
    );
\q_r_wd_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_r_wd_cnt[7]_i_1_n_0\,
      D => \q_r_wd_cnt[3]_i_1_n_0\,
      Q => q_r_wd_cnt(3),
      R => '0'
    );
\q_r_wd_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_r_wd_cnt[7]_i_1_n_0\,
      D => \q_r_wd_cnt[4]_i_1_n_0\,
      Q => q_r_wd_cnt(4),
      R => '0'
    );
\q_r_wd_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_r_wd_cnt[7]_i_1_n_0\,
      D => \q_r_wd_cnt[5]_i_1_n_0\,
      Q => q_r_wd_cnt(5),
      R => '0'
    );
\q_r_wd_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_r_wd_cnt[7]_i_1_n_0\,
      D => \q_r_wd_cnt[6]_i_1_n_0\,
      Q => q_r_wd_cnt(6),
      R => '0'
    );
\q_r_wd_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_r_wd_cnt[7]_i_1_n_0\,
      D => \q_r_wd_cnt[7]_i_2_n_0\,
      Q => q_r_wd_cnt(7),
      R => '0'
    );
q_r_wd_ena_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBAA0000"
    )
        port map (
      I0 => q_r_ena_set1,
      I1 => \q_r_wd_cnt[7]_i_5_n_0\,
      I2 => \q_r_wd_cnt[5]_i_2_n_0\,
      I3 => q_r_wd_ena_reg_n_0,
      I4 => aresetn,
      I5 => \q_rresp[1]_i_2_n_0\,
      O => q_r_wd_ena_i_1_n_0
    );
q_r_wd_ena_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axil_arvalid\,
      I1 => \^m_axil_arready\,
      O => q_r_ena_set1
    );
q_r_wd_ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => q_r_wd_ena_i_1_n_0,
      Q => q_r_wd_ena_reg_n_0,
      R => '0'
    );
\q_r_wd_err_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA00020000"
    )
        port map (
      I0 => aresetn,
      I1 => q_r_wd_cnt(6),
      I2 => q_r_wd_cnt(7),
      I3 => \q_r_wd_cnt[7]_i_4_n_0\,
      I4 => \q_r_wd_cnt[7]_i_5_n_0\,
      I5 => q_r_wd_err_cnt_reg(0),
      O => \q_r_wd_err_cnt[0]_i_1_n_0\
    );
\q_r_wd_err_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => aresetn,
      I1 => \q_r_wd_cnt[7]_i_5_n_0\,
      I2 => \q_r_wd_cnt[5]_i_2_n_0\,
      I3 => q_r_wd_err_cnt_reg(0),
      I4 => q_r_wd_err_cnt_reg(1),
      O => \q_r_wd_err_cnt[1]_i_1_n_0\
    );
\q_r_wd_err_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => aresetn,
      I1 => \q_r_wd_cnt[7]_i_5_n_0\,
      I2 => \q_r_wd_cnt[5]_i_2_n_0\,
      I3 => q_r_wd_err_cnt_reg(1),
      I4 => q_r_wd_err_cnt_reg(0),
      I5 => q_r_wd_err_cnt_reg(2),
      O => \q_r_wd_err_cnt[2]_i_1_n_0\
    );
\q_r_wd_err_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0D2F000000000"
    )
        port map (
      I0 => q_r_wd_err_cnt_reg(2),
      I1 => \q_r_wd_err_cnt[3]_i_2_n_0\,
      I2 => q_r_wd_err_cnt_reg(3),
      I3 => \q_r_wd_cnt[7]_i_5_n_0\,
      I4 => \q_r_wd_cnt[5]_i_2_n_0\,
      I5 => aresetn,
      O => \q_r_wd_err_cnt[3]_i_1_n_0\
    );
\q_r_wd_err_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => q_r_wd_err_cnt_reg(0),
      I1 => q_r_wd_err_cnt_reg(1),
      O => \q_r_wd_err_cnt[3]_i_2_n_0\
    );
\q_r_wd_err_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080000"
    )
        port map (
      I0 => \q_r_wd_err_cnt[4]_i_2_n_0\,
      I1 => \q_r_wd_cnt[7]_i_5_n_0\,
      I2 => \q_r_wd_cnt[5]_i_2_n_0\,
      I3 => q_r_wd_err_cnt_reg(4),
      I4 => aresetn,
      O => \q_r_wd_err_cnt[4]_i_1_n_0\
    );
\q_r_wd_err_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => q_r_wd_err_cnt_reg(4),
      I1 => q_r_wd_err_cnt_reg(0),
      I2 => q_r_wd_err_cnt_reg(1),
      I3 => q_r_wd_err_cnt_reg(3),
      I4 => q_r_wd_err_cnt_reg(2),
      O => \q_r_wd_err_cnt[4]_i_2_n_0\
    );
\q_r_wd_err_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \q_r_wd_err_cnt[0]_i_1_n_0\,
      Q => q_r_wd_err_cnt_reg(0),
      R => '0'
    );
\q_r_wd_err_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \q_r_wd_err_cnt[1]_i_1_n_0\,
      Q => q_r_wd_err_cnt_reg(1),
      R => '0'
    );
\q_r_wd_err_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \q_r_wd_err_cnt[2]_i_1_n_0\,
      Q => q_r_wd_err_cnt_reg(2),
      R => '0'
    );
\q_r_wd_err_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \q_r_wd_err_cnt[3]_i_1_n_0\,
      Q => q_r_wd_err_cnt_reg(3),
      R => '0'
    );
\q_r_wd_err_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \q_r_wd_err_cnt[4]_i_1_n_0\,
      Q => q_r_wd_err_cnt_reg(4),
      R => '0'
    );
q_rena_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40AA"
    )
        port map (
      I0 => q_rena_reg_n_0,
      I1 => \^ctrl_axil_arready\,
      I2 => ctrl_axil_arvalid,
      I3 => aresetn,
      O => q_rena_i_1_n_0
    );
q_rena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => q_rena_i_1_n_0,
      Q => q_rena_reg_n_0,
      R => '0'
    );
\q_rresp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axil_rresp(0),
      I1 => \q_rresp[1]_i_2_n_0\,
      O => \q_rresp[0]_i_1_n_0\
    );
\q_rresp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA30"
    )
        port map (
      I0 => m_axil_rresp(1),
      I1 => \q_r_wd_cnt[5]_i_2_n_0\,
      I2 => \q_r_wd_cnt[7]_i_5_n_0\,
      I3 => \q_rresp[1]_i_2_n_0\,
      O => \q_rresp[1]_i_1_n_0\
    );
\q_rresp[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axil_rvalid,
      I1 => \^s_axil_rready\,
      O => \q_rresp[1]_i_2_n_0\
    );
\q_rresp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \q_rresp[0]_i_1_n_0\,
      Q => \q_rresp_reg_n_0_[0]\,
      R => '0'
    );
\q_rresp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \q_rresp[1]_i_1_n_0\,
      Q => \q_rresp_reg_n_0_[1]\,
      R => '0'
    );
q_rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => q_rvalid_reg_n_0,
      I1 => q_r_wd_ena_reg_n_0,
      I2 => \q_r_wd_cnt[5]_i_2_n_0\,
      I3 => \q_r_wd_cnt[7]_i_5_n_0\,
      I4 => \^s_axil_rready\,
      O => q_rvalid_i_1_n_0
    );
q_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => q_rvalid_i_1_n_0,
      Q => q_rvalid_reg_n_0,
      R => '0'
    );
\q_w_decerr_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => q_w_decerr_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\q_w_decerr_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q_w_decerr_cnt_reg(1),
      I1 => q_w_decerr_cnt_reg(0),
      O => \p_0_in__1\(1)
    );
\q_w_decerr_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => q_w_decerr_cnt_reg(2),
      I1 => q_w_decerr_cnt_reg(0),
      I2 => q_w_decerr_cnt_reg(1),
      O => \p_0_in__1\(2)
    );
\q_w_decerr_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => q_w_decerr_cnt_reg(3),
      I1 => q_w_decerr_cnt_reg(1),
      I2 => q_w_decerr_cnt_reg(0),
      I3 => q_w_decerr_cnt_reg(2),
      O => \p_0_in__1\(3)
    );
\q_w_decerr_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q_bresp_reg_n_0_[1]\,
      I1 => \q_bresp_reg_n_0_[0]\,
      O => q_w_decerr_cnt
    );
\q_w_decerr_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => q_w_decerr_cnt_reg(4),
      I1 => q_w_decerr_cnt_reg(2),
      I2 => q_w_decerr_cnt_reg(0),
      I3 => q_w_decerr_cnt_reg(1),
      I4 => q_w_decerr_cnt_reg(3),
      O => \p_0_in__1\(4)
    );
\q_w_decerr_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_decerr_cnt,
      D => \p_0_in__1\(0),
      Q => q_w_decerr_cnt_reg(0),
      R => clear
    );
\q_w_decerr_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_decerr_cnt,
      D => \p_0_in__1\(1),
      Q => q_w_decerr_cnt_reg(1),
      R => clear
    );
\q_w_decerr_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_decerr_cnt,
      D => \p_0_in__1\(2),
      Q => q_w_decerr_cnt_reg(2),
      R => clear
    );
\q_w_decerr_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_decerr_cnt,
      D => \p_0_in__1\(3),
      Q => q_w_decerr_cnt_reg(3),
      R => clear
    );
\q_w_decerr_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_decerr_cnt,
      D => \p_0_in__1\(4),
      Q => q_w_decerr_cnt_reg(4),
      R => clear
    );
q_w_ena_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^m_axil_awready\,
      I1 => \^s_axil_awvalid\,
      I2 => \^s_axil_bready\,
      I3 => m_axil_bvalid,
      O => q_w_ena_set0
    );
q_w_ena_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => q_w_ena_set0,
      Q => q_w_ena_set,
      R => '0'
    );
\q_w_slverr_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(0),
      O => \p_0_in__0\(0)
    );
\q_w_slverr_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(1),
      I1 => q_w_slverr_cnt_reg(0),
      O => \p_0_in__0\(1)
    );
\q_w_slverr_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(2),
      I1 => q_w_slverr_cnt_reg(0),
      I2 => q_w_slverr_cnt_reg(1),
      O => \p_0_in__0\(2)
    );
\q_w_slverr_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(3),
      I1 => q_w_slverr_cnt_reg(1),
      I2 => q_w_slverr_cnt_reg(0),
      I3 => q_w_slverr_cnt_reg(2),
      O => \p_0_in__0\(3)
    );
\q_w_slverr_cnt[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => clear
    );
\q_w_slverr_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_bresp_reg_n_0_[1]\,
      I1 => \q_bresp_reg_n_0_[0]\,
      O => q_w_slverr_cnt
    );
\q_w_slverr_cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => q_w_slverr_cnt_reg(4),
      I1 => q_w_slverr_cnt_reg(2),
      I2 => q_w_slverr_cnt_reg(0),
      I3 => q_w_slverr_cnt_reg(1),
      I4 => q_w_slverr_cnt_reg(3),
      O => \p_0_in__0\(4)
    );
\q_w_slverr_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_slverr_cnt,
      D => \p_0_in__0\(0),
      Q => q_w_slverr_cnt_reg(0),
      R => clear
    );
\q_w_slverr_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_slverr_cnt,
      D => \p_0_in__0\(1),
      Q => q_w_slverr_cnt_reg(1),
      R => clear
    );
\q_w_slverr_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_slverr_cnt,
      D => \p_0_in__0\(2),
      Q => q_w_slverr_cnt_reg(2),
      R => clear
    );
\q_w_slverr_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_slverr_cnt,
      D => \p_0_in__0\(3),
      Q => q_w_slverr_cnt_reg(3),
      R => clear
    );
\q_w_slverr_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_slverr_cnt,
      D => \p_0_in__0\(4),
      Q => q_w_slverr_cnt_reg(4),
      R => clear
    );
\q_w_wd_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA20AAAAAAEFAA"
    )
        port map (
      I0 => C_WD_TIM(0),
      I1 => \q_w_wd_cnt[5]_i_2_n_0\,
      I2 => \q_w_wd_cnt[7]_i_5_n_0\,
      I3 => aresetn,
      I4 => q_w_ena_set,
      I5 => q_w_wd_cnt(0),
      O => p_1_in(0)
    );
\q_w_wd_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFAA20AA20AAEF"
    )
        port map (
      I0 => C_WD_TIM(1),
      I1 => \q_w_wd_cnt[5]_i_2_n_0\,
      I2 => \q_w_wd_cnt[7]_i_5_n_0\,
      I3 => \q_w_wd_cnt[7]_i_3_n_0\,
      I4 => q_w_wd_cnt(1),
      I5 => q_w_wd_cnt(0),
      O => p_1_in(1)
    );
\q_w_wd_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0FF00FE0"
    )
        port map (
      I0 => C_WD_TIM(2),
      I1 => \q_w_wd_cnt[5]_i_2_n_0\,
      I2 => \q_w_wd_cnt[3]_i_2_n_0\,
      I3 => q_w_wd_cnt(2),
      I4 => q_w_wd_cnt(3),
      I5 => \q_w_wd_cnt[7]_i_3_n_0\,
      O => p_1_in(2)
    );
\q_w_wd_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFF0F00E0"
    )
        port map (
      I0 => C_WD_TIM(3),
      I1 => \q_w_wd_cnt[5]_i_2_n_0\,
      I2 => \q_w_wd_cnt[3]_i_2_n_0\,
      I3 => q_w_wd_cnt(2),
      I4 => q_w_wd_cnt(3),
      I5 => \q_w_wd_cnt[7]_i_3_n_0\,
      O => p_1_in(3)
    );
\q_w_wd_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => q_w_wd_cnt(1),
      I1 => q_w_wd_cnt(0),
      O => \q_w_wd_cnt[3]_i_2_n_0\
    );
\q_w_wd_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2FAAAAAAE0AA"
    )
        port map (
      I0 => C_WD_TIM(4),
      I1 => \q_w_wd_cnt[5]_i_2_n_0\,
      I2 => \q_w_wd_cnt[7]_i_5_n_0\,
      I3 => aresetn,
      I4 => q_w_ena_set,
      I5 => q_w_wd_cnt(4),
      O => p_1_in(4)
    );
\q_w_wd_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFAA20AA2FAAE0"
    )
        port map (
      I0 => C_WD_TIM(5),
      I1 => \q_w_wd_cnt[5]_i_2_n_0\,
      I2 => \q_w_wd_cnt[7]_i_5_n_0\,
      I3 => \q_w_wd_cnt[7]_i_3_n_0\,
      I4 => q_w_wd_cnt(5),
      I5 => q_w_wd_cnt(4),
      O => p_1_in(5)
    );
\q_w_wd_cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => q_w_wd_cnt(7),
      I1 => q_w_wd_cnt(6),
      I2 => q_w_wd_cnt(4),
      I3 => q_w_wd_cnt(5),
      O => \q_w_wd_cnt[5]_i_2_n_0\
    );
\q_w_wd_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAF00EF0F0"
    )
        port map (
      I0 => C_WD_TIM(6),
      I1 => q_w_wd_cnt(7),
      I2 => q_w_wd_cnt(6),
      I3 => \q_w_wd_cnt[7]_i_4_n_0\,
      I4 => \q_w_wd_cnt[7]_i_5_n_0\,
      I5 => \q_w_wd_cnt[7]_i_3_n_0\,
      O => p_1_in(6)
    );
\q_w_wd_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => q_w_wd_ena_reg_n_0,
      I1 => aresetn,
      O => \q_w_wd_cnt[7]_i_1_n_0\
    );
\q_w_wd_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B88AB8B8B8B8"
    )
        port map (
      I0 => C_WD_TIM(7),
      I1 => \q_w_wd_cnt[7]_i_3_n_0\,
      I2 => q_w_wd_cnt(7),
      I3 => q_w_wd_cnt(6),
      I4 => \q_w_wd_cnt[7]_i_4_n_0\,
      I5 => \q_w_wd_cnt[7]_i_5_n_0\,
      O => p_1_in(7)
    );
\q_w_wd_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => q_w_ena_set,
      I1 => aresetn,
      O => \q_w_wd_cnt[7]_i_3_n_0\
    );
\q_w_wd_cnt[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => q_w_wd_cnt(5),
      I1 => q_w_wd_cnt(4),
      O => \q_w_wd_cnt[7]_i_4_n_0\
    );
\q_w_wd_cnt[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => q_w_wd_cnt(0),
      I1 => q_w_wd_cnt(1),
      I2 => q_w_wd_cnt(2),
      I3 => q_w_wd_cnt(3),
      O => \q_w_wd_cnt[7]_i_5_n_0\
    );
\q_w_wd_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_w_wd_cnt[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => q_w_wd_cnt(0),
      R => '0'
    );
\q_w_wd_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_w_wd_cnt[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => q_w_wd_cnt(1),
      R => '0'
    );
\q_w_wd_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_w_wd_cnt[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => q_w_wd_cnt(2),
      R => '0'
    );
\q_w_wd_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_w_wd_cnt[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => q_w_wd_cnt(3),
      R => '0'
    );
\q_w_wd_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_w_wd_cnt[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => q_w_wd_cnt(4),
      R => '0'
    );
\q_w_wd_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_w_wd_cnt[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => q_w_wd_cnt(5),
      R => '0'
    );
\q_w_wd_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_w_wd_cnt[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => q_w_wd_cnt(6),
      R => '0'
    );
\q_w_wd_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \q_w_wd_cnt[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => q_w_wd_cnt(7),
      R => '0'
    );
q_w_wd_ena_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFAA0000"
    )
        port map (
      I0 => q_w_wd_ena0,
      I1 => \q_w_wd_cnt[5]_i_2_n_0\,
      I2 => \q_w_wd_cnt[7]_i_5_n_0\,
      I3 => q_w_wd_ena_reg_n_0,
      I4 => aresetn,
      I5 => \q_bresp[1]_i_2_n_0\,
      O => q_w_wd_ena_i_1_n_0
    );
q_w_wd_ena_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axil_awvalid\,
      I1 => \^m_axil_awready\,
      O => q_w_wd_ena0
    );
q_w_wd_ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => q_w_wd_ena_i_1_n_0,
      Q => q_w_wd_ena_reg_n_0,
      R => '0'
    );
\q_w_wd_err_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(0),
      O => \p_0_in__2\(0)
    );
\q_w_wd_err_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(1),
      I1 => q_w_wd_err_cnt_reg(0),
      O => \p_0_in__2\(1)
    );
\q_w_wd_err_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(2),
      I1 => q_w_wd_err_cnt_reg(0),
      I2 => q_w_wd_err_cnt_reg(1),
      O => \p_0_in__2\(2)
    );
\q_w_wd_err_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(3),
      I1 => q_w_wd_err_cnt_reg(1),
      I2 => q_w_wd_err_cnt_reg(0),
      I3 => q_w_wd_err_cnt_reg(2),
      O => \p_0_in__2\(3)
    );
\q_w_wd_err_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \q_w_wd_cnt[7]_i_5_n_0\,
      I1 => q_w_wd_cnt(5),
      I2 => q_w_wd_cnt(4),
      I3 => q_w_wd_cnt(6),
      I4 => q_w_wd_cnt(7),
      O => q_w_wd_cnt2
    );
\q_w_wd_err_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => q_w_wd_err_cnt_reg(4),
      I1 => q_w_wd_err_cnt_reg(2),
      I2 => q_w_wd_err_cnt_reg(0),
      I3 => q_w_wd_err_cnt_reg(1),
      I4 => q_w_wd_err_cnt_reg(3),
      O => \p_0_in__2\(4)
    );
\q_w_wd_err_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_wd_cnt2,
      D => \p_0_in__2\(0),
      Q => q_w_wd_err_cnt_reg(0),
      R => clear
    );
\q_w_wd_err_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_wd_cnt2,
      D => \p_0_in__2\(1),
      Q => q_w_wd_err_cnt_reg(1),
      R => clear
    );
\q_w_wd_err_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_wd_cnt2,
      D => \p_0_in__2\(2),
      Q => q_w_wd_err_cnt_reg(2),
      R => clear
    );
\q_w_wd_err_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_wd_cnt2,
      D => \p_0_in__2\(3),
      Q => q_w_wd_err_cnt_reg(3),
      R => clear
    );
\q_w_wd_err_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => q_w_wd_cnt2,
      D => \p_0_in__2\(4),
      Q => q_w_wd_err_cnt_reg(4),
      R => clear
    );
s_axil_bvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axil_bvalid,
      I1 => q_bvalid_reg_n_0,
      O => s_axil_bvalid
    );
s_axil_rvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axil_rvalid,
      I1 => q_rvalid_reg_n_0,
      O => s_axil_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    i_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axil_awready : in STD_LOGIC;
    m_axil_awvalid : out STD_LOGIC;
    m_axil_awaddr : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axil_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_wready : in STD_LOGIC;
    m_axil_wvalid : out STD_LOGIC;
    m_axil_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axil_bready : out STD_LOGIC;
    m_axil_bvalid : in STD_LOGIC;
    m_axil_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axil_arready : in STD_LOGIC;
    m_axil_arvalid : out STD_LOGIC;
    m_axil_araddr : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axil_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_rready : out STD_LOGIC;
    m_axil_rvalid : in STD_LOGIC;
    m_axil_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_awready : out STD_LOGIC;
    s_axil_awvalid : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_wready : out STD_LOGIC;
    s_axil_wvalid : in STD_LOGIC;
    s_axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axil_bready : in STD_LOGIC;
    s_axil_bvalid : out STD_LOGIC;
    s_axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_arready : out STD_LOGIC;
    s_axil_arvalid : in STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_rready : in STD_LOGIC;
    s_axil_rvalid : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ctrl_axil_awready : out STD_LOGIC;
    ctrl_axil_awvalid : in STD_LOGIC;
    ctrl_axil_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ctrl_axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ctrl_axil_wready : out STD_LOGIC;
    ctrl_axil_wvalid : in STD_LOGIC;
    ctrl_axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl_axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ctrl_axil_bready : in STD_LOGIC;
    ctrl_axil_bvalid : out STD_LOGIC;
    ctrl_axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ctrl_axil_arready : out STD_LOGIC;
    ctrl_axil_arvalid : in STD_LOGIC;
    ctrl_axil_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ctrl_axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ctrl_axil_rready : in STD_LOGIC;
    ctrl_axil_rvalid : out STD_LOGIC;
    ctrl_axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctrl_axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axil_fw_0,axil_fw,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axil_fw,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^ctrl_axil_rdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_inst_ctrl_axil_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ctrl_axil_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ctrl_axil_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ctrl_axil_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ctrl_axil_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal NLW_inst_m_axil_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axil_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axil_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axil_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDR_W : string;
  attribute C_ADDR_W of inst : label is "16'sb0000000000000101";
  attribute G_ADDR_W : string;
  attribute G_ADDR_W of inst : label is "16'sb0000000000010100";
  attribute G_CNT_WDT : string;
  attribute G_CNT_WDT of inst : label is "16'sb0000000000000100";
  attribute G_CTRL_ADDR_W : string;
  attribute G_CTRL_ADDR_W of inst : label is "16'sb0000000000000101";
  attribute G_DATA_W : string;
  attribute G_DATA_W of inst : label is "16'sb0000000000100000";
  attribute G_RD_DECERR_ADDR : string;
  attribute G_RD_DECERR_ADDR of inst : label is "5'b10000";
  attribute G_RD_SLVERR_ADDR : string;
  attribute G_RD_SLVERR_ADDR of inst : label is "5'b01100";
  attribute G_RD_WD_ERR_ADDR : string;
  attribute G_RD_WD_ERR_ADDR of inst : label is "5'b10100";
  attribute G_RG_ST_ERR_ADDR : string;
  attribute G_RG_ST_ERR_ADDR of inst : label is "5'b11000";
  attribute G_WD_WDT : string;
  attribute G_WD_WDT of inst : label is "16'sb0000000000001000";
  attribute G_WR_DECERR_ADDR : string;
  attribute G_WR_DECERR_ADDR of inst : label is "5'b00100";
  attribute G_WR_SLVERR_ADDR : string;
  attribute G_WR_SLVERR_ADDR of inst : label is "5'b00000";
  attribute G_WR_WD_ERR_ADDR : string;
  attribute G_WR_WD_ERR_ADDR of inst : label is "5'b01000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ctrl_axil_arready : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil ARREADY";
  attribute X_INTERFACE_INFO of ctrl_axil_arvalid : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil ARVALID";
  attribute X_INTERFACE_INFO of ctrl_axil_awready : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil AWREADY";
  attribute X_INTERFACE_INFO of ctrl_axil_awvalid : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil AWVALID";
  attribute X_INTERFACE_INFO of ctrl_axil_bready : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil BREADY";
  attribute X_INTERFACE_INFO of ctrl_axil_bvalid : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil BVALID";
  attribute X_INTERFACE_INFO of ctrl_axil_rready : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil RREADY";
  attribute X_INTERFACE_INFO of ctrl_axil_rvalid : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil RVALID";
  attribute X_INTERFACE_INFO of ctrl_axil_wready : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil WREADY";
  attribute X_INTERFACE_INFO of ctrl_axil_wvalid : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil WVALID";
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF ctrl_axil:m_axil:s_axil, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axil_arready : signal is "xilinx.com:interface:aximm:1.0 m_axil ARREADY";
  attribute X_INTERFACE_INFO of m_axil_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axil ARVALID";
  attribute X_INTERFACE_INFO of m_axil_awready : signal is "xilinx.com:interface:aximm:1.0 m_axil AWREADY";
  attribute X_INTERFACE_INFO of m_axil_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axil AWVALID";
  attribute X_INTERFACE_INFO of m_axil_bready : signal is "xilinx.com:interface:aximm:1.0 m_axil BREADY";
  attribute X_INTERFACE_INFO of m_axil_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axil BVALID";
  attribute X_INTERFACE_INFO of m_axil_rready : signal is "xilinx.com:interface:aximm:1.0 m_axil RREADY";
  attribute X_INTERFACE_INFO of m_axil_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axil RVALID";
  attribute X_INTERFACE_INFO of m_axil_wready : signal is "xilinx.com:interface:aximm:1.0 m_axil WREADY";
  attribute X_INTERFACE_INFO of m_axil_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axil WVALID";
  attribute X_INTERFACE_INFO of s_axil_arready : signal is "xilinx.com:interface:aximm:1.0 s_axil ARREADY";
  attribute X_INTERFACE_INFO of s_axil_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil ARVALID";
  attribute X_INTERFACE_INFO of s_axil_awready : signal is "xilinx.com:interface:aximm:1.0 s_axil AWREADY";
  attribute X_INTERFACE_INFO of s_axil_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil AWVALID";
  attribute X_INTERFACE_INFO of s_axil_bready : signal is "xilinx.com:interface:aximm:1.0 s_axil BREADY";
  attribute X_INTERFACE_INFO of s_axil_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil BVALID";
  attribute X_INTERFACE_INFO of s_axil_rready : signal is "xilinx.com:interface:aximm:1.0 s_axil RREADY";
  attribute X_INTERFACE_INFO of s_axil_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil RVALID";
  attribute X_INTERFACE_INFO of s_axil_wready : signal is "xilinx.com:interface:aximm:1.0 s_axil WREADY";
  attribute X_INTERFACE_INFO of s_axil_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axil WVALID";
  attribute X_INTERFACE_INFO of ctrl_axil_araddr : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil ARADDR";
  attribute X_INTERFACE_INFO of ctrl_axil_arprot : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil ARPROT";
  attribute X_INTERFACE_INFO of ctrl_axil_awaddr : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil AWADDR";
  attribute X_INTERFACE_INFO of ctrl_axil_awprot : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil AWPROT";
  attribute X_INTERFACE_INFO of ctrl_axil_bresp : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil BRESP";
  attribute X_INTERFACE_INFO of ctrl_axil_rdata : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil RDATA";
  attribute X_INTERFACE_INFO of ctrl_axil_rresp : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil RRESP";
  attribute X_INTERFACE_PARAMETER of ctrl_axil_rresp : signal is "XIL_INTERFACENAME ctrl_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ctrl_axil_wdata : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil WDATA";
  attribute X_INTERFACE_INFO of ctrl_axil_wstrb : signal is "xilinx.com:interface:aximm:1.0 ctrl_axil WSTRB";
  attribute X_INTERFACE_INFO of m_axil_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axil ARADDR";
  attribute X_INTERFACE_INFO of m_axil_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axil ARPROT";
  attribute X_INTERFACE_INFO of m_axil_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axil AWADDR";
  attribute X_INTERFACE_INFO of m_axil_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axil AWPROT";
  attribute X_INTERFACE_INFO of m_axil_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axil BRESP";
  attribute X_INTERFACE_INFO of m_axil_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axil RDATA";
  attribute X_INTERFACE_INFO of m_axil_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axil RRESP";
  attribute X_INTERFACE_PARAMETER of m_axil_rresp : signal is "XIL_INTERFACENAME m_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axil_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axil WDATA";
  attribute X_INTERFACE_INFO of m_axil_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axil WSTRB";
  attribute X_INTERFACE_INFO of s_axil_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axil ARADDR";
  attribute X_INTERFACE_INFO of s_axil_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axil ARPROT";
  attribute X_INTERFACE_INFO of s_axil_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axil AWADDR";
  attribute X_INTERFACE_INFO of s_axil_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axil AWPROT";
  attribute X_INTERFACE_INFO of s_axil_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axil BRESP";
  attribute X_INTERFACE_INFO of s_axil_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axil RDATA";
  attribute X_INTERFACE_INFO of s_axil_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axil RRESP";
  attribute X_INTERFACE_PARAMETER of s_axil_rresp : signal is "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axil_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axil WDATA";
  attribute X_INTERFACE_INFO of s_axil_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axil WSTRB";
begin
  ctrl_axil_awready <= \<const1>\;
  ctrl_axil_bresp(1) <= \<const0>\;
  ctrl_axil_bresp(0) <= \<const0>\;
  ctrl_axil_bvalid <= \<const0>\;
  ctrl_axil_rdata(31) <= \<const0>\;
  ctrl_axil_rdata(30) <= \<const0>\;
  ctrl_axil_rdata(29 downto 0) <= \^ctrl_axil_rdata\(29 downto 0);
  ctrl_axil_wready <= \<const1>\;
  m_axil_arprot(2) <= \<const0>\;
  m_axil_arprot(1) <= \<const0>\;
  m_axil_arprot(0) <= \<const0>\;
  m_axil_awprot(2) <= \<const0>\;
  m_axil_awprot(1) <= \<const0>\;
  m_axil_awprot(0) <= \<const0>\;
  s_axil_bresp(1) <= \<const0>\;
  s_axil_bresp(0) <= \<const0>\;
  s_axil_rresp(1) <= \<const0>\;
  s_axil_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axil_fw
     port map (
      aresetn => aresetn,
      ctrl_axil_araddr(4 downto 0) => ctrl_axil_araddr(4 downto 0),
      ctrl_axil_arprot(2 downto 0) => B"000",
      ctrl_axil_arready => ctrl_axil_arready,
      ctrl_axil_arvalid => ctrl_axil_arvalid,
      ctrl_axil_awaddr(4 downto 0) => B"00000",
      ctrl_axil_awprot(2 downto 0) => B"000",
      ctrl_axil_awready => NLW_inst_ctrl_axil_awready_UNCONNECTED,
      ctrl_axil_awvalid => '0',
      ctrl_axil_bready => '0',
      ctrl_axil_bresp(1 downto 0) => NLW_inst_ctrl_axil_bresp_UNCONNECTED(1 downto 0),
      ctrl_axil_bvalid => NLW_inst_ctrl_axil_bvalid_UNCONNECTED,
      ctrl_axil_rdata(31 downto 30) => NLW_inst_ctrl_axil_rdata_UNCONNECTED(31 downto 30),
      ctrl_axil_rdata(29 downto 0) => \^ctrl_axil_rdata\(29 downto 0),
      ctrl_axil_rready => ctrl_axil_rready,
      ctrl_axil_rresp(1 downto 0) => ctrl_axil_rresp(1 downto 0),
      ctrl_axil_rvalid => ctrl_axil_rvalid,
      ctrl_axil_wdata(31 downto 0) => B"00000000000000000000000000000000",
      ctrl_axil_wready => NLW_inst_ctrl_axil_wready_UNCONNECTED,
      ctrl_axil_wstrb(3 downto 0) => B"0000",
      ctrl_axil_wvalid => '0',
      i_clk => i_clk,
      i_len(7 downto 0) => i_len(7 downto 0),
      m_axil_araddr(19 downto 0) => m_axil_araddr(19 downto 0),
      m_axil_arprot(2 downto 0) => NLW_inst_m_axil_arprot_UNCONNECTED(2 downto 0),
      m_axil_arready => m_axil_arready,
      m_axil_arvalid => m_axil_arvalid,
      m_axil_awaddr(19 downto 0) => m_axil_awaddr(19 downto 0),
      m_axil_awprot(2 downto 0) => NLW_inst_m_axil_awprot_UNCONNECTED(2 downto 0),
      m_axil_awready => m_axil_awready,
      m_axil_awvalid => m_axil_awvalid,
      m_axil_bready => m_axil_bready,
      m_axil_bresp(1 downto 0) => m_axil_bresp(1 downto 0),
      m_axil_bvalid => m_axil_bvalid,
      m_axil_rdata(31 downto 0) => m_axil_rdata(31 downto 0),
      m_axil_rready => m_axil_rready,
      m_axil_rresp(1 downto 0) => m_axil_rresp(1 downto 0),
      m_axil_rvalid => m_axil_rvalid,
      m_axil_wdata(31 downto 0) => m_axil_wdata(31 downto 0),
      m_axil_wready => m_axil_wready,
      m_axil_wstrb(3 downto 0) => m_axil_wstrb(3 downto 0),
      m_axil_wvalid => m_axil_wvalid,
      s_axil_araddr(19 downto 0) => s_axil_araddr(19 downto 0),
      s_axil_arprot(2 downto 0) => B"000",
      s_axil_arready => s_axil_arready,
      s_axil_arvalid => s_axil_arvalid,
      s_axil_awaddr(19 downto 0) => s_axil_awaddr(19 downto 0),
      s_axil_awprot(2 downto 0) => B"000",
      s_axil_awready => s_axil_awready,
      s_axil_awvalid => s_axil_awvalid,
      s_axil_bready => s_axil_bready,
      s_axil_bresp(1 downto 0) => NLW_inst_s_axil_bresp_UNCONNECTED(1 downto 0),
      s_axil_bvalid => s_axil_bvalid,
      s_axil_rdata(31 downto 0) => s_axil_rdata(31 downto 0),
      s_axil_rready => s_axil_rready,
      s_axil_rresp(1 downto 0) => NLW_inst_s_axil_rresp_UNCONNECTED(1 downto 0),
      s_axil_rvalid => s_axil_rvalid,
      s_axil_wdata(31 downto 0) => s_axil_wdata(31 downto 0),
      s_axil_wready => s_axil_wready,
      s_axil_wstrb(3 downto 0) => s_axil_wstrb(3 downto 0),
      s_axil_wvalid => s_axil_wvalid
    );
end STRUCTURE;
