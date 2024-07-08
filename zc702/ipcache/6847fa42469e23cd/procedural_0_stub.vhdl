-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Jul  3 15:10:11 2024
-- Host        : Griffon running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ procedural_0_stub.vhdl
-- Design      : procedural_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i_clk : in STD_LOGIC;
    i_resetn : in STD_LOGIC;
    s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_tvalid : in STD_LOGIC;
    s_tlast : in STD_LOGIC;
    s_axil_awready : out STD_LOGIC;
    s_axil_awvalid : in STD_LOGIC;
    s_axil_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_wready : out STD_LOGIC;
    s_axil_wvalid : in STD_LOGIC;
    s_axil_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axil_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axil_bready : in STD_LOGIC;
    s_axil_bvalid : out STD_LOGIC;
    s_axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axil_arready : out STD_LOGIC;
    s_axil_arvalid : in STD_LOGIC;
    s_axil_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axil_rready : in STD_LOGIC;
    s_axil_rvalid : out STD_LOGIC;
    s_axil_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_resetn,s_tdata[15:0],s_tvalid,s_tlast,s_axil_awready,s_axil_awvalid,s_axil_awaddr[7:0],s_axil_awprot[2:0],s_axil_wready,s_axil_wvalid,s_axil_wdata[63:0],s_axil_wstrb[7:0],s_axil_bready,s_axil_bvalid,s_axil_bresp[1:0],s_axil_arready,s_axil_arvalid,s_axil_araddr[7:0],s_axil_arprot[2:0],s_axil_rready,s_axil_rvalid,s_axil_rdata[63:0],s_axil_rresp[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "procedural,Vivado 2021.1";
begin
end;
