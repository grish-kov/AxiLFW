-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Jul  2 14:20:49 2024
-- Host        : Griffon running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axil_fw_0_stub.vhdl
-- Design      : axil_fw_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,aresetn,i_len[7:0],m_axil_awready,m_axil_awvalid,m_axil_awaddr[19:0],m_axil_awprot[2:0],m_axil_wready,m_axil_wvalid,m_axil_wdata[31:0],m_axil_wstrb[3:0],m_axil_bready,m_axil_bvalid,m_axil_bresp[1:0],m_axil_arready,m_axil_arvalid,m_axil_araddr[19:0],m_axil_arprot[2:0],m_axil_rready,m_axil_rvalid,m_axil_rdata[31:0],m_axil_rresp[1:0],s_axil_awready,s_axil_awvalid,s_axil_awaddr[19:0],s_axil_awprot[2:0],s_axil_wready,s_axil_wvalid,s_axil_wdata[31:0],s_axil_wstrb[3:0],s_axil_bready,s_axil_bvalid,s_axil_bresp[1:0],s_axil_arready,s_axil_arvalid,s_axil_araddr[19:0],s_axil_arprot[2:0],s_axil_rready,s_axil_rvalid,s_axil_rdata[31:0],s_axil_rresp[1:0],ctrl_axil_awready,ctrl_axil_awvalid,ctrl_axil_awaddr[4:0],ctrl_axil_awprot[2:0],ctrl_axil_wready,ctrl_axil_wvalid,ctrl_axil_wdata[31:0],ctrl_axil_wstrb[3:0],ctrl_axil_bready,ctrl_axil_bvalid,ctrl_axil_bresp[1:0],ctrl_axil_arready,ctrl_axil_arvalid,ctrl_axil_araddr[4:0],ctrl_axil_arprot[2:0],ctrl_axil_rready,ctrl_axil_rvalid,ctrl_axil_rdata[31:0],ctrl_axil_rresp[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axil_fw,Vivado 2021.1";
begin
end;
