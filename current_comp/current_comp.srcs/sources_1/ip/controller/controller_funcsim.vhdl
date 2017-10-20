-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:32:04 MDT 2014
-- Date        : Thu Aug 31 11:41:07 2017
-- Host        : ubuntu running 64-bit Ubuntu 14.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/frankqz/c35fb864-558a-4c20-ae81-7faa0c86f8e4/Xilinx/projects/small_data_compression/small_data_compression.srcs/sources_1/ip/controller/controller_funcsim.vhdl
-- Design      : controller
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller_SRL_FIFO is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    bid_gets_fifo_load : out STD_LOGIC;
    O3 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    AW2Arb_BVALID_Cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I4 : in STD_LOGIC;
    wr_data_sng_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_wdata_full_reg : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of controller_SRL_FIFO : entity is "SRL_FIFO";
end controller_SRL_FIFO;

architecture STRUCTURE of controller_SRL_FIFO is
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC;
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_2\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].MUXCY_L_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].XORCY_I\ : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_1 : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_2 : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_3 : STD_LOGIC;
  signal \n_0_axi_bid_int[0]_i_2\ : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_4 : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_5 : STD_LOGIC;
  signal n_0_bid_gets_fifo_load_d1_i_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute BOX_TYPE of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of Data_Exists_DFF : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute BOX_TYPE of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_bvalid_int_i_2 : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of axi_bvalid_int_i_4 : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of axi_bvalid_int_i_5 : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of bid_gets_fifo_load_d1_i_3 : label is "soft_lutpair178";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  bid_gets_fifo_load <= \^bid_gets_fifo_load\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => D,
      Q => \n_0_Addr_Counters[0].FDRE_I\,
      R => I1
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_Addr_Counters[1].MUXCY_L_I\,
      CO(0) => CI,
      CYINIT => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \n_0_Addr_Counters[2].FDRE_I\,
      DI(1) => \n_0_Addr_Counters[1].FDRE_I\,
      DI(0) => \n_0_Addr_Counters[0].FDRE_I\,
      O(3) => \n_0_Addr_Counters[3].XORCY_I\,
      O(2) => \n_0_Addr_Counters[2].XORCY_I\,
      O(1) => \n_0_Addr_Counters[1].XORCY_I\,
      O(0) => D,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
    port map (
      I0 => \n_0_Addr_Counters[2].FDRE_I\,
      I1 => \n_0_Addr_Counters[3].FDRE_I\,
      I2 => \n_0_Addr_Counters[1].FDRE_I\,
      I3 => aw_active_re,
      I4 => \n_0_axi_bid_int[0]_i_2\,
      I5 => \n_0_Addr_Counters[0].FDRE_I\,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => aw_active_re,
      I1 => \n_0_axi_bid_int[0]_i_2\,
      I2 => \n_0_Addr_Counters[2].FDRE_I\,
      I3 => \n_0_Addr_Counters[3].FDRE_I\,
      I4 => \n_0_Addr_Counters[1].FDRE_I\,
      I5 => \n_0_Addr_Counters[0].FDRE_I\,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => \n_0_Addr_Counters[1].XORCY_I\,
      Q => \n_0_Addr_Counters[1].FDRE_I\,
      R => I1
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
    port map (
      I0 => \n_0_Addr_Counters[2].FDRE_I\,
      I1 => \n_0_Addr_Counters[3].FDRE_I\,
      I2 => \n_0_Addr_Counters[0].FDRE_I\,
      I3 => aw_active_re,
      I4 => \n_0_axi_bid_int[0]_i_2\,
      I5 => \n_0_Addr_Counters[1].FDRE_I\,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => \n_0_Addr_Counters[2].XORCY_I\,
      Q => \n_0_Addr_Counters[2].FDRE_I\,
      R => I1
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
    port map (
      I0 => \n_0_Addr_Counters[3].FDRE_I\,
      I1 => \n_0_Addr_Counters[1].FDRE_I\,
      I2 => \n_0_Addr_Counters[0].FDRE_I\,
      I3 => aw_active_re,
      I4 => \n_0_axi_bid_int[0]_i_2\,
      I5 => \n_0_Addr_Counters[2].FDRE_I\,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => \n_0_Addr_Counters[3].XORCY_I\,
      Q => \n_0_Addr_Counters[3].FDRE_I\,
      R => I1
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
    port map (
      I0 => \n_0_Addr_Counters[2].FDRE_I\,
      I1 => \n_0_Addr_Counters[1].FDRE_I\,
      I2 => \n_0_Addr_Counters[0].FDRE_I\,
      I3 => aw_active_re,
      I4 => \n_0_axi_bid_int[0]_i_2\,
      I5 => \n_0_Addr_Counters[3].FDRE_I\,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_Data_Exists_DFF_i_1,
      Q => bid_fifo_not_empty,
      R => I1
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA30"
    )
    port map (
      I0 => bid_fifo_not_empty,
      I1 => I2,
      I2 => p_1_out,
      I3 => n_0_Data_Exists_DFF_i_2,
      I4 => n_0_Data_Exists_DFF_i_3,
      O => n_0_Data_Exists_DFF_i_1
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_Addr_Counters[2].FDRE_I\,
      I1 => \n_0_Addr_Counters[3].FDRE_I\,
      I2 => \n_0_Addr_Counters[1].FDRE_I\,
      I3 => \n_0_Addr_Counters[0].FDRE_I\,
      O => n_0_Data_Exists_DFF_i_2
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
    port map (
      I0 => \^o1\,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(0),
      I4 => \^o2\,
      I5 => bid_gets_fifo_load_d1,
      O => n_0_Data_Exists_DFF_i_3
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \n_0_Addr_Counters[0].FDRE_I\,
      A1 => \n_0_Addr_Counters[1].FDRE_I\,
      A2 => \n_0_Addr_Counters[2].FDRE_I\,
      A3 => \n_0_Addr_Counters[3].FDRE_I\,
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      CLK => s_axi_aclk,
      D => s_axi_awid(0),
      Q => bid_fifo_rd
    );
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
    port map (
      I0 => s_axi_awid(0),
      I1 => bid_fifo_rd,
      I2 => \n_0_axi_bid_int[0]_i_2\,
      I3 => \^bid_gets_fifo_load\,
      I4 => s_axi_bid(0),
      O => O3
    );
\axi_bid_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8888888A888AAAA"
    )
    port map (
      I0 => bid_fifo_not_empty,
      I1 => bid_gets_fifo_load_d1,
      I2 => I3,
      I3 => s_axi_bready,
      I4 => n_0_bid_gets_fifo_load_d1_i_3,
      I5 => \^o1\,
      O => \n_0_axi_bid_int[0]_i_2\
    );
axi_bvalid_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
    port map (
      I0 => AW2Arb_BVALID_Cnt(0),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => s_axi_bready,
      I4 => I3,
      O => \^o2\
    );
axi_bvalid_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAABBBBBBBBB"
    )
    port map (
      I0 => wr_data_sng_sm_cs(0),
      I1 => n_0_axi_bvalid_int_i_4,
      I2 => axi_wdata_full_reg,
      I3 => s_axi_wlast,
      I4 => axi_wr_burst,
      I5 => n_0_axi_bvalid_int_i_5,
      O => \^o1\
    );
axi_bvalid_int_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_axi_wlast,
      I1 => wr_data_sng_sm_cs(1),
      I2 => s_axi_wvalid,
      O => n_0_axi_bvalid_int_i_4
    );
axi_bvalid_int_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
    port map (
      I0 => axi_wdata_full_reg,
      I1 => s_axi_wvalid,
      I2 => p_1_out,
      I3 => wr_data_sng_sm_cs(1),
      O => n_0_axi_bvalid_int_i_5
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000044444444"
    )
    port map (
      I0 => \^o1\,
      I1 => aw_active_re,
      I2 => bid_fifo_not_empty,
      I3 => I4,
      I4 => \^o2\,
      I5 => n_0_bid_gets_fifo_load_d1_i_3,
      O => \^bid_gets_fifo_load\
    );
bid_gets_fifo_load_d1_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(0),
      O => n_0_bid_gets_fifo_load_d1_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller_sng_port_arb is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    p_1_out : out STD_LOGIC;
    arb_sm_cs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    curr_narrow_burst_en : out STD_LOGIC;
    aw_active_re : out STD_LOGIC;
    O1 : out STD_LOGIC;
    ar_active_re : out STD_LOGIC;
    O2 : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aw_active_d1 : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    ar_active_d1 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 0 to 0 );
    I9 : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    curr_narrow_burst : in STD_LOGIC;
    I10 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of controller_sng_port_arb : entity is "sng_port_arb";
end controller_sng_port_arb;

architecture STRUCTURE of controller_sng_port_arb is
  signal \^o1\ : STD_LOGIC;
  signal ar_active_cmb : STD_LOGIC;
  signal \^ar_active_re\ : STD_LOGIC;
  signal \^arb_sm_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^aw_active_re\ : STD_LOGIC;
  signal axi_arready_cmb : STD_LOGIC;
  signal axi_awready_cmb : STD_LOGIC;
  signal last_arb_won : STD_LOGIC;
  signal n_0_ar_active_i_1 : STD_LOGIC;
  signal n_0_ar_active_i_2 : STD_LOGIC;
  signal \n_0_arb_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_arb_sm_cs[0]_i_2\ : STD_LOGIC;
  signal \n_0_arb_sm_cs[0]_i_3\ : STD_LOGIC;
  signal \n_0_arb_sm_cs[1]_i_1\ : STD_LOGIC;
  signal n_0_aw_active_i_1 : STD_LOGIC;
  signal n_0_axi_arready_int_i_2 : STD_LOGIC;
  signal n_0_axi_awready_int_i_3 : STD_LOGIC;
  signal n_0_last_arb_won_i_1 : STD_LOGIC;
  signal n_0_last_arb_won_i_2 : STD_LOGIC;
  signal \^p_0_out\ : STD_LOGIC;
  signal \^p_1_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of act_rd_burst_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bram_we_a[10]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bram_we_a[11]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bram_we_a[12]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bram_we_a[13]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_we_a[14]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_we_a[15]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_we_a[16]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_we_a[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bram_we_a[18]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bram_we_a[19]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bram_we_a[1]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bram_we_a[20]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bram_we_a[21]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bram_we_a[22]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_we_a[23]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_we_a[24]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bram_we_a[25]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bram_we_a[26]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bram_we_a[27]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bram_we_a[28]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_we_a[29]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_we_a[2]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bram_we_a[30]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bram_we_a[31]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bram_we_a[3]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bram_we_a[4]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bram_we_a[5]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bram_we_a[6]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bram_we_a[7]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bram_we_a[8]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bram_we_a[9]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[14]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[14]_i_1__0\ : label is "soft_lutpair0";
begin
  O1 <= \^o1\;
  ar_active_re <= \^ar_active_re\;
  arb_sm_cs(1 downto 0) <= \^arb_sm_cs\(1 downto 0);
  aw_active_re <= \^aw_active_re\;
  p_0_out <= \^p_0_out\;
  p_1_out <= \^p_1_out\;
\GEN_AR_SNG.ar_active_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => \^p_0_out\,
      I1 => s_axi_aresetn,
      I2 => s_axi_rready,
      I3 => I8,
      O => O4
    );
\GEN_NARROW_EN.curr_narrow_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7FFF70707000"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => I9,
      I2 => \^o1\,
      I3 => s_axi_arburst(0),
      I4 => s_axi_arburst(1),
      I5 => curr_narrow_burst,
      O => O3
    );
\GEN_NARROW_EN.curr_narrow_burst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF00EF00EF000000"
    )
    port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(0),
      I2 => I3,
      I3 => \^aw_active_re\,
      I4 => s_axi_awburst(1),
      I5 => s_axi_awburst(0),
      O => curr_narrow_burst_en
    );
act_rd_burst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => I5,
      I1 => \^p_0_out\,
      I2 => ar_active_d1,
      I3 => s_axi_arlen(0),
      O => O2
    );
ar_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAEA0000AA2A"
    )
    port map (
      I0 => \^p_0_out\,
      I1 => \^arb_sm_cs\(0),
      I2 => I7,
      I3 => \^arb_sm_cs\(1),
      I4 => n_0_ar_active_i_2,
      I5 => ar_active_cmb,
      O => n_0_ar_active_i_1
    );
ar_active_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F770000"
    )
    port map (
      I0 => last_arb_won,
      I1 => s_axi_awvalid,
      I2 => I6,
      I3 => \^arb_sm_cs\(1),
      I4 => s_axi_arvalid,
      I5 => \^arb_sm_cs\(0),
      O => n_0_ar_active_i_2
    );
ar_active_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF001F001300"
    )
    port map (
      I0 => last_arb_won,
      I1 => \^arb_sm_cs\(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_arvalid,
      I4 => I2,
      I5 => \^arb_sm_cs\(1),
      O => ar_active_cmb
    );
ar_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_ar_active_i_1,
      Q => \^p_0_out\,
      R => I1
    );
\arb_sm_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FFF800"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => \^arb_sm_cs\(1),
      I2 => \n_0_arb_sm_cs[0]_i_2\,
      I3 => \n_0_arb_sm_cs[0]_i_3\,
      I4 => \^arb_sm_cs\(0),
      O => \n_0_arb_sm_cs[0]_i_1\
    );
\arb_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040005000405050"
    )
    port map (
      I0 => \^arb_sm_cs\(1),
      I1 => I2,
      I2 => s_axi_arvalid,
      I3 => s_axi_awvalid,
      I4 => \^arb_sm_cs\(0),
      I5 => last_arb_won,
      O => \n_0_arb_sm_cs[0]_i_2\
    );
\arb_sm_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFEFEFCCFF2323"
    )
    port map (
      I0 => n_0_axi_awready_int_i_3,
      I1 => \^arb_sm_cs\(0),
      I2 => I2,
      I3 => I6,
      I4 => \^arb_sm_cs\(1),
      I5 => I7,
      O => \n_0_arb_sm_cs[0]_i_3\
    );
\arb_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33000D0D33000101"
    )
    port map (
      I0 => n_0_axi_awready_int_i_3,
      I1 => \^arb_sm_cs\(0),
      I2 => I2,
      I3 => I6,
      I4 => \^arb_sm_cs\(1),
      I5 => I7,
      O => \n_0_arb_sm_cs[1]_i_1\
    );
\arb_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_arb_sm_cs[0]_i_1\,
      Q => \^arb_sm_cs\(0),
      R => I1
    );
\arb_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_arb_sm_cs[1]_i_1\,
      Q => \^arb_sm_cs\(1),
      R => I1
    );
aw_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3377307700440044"
    )
    port map (
      I0 => I2,
      I1 => axi_awready_cmb,
      I2 => \^arb_sm_cs\(0),
      I3 => \^arb_sm_cs\(1),
      I4 => I6,
      I5 => \^p_1_out\,
      O => n_0_aw_active_i_1
    );
aw_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_aw_active_i_1,
      Q => \^p_1_out\,
      R => I1
    );
axi_arready_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007555"
    )
    port map (
      I0 => \^arb_sm_cs\(0),
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => I2,
      I4 => n_0_axi_arready_int_i_2,
      O => axi_arready_cmb
    );
axi_arready_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF7F"
    )
    port map (
      I0 => \^arb_sm_cs\(0),
      I1 => I8,
      I2 => s_axi_rready,
      I3 => \^arb_sm_cs\(1),
      I4 => n_0_ar_active_i_2,
      O => n_0_axi_arready_int_i_2
    );
axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready_cmb,
      Q => s_axi_arready,
      R => I1
    );
axi_awready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011000100010001"
    )
    port map (
      I0 => \^arb_sm_cs\(1),
      I1 => I2,
      I2 => \^arb_sm_cs\(0),
      I3 => n_0_axi_awready_int_i_3,
      I4 => I8,
      I5 => s_axi_rready,
      O => axi_awready_cmb
    );
axi_awready_int_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => last_arb_won,
      I2 => s_axi_awvalid,
      O => n_0_axi_awready_int_i_3
    );
axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready_cmb,
      Q => s_axi_awready,
      R => I1
    );
\bram_we_a[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(0),
      O => bram_we_a(0)
    );
\bram_we_a[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(10),
      O => bram_we_a(10)
    );
\bram_we_a[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(11),
      O => bram_we_a(11)
    );
\bram_we_a[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(12),
      O => bram_we_a(12)
    );
\bram_we_a[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(13),
      O => bram_we_a(13)
    );
\bram_we_a[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(14),
      O => bram_we_a(14)
    );
\bram_we_a[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(15),
      O => bram_we_a(15)
    );
\bram_we_a[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(16),
      O => bram_we_a(16)
    );
\bram_we_a[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(17),
      O => bram_we_a(17)
    );
\bram_we_a[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(18),
      O => bram_we_a(18)
    );
\bram_we_a[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(19),
      O => bram_we_a(19)
    );
\bram_we_a[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(1),
      O => bram_we_a(1)
    );
\bram_we_a[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(20),
      O => bram_we_a(20)
    );
\bram_we_a[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(21),
      O => bram_we_a(21)
    );
\bram_we_a[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(22),
      O => bram_we_a(22)
    );
\bram_we_a[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(23),
      O => bram_we_a(23)
    );
\bram_we_a[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(24),
      O => bram_we_a(24)
    );
\bram_we_a[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(25),
      O => bram_we_a(25)
    );
\bram_we_a[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(26),
      O => bram_we_a(26)
    );
\bram_we_a[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(27),
      O => bram_we_a(27)
    );
\bram_we_a[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(28),
      O => bram_we_a(28)
    );
\bram_we_a[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(29),
      O => bram_we_a(29)
    );
\bram_we_a[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(2),
      O => bram_we_a(2)
    );
\bram_we_a[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(30),
      O => bram_we_a(30)
    );
\bram_we_a[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(31),
      O => bram_we_a(31)
    );
\bram_we_a[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(3),
      O => bram_we_a(3)
    );
\bram_we_a[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(4),
      O => bram_we_a(4)
    );
\bram_we_a[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(5),
      O => bram_we_a(5)
    );
\bram_we_a[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(6),
      O => bram_we_a(6)
    );
\bram_we_a[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(7),
      O => bram_we_a(7)
    );
\bram_we_a[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(8),
      O => bram_we_a(8)
    );
\bram_we_a[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(9),
      O => bram_we_a(9)
    );
brst_zero_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
    port map (
      I0 => \^ar_active_re\,
      I1 => s_axi_arlen(2),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(1),
      I5 => I4,
      O => \^o1\
    );
last_arb_won_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ar_active_cmb,
      I1 => n_0_last_arb_won_i_2,
      I2 => I10,
      I3 => n_0_ar_active_i_2,
      I4 => last_arb_won,
      O => n_0_last_arb_won_i_1
    );
last_arb_won_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080008080808"
    )
    port map (
      I0 => \^arb_sm_cs\(0),
      I1 => I7,
      I2 => \^arb_sm_cs\(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awvalid,
      I5 => I2,
      O => n_0_last_arb_won_i_2
    );
last_arb_won_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_last_arb_won_i_1,
      Q => last_arb_won,
      R => I1
    );
\save_init_bram_addr_ld[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => aw_active_d1,
      O => \^aw_active_re\
    );
\save_init_bram_addr_ld[14]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^p_0_out\,
      I1 => ar_active_d1,
      O => \^ar_active_re\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller_wrap_brst is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    narrow_bram_addr_inc : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    aw_active_re : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    curr_narrow_burst : in STD_LOGIC;
    I1 : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    narrow_addr_int : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    wr_data_sng_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I8 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of controller_wrap_brst : entity is "wrap_brst";
end controller_wrap_brst;

architecture STRUCTURE of controller_wrap_brst is
  signal \^d\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o9\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_6\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_4\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_5\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[6]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[7]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[8]_i_2\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[0]_i_2\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[0]_i_3\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[2]_i_2\ : STD_LOGIC;
  signal \^narrow_bram_addr_inc\ : STD_LOGIC;
  signal save_init_bram_addr_ld : STD_LOGIC_VECTOR ( 14 downto 6 );
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[14]_i_2\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[6]_i_2\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_2\ : label is "soft_lutpair180";
begin
  D(8 downto 0) <= \^d\(8 downto 0);
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O9 <= \^o9\;
  narrow_bram_addr_inc <= \^narrow_bram_addr_inc\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I8,
      I1 => I4,
      I2 => I2,
      I3 => I3,
      O => \^o9\
    );
\ADDR_SNG_PORT.bram_addr_int[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000DD0D"
    )
    port map (
      I0 => I1,
      I1 => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_6\,
      I2 => p_1_out,
      I3 => I5,
      I4 => I7,
      I5 => ar_active_re,
      O => O7
    );
\ADDR_SNG_PORT.bram_addr_int[14]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5DDFFFF"
    )
    port map (
      I0 => curr_wrap_burst_reg,
      I1 => curr_narrow_burst,
      I2 => narrow_bram_addr_inc_d1,
      I3 => \^narrow_bram_addr_inc\,
      I4 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_6\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \^o3\,
      I1 => narrow_addr_int(2),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(1),
      I4 => narrow_addr_int(3),
      I5 => narrow_addr_int(4),
      O => \^narrow_bram_addr_inc\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => s_axi_wvalid,
      I2 => wr_data_sng_sm_cs(1),
      I3 => wr_data_sng_sm_cs(0),
      O => \^o3\
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAA8AAAAA"
    )
    port map (
      I0 => s_axi_awaddr(4),
      I1 => aw_active_re,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I3 => \^o1\,
      I4 => curr_wrap_burst_reg,
      I5 => save_init_bram_addr_ld(10),
      O => \^d\(4)
    );
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAA8AAAAA"
    )
    port map (
      I0 => s_axi_awaddr(5),
      I1 => aw_active_re,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I3 => \^o1\,
      I4 => curr_wrap_burst_reg,
      I5 => save_init_bram_addr_ld(11),
      O => \^d\(5)
    );
\save_init_bram_addr_ld[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F0020"
    )
    port map (
      I0 => \^o9\,
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      I4 => \n_0_save_init_bram_addr_ld[11]_i_4\,
      O => \n_0_save_init_bram_addr_ld[11]_i_2\
    );
\save_init_bram_addr_ld[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => narrow_bram_addr_inc_d1,
      I2 => \^o3\,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_5\,
      I4 => narrow_addr_int(4),
      O => \^o1\
    );
\save_init_bram_addr_ld[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44C004C000C000C0"
    )
    port map (
      I0 => wrap_burst_total(2),
      I1 => I2,
      I2 => wrap_burst_total(0),
      I3 => wrap_burst_total(1),
      I4 => I3,
      I5 => I4,
      O => \n_0_save_init_bram_addr_ld[11]_i_4\
    );
\save_init_bram_addr_ld[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(3),
      O => \n_0_save_init_bram_addr_ld[11]_i_5\
    );
\save_init_bram_addr_ld[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awaddr(6),
      I1 => \^o2\,
      I2 => save_init_bram_addr_ld(12),
      O => \^d\(6)
    );
\save_init_bram_addr_ld[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awaddr(7),
      I1 => \^o2\,
      I2 => save_init_bram_addr_ld(13),
      O => \^d\(7)
    );
\save_init_bram_addr_ld[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awaddr(8),
      I1 => \^o2\,
      I2 => save_init_bram_addr_ld(14),
      O => \^d\(8)
    );
\save_init_bram_addr_ld[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBBBBFFFFFFFF"
    )
    port map (
      I0 => aw_active_re,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \^narrow_bram_addr_inc\,
      I3 => narrow_bram_addr_inc_d1,
      I4 => curr_narrow_burst,
      I5 => curr_wrap_burst_reg,
      O => \^o2\
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAA8AAAAA"
    )
    port map (
      I0 => s_axi_awaddr(0),
      I1 => aw_active_re,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I3 => \^o1\,
      I4 => curr_wrap_burst_reg,
      I5 => \n_0_save_init_bram_addr_ld[6]_i_2\,
      O => \^d\(0)
    );
\save_init_bram_addr_ld[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0B0"
    )
    port map (
      I0 => wrap_burst_total(0),
      I1 => wrap_burst_total(2),
      I2 => save_init_bram_addr_ld(6),
      I3 => wrap_burst_total(1),
      O => \n_0_save_init_bram_addr_ld[6]_i_2\
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAA8AAAAA"
    )
    port map (
      I0 => s_axi_awaddr(1),
      I1 => aw_active_re,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I3 => \^o1\,
      I4 => curr_wrap_burst_reg,
      I5 => \n_0_save_init_bram_addr_ld[7]_i_2\,
      O => \^d\(1)
    );
\save_init_bram_addr_ld[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD00"
    )
    port map (
      I0 => wrap_burst_total(2),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(1),
      I3 => save_init_bram_addr_ld(7),
      O => \n_0_save_init_bram_addr_ld[7]_i_2\
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAA8AAAAA"
    )
    port map (
      I0 => s_axi_awaddr(2),
      I1 => aw_active_re,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I3 => \^o1\,
      I4 => curr_wrap_burst_reg,
      I5 => \n_0_save_init_bram_addr_ld[8]_i_2\,
      O => \^d\(2)
    );
\save_init_bram_addr_ld[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
    port map (
      I0 => wrap_burst_total(0),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(1),
      I3 => save_init_bram_addr_ld(8),
      O => \n_0_save_init_bram_addr_ld[8]_i_2\
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAA8AAAAA"
    )
    port map (
      I0 => s_axi_awaddr(3),
      I1 => aw_active_re,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I3 => \^o1\,
      I4 => curr_wrap_burst_reg,
      I5 => save_init_bram_addr_ld(9),
      O => \^d\(3)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(4),
      Q => save_init_bram_addr_ld(10),
      R => I6
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(5),
      Q => save_init_bram_addr_ld(11),
      R => I6
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(6),
      Q => save_init_bram_addr_ld(12),
      R => I6
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(7),
      Q => save_init_bram_addr_ld(13),
      R => I6
    );
\save_init_bram_addr_ld_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(8),
      Q => save_init_bram_addr_ld(14),
      R => I6
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(0),
      Q => save_init_bram_addr_ld(6),
      R => I6
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(1),
      Q => save_init_bram_addr_ld(7),
      R => I6
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(2),
      Q => save_init_bram_addr_ld(8),
      R => I6
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(3),
      Q => save_init_bram_addr_ld(9),
      R => I6
    );
\wrap_burst_total[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000080000000"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awlen(2),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awlen(1),
      I5 => s_axi_awsize(0),
      O => \n_0_wrap_burst_total[0]_i_2\
    );
\wrap_burst_total[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020008060"
    )
    port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(2),
      I4 => s_axi_awlen(3),
      I5 => s_axi_awsize(1),
      O => \n_0_wrap_burst_total[0]_i_3\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000202020002000"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => \n_0_wrap_burst_total[2]_i_2\,
      I3 => s_axi_awlen(2),
      I4 => s_axi_awlen(3),
      I5 => s_axi_awsize(0),
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(3),
      I4 => s_axi_awlen(2),
      I5 => \n_0_wrap_burst_total[2]_i_2\,
      O => wrap_burst_total_cmb(2)
    );
\wrap_burst_total[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awlen(1),
      O => \n_0_wrap_burst_total[2]_i_2\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => wrap_burst_total_cmb(0),
      Q => wrap_burst_total(0),
      R => I6
    );
\wrap_burst_total_reg[0]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_wrap_burst_total[0]_i_2\,
      I1 => \n_0_wrap_burst_total[0]_i_3\,
      O => wrap_burst_total_cmb(0),
      S => s_axi_awsize(2)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => wrap_burst_total_cmb(1),
      Q => wrap_burst_total(1),
      R => I6
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => wrap_burst_total_cmb(2),
      Q => wrap_burst_total(2),
      R => I6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller_wrap_brst_0 is
  port (
    O5 : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O15 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    bram_addr_inc10_out : out STD_LOGIC;
    O4 : out STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_0_out : in STD_LOGIC;
    I6 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC;
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    axi_rd_burst : in STD_LOGIC;
    I5 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    I7 : in STD_LOGIC;
    brst_zero : in STD_LOGIC;
    end_brst_rd : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    narrow_addr_int : in STD_LOGIC_VECTOR ( 4 downto 0 );
    I8 : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of controller_wrap_brst_0 : entity is "wrap_brst";
end controller_wrap_brst_0;

architecture STRUCTURE of controller_wrap_brst_0 is
  signal \^o1\ : STD_LOGIC;
  signal \^o15\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal RdChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \^bram_addr_inc10_out\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_3\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_3\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_4\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[14]_i_5\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[14]_i_6\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[14]_i_7\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[10]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[11]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[12]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[13]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[14]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[6]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[7]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[8]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[9]\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[2]_i_2__0\ : STD_LOGIC;
  signal \n_0_wrap_burst_total_reg[0]\ : STD_LOGIC;
  signal \n_0_wrap_burst_total_reg[1]\ : STD_LOGIC;
  signal \n_0_wrap_burst_total_reg[2]\ : STD_LOGIC;
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[10]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[6]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[8]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[9]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[10]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1__0\ : label is "soft_lutpair19";
begin
  O1 <= \^o1\;
  O15(2 downto 0) <= \^o15\(2 downto 0);
  O2 <= \^o2\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  bram_addr_inc10_out <= \^bram_addr_inc10_out\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[10]\,
      I1 => \^o1\,
      I2 => s_axi_araddr(5),
      I3 => p_0_out,
      I4 => D(4),
      O => O11
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[11]\,
      I1 => \^o1\,
      I2 => s_axi_araddr(6),
      I3 => p_0_out,
      I4 => D(5),
      O => O12
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F202020"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => \^o1\,
      I2 => p_0_out,
      I3 => I6,
      I4 => s_axi_awaddr(0),
      O => O5
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_3\,
      I1 => \^o1\,
      I2 => s_axi_araddr(1),
      I3 => p_0_out,
      I4 => D(0),
      O => O7
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0B0"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_save_init_bram_addr_ld_reg[6]\,
      I3 => \n_0_wrap_burst_total_reg[1]\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_3\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_3\,
      I1 => \^o1\,
      I2 => s_axi_araddr(2),
      I3 => p_0_out,
      I4 => D(1),
      O => O8
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD00"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[2]\,
      I1 => \n_0_wrap_burst_total_reg[0]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[7]\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_3\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_4\,
      I1 => \^o1\,
      I2 => s_axi_araddr(3),
      I3 => p_0_out,
      I4 => D(2),
      O => O9
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[8]\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_4\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[9]\,
      I1 => \^o1\,
      I2 => s_axi_araddr(4),
      I3 => p_0_out,
      I4 => D(3),
      O => O10
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554226611100044"
    )
    port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => axi_rd_burst,
      I3 => I5,
      I4 => Q(0),
      I5 => \^bram_addr_inc10_out\,
      O => \^o2\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => s_axi_rready,
      I1 => I7,
      I2 => brst_zero,
      I3 => end_brst_rd,
      O => \^bram_addr_inc10_out\
    );
bram_rst_a_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_axi_aresetn,
      O => \^o4\
    );
\save_init_bram_addr_ld[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[10]\,
      I1 => \^o1\,
      I2 => s_axi_araddr(5),
      O => RdChnl_BRAM_Addr_Ld(5)
    );
\save_init_bram_addr_ld[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[11]\,
      I1 => \^o1\,
      I2 => s_axi_araddr(6),
      O => RdChnl_BRAM_Addr_Ld(6)
    );
\save_init_bram_addr_ld[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[12]\,
      I1 => \^o1\,
      I2 => s_axi_araddr(7),
      O => \^o15\(0)
    );
\save_init_bram_addr_ld[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[13]\,
      I1 => \^o1\,
      I2 => s_axi_araddr(8),
      O => \^o15\(1)
    );
\save_init_bram_addr_ld[14]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[14]\,
      I1 => \^o1\,
      I2 => s_axi_araddr(9),
      O => \^o15\(2)
    );
\save_init_bram_addr_ld[14]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004044404"
    )
    port map (
      I0 => Q(3),
      I1 => \^o2\,
      I2 => I1,
      I3 => \^o3\,
      I4 => narrow_bram_addr_inc_d1,
      I5 => \n_0_save_init_bram_addr_ld[14]_i_5\,
      O => \^o1\
    );
\save_init_bram_addr_ld[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => narrow_addr_int(3),
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(2),
      I4 => narrow_addr_int(4),
      O => \^o3\
    );
\save_init_bram_addr_ld[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7775777F777F77"
    )
    port map (
      I0 => curr_wrap_burst_reg,
      I1 => \n_0_save_init_bram_addr_ld[14]_i_6\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_wrap_burst_total_reg[2]\,
      I4 => \n_0_wrap_burst_total_reg[0]\,
      I5 => \n_0_save_init_bram_addr_ld[14]_i_7\,
      O => \n_0_save_init_bram_addr_ld[14]_i_5\
    );
\save_init_bram_addr_ld[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44C004C000C000C0"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[2]\,
      I1 => I2,
      I2 => \n_0_wrap_burst_total_reg[0]\,
      I3 => \n_0_wrap_burst_total_reg[1]\,
      I4 => I3,
      I5 => I4,
      O => \n_0_save_init_bram_addr_ld[14]_i_6\
    );
\save_init_bram_addr_ld[14]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I8,
      I1 => I4,
      I2 => I2,
      I3 => I3,
      O => \n_0_save_init_bram_addr_ld[14]_i_7\
    );
\save_init_bram_addr_ld[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0B0FFFFC0B00000"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_save_init_bram_addr_ld_reg[6]\,
      I3 => \n_0_wrap_burst_total_reg[1]\,
      I4 => \^o1\,
      I5 => s_axi_araddr(1),
      O => RdChnl_BRAM_Addr_Ld(1)
    );
\save_init_bram_addr_ld[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD00FFFFBD000000"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[2]\,
      I1 => \n_0_wrap_burst_total_reg[0]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[7]\,
      I4 => \^o1\,
      I5 => s_axi_araddr(2),
      O => RdChnl_BRAM_Addr_Ld(2)
    );
\save_init_bram_addr_ld[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FFFFFB000000"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[8]\,
      I4 => \^o1\,
      I5 => s_axi_araddr(3),
      O => RdChnl_BRAM_Addr_Ld(3)
    );
\save_init_bram_addr_ld[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[9]\,
      I1 => \^o1\,
      I2 => s_axi_araddr(4),
      O => RdChnl_BRAM_Addr_Ld(4)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(5),
      Q => \n_0_save_init_bram_addr_ld_reg[10]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(6),
      Q => \n_0_save_init_bram_addr_ld_reg[11]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^o15\(0),
      Q => \n_0_save_init_bram_addr_ld_reg[12]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^o15\(1),
      Q => \n_0_save_init_bram_addr_ld_reg[13]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^o15\(2),
      Q => \n_0_save_init_bram_addr_ld_reg[14]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(1),
      Q => \n_0_save_init_bram_addr_ld_reg[6]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(2),
      Q => \n_0_save_init_bram_addr_ld_reg[7]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(3),
      Q => \n_0_save_init_bram_addr_ld_reg[8]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(4),
      Q => \n_0_save_init_bram_addr_ld_reg[9]\,
      R => \^o4\
    );
\wrap_burst_total[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000080000000"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(0),
      I5 => s_axi_arsize(0),
      O => \n_0_wrap_burst_total[0]_i_2__0\
    );
\wrap_burst_total[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041009000"
    )
    port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(2),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arsize(1),
      O => \n_0_wrap_burst_total[0]_i_3__0\
    );
\wrap_burst_total[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000202020002000"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => \n_0_wrap_burst_total[2]_i_2__0\,
      I3 => s_axi_arlen(2),
      I4 => s_axi_arlen(3),
      I5 => s_axi_arsize(0),
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      I5 => \n_0_wrap_burst_total[2]_i_2__0\,
      O => wrap_burst_total_cmb(2)
    );
\wrap_burst_total[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      O => \n_0_wrap_burst_total[2]_i_2__0\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => wrap_burst_total_cmb(0),
      Q => \n_0_wrap_burst_total_reg[0]\,
      R => \^o4\
    );
\wrap_burst_total_reg[0]_i_1__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_wrap_burst_total[0]_i_2__0\,
      I1 => \n_0_wrap_burst_total[0]_i_3__0\,
      O => wrap_burst_total_cmb(0),
      S => s_axi_arsize(2)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => wrap_burst_total_cmb(1),
      Q => \n_0_wrap_burst_total_reg[1]\,
      R => \^o4\
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => wrap_burst_total_cmb(2),
      Q => \n_0_wrap_burst_total_reg[2]\,
      R => \^o4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller_rd_chnl is
  port (
    O1 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    O2 : out STD_LOGIC;
    ar_active_d1 : out STD_LOGIC;
    curr_narrow_burst : out STD_LOGIC;
    O3 : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_7_in : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    O18 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    p_0_out : in STD_LOGIC;
    I6 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of controller_rd_chnl : entity is "rd_chnl";
end controller_rd_chnl;

architecture STRUCTURE of controller_rd_chnl is
  signal \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^o1\ : STD_LOGIC;
  signal \^o13\ : STD_LOGIC;
  signal \^o14\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal act_rd_burst : STD_LOGIC;
  signal act_rd_burst_set : STD_LOGIC;
  signal act_rd_burst_two : STD_LOGIC;
  signal \^ar_active_d1\ : STD_LOGIC;
  signal axi_rd_burst : STD_LOGIC;
  signal axi_rd_burst_two : STD_LOGIC;
  signal axi_rdata_en : STD_LOGIC;
  signal axi_rid_temp : STD_LOGIC;
  signal axi_rvalid_clr_ok : STD_LOGIC;
  signal axi_rvalid_set : STD_LOGIC;
  signal axi_rvalid_set_cmb : STD_LOGIC;
  signal bram_addr_inc : STD_LOGIC;
  signal bram_addr_inc10_out : STD_LOGIC;
  signal brst_cnt_max7_out : STD_LOGIC;
  signal brst_cnt_max_d1 : STD_LOGIC;
  signal brst_one : STD_LOGIC;
  signal brst_one0 : STD_LOGIC;
  signal brst_zero : STD_LOGIC;
  signal curr_fixed_burst : STD_LOGIC;
  signal \^curr_narrow_burst\ : STD_LOGIC;
  signal curr_wrap_burst : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal disable_b2b_brst : STD_LOGIC;
  signal disable_b2b_brst_cmb : STD_LOGIC;
  signal end_brst_rd : STD_LOGIC;
  signal end_brst_rd_clr : STD_LOGIC;
  signal last_bram_addr : STD_LOGIC;
  signal last_bram_addr0 : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[2]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_37\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int[128]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int[129]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int[130]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int[131]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int[132]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int[133]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int[134]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int[135]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int[136]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int[137]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int[138]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int[139]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int[140]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int[141]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int[142]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int[143]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int[144]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int[145]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int[146]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int[147]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int[148]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int[149]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int[150]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int[151]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int[152]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int[153]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int[154]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int[155]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int[156]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int[157]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int[158]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int[159]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int[160]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int[161]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int[162]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int[163]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int[164]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int[165]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int[166]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int[167]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int[168]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int[169]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int[170]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int[171]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int[172]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int[173]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int[174]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int[175]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int[176]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int[177]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int[178]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int[179]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int[180]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int[181]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int[182]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int[183]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int[184]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int[185]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int[186]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int[187]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int[188]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int[189]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int[190]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int[191]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int[192]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int[193]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int[194]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int[195]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int[196]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int[197]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int[198]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int[199]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int[200]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int[201]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int[202]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int[203]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int[204]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int[205]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int[206]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int[207]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int[208]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int[209]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int[210]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int[211]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int[212]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int[213]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int[214]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int[215]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int[216]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int[217]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int[218]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int[219]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int[220]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int[221]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int[222]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int[223]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int[224]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int[225]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int[226]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int[227]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int[228]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int[229]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int[230]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int[231]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int[232]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int[233]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int[234]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int[235]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int[236]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int[237]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int[238]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int[239]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int[240]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int[241]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int[242]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int[243]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int[244]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int[245]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int[246]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int[247]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int[248]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int[249]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int[250]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int[251]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int[252]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int[253]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int[254]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RID_SNG.axi_rid_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RID_SNG.axi_rid_int[0]_i_2\ : STD_LOGIC;
  signal n_0_act_rd_burst_i_1 : STD_LOGIC;
  signal n_0_act_rd_burst_i_4 : STD_LOGIC;
  signal n_0_act_rd_burst_two_i_1 : STD_LOGIC;
  signal n_0_axi_rd_burst_i_1 : STD_LOGIC;
  signal n_0_axi_rd_burst_two_i_1 : STD_LOGIC;
  signal n_0_axi_rd_burst_two_reg : STD_LOGIC;
  signal n_0_axi_rlast_int_i_1 : STD_LOGIC;
  signal n_0_axi_rlast_int_i_2 : STD_LOGIC;
  signal n_0_axi_rvalid_clr_ok_i_1 : STD_LOGIC;
  signal n_0_axi_rvalid_clr_ok_i_2 : STD_LOGIC;
  signal n_0_axi_rvalid_int_i_1 : STD_LOGIC;
  signal n_0_bram_en_int_i_1 : STD_LOGIC;
  signal n_0_bram_en_int_i_2 : STD_LOGIC;
  signal n_0_bram_en_int_i_3 : STD_LOGIC;
  signal n_0_bram_en_int_i_4 : STD_LOGIC;
  signal n_0_bram_en_int_i_5 : STD_LOGIC;
  signal n_0_bram_en_int_i_6 : STD_LOGIC;
  signal n_0_bram_en_int_i_7 : STD_LOGIC;
  signal n_0_bram_en_int_i_8 : STD_LOGIC;
  signal \n_0_brst_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[2]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[3]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[3]_i_2\ : STD_LOGIC;
  signal \n_0_brst_cnt[4]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[4]_i_2\ : STD_LOGIC;
  signal \n_0_brst_cnt[5]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[5]_i_2\ : STD_LOGIC;
  signal \n_0_brst_cnt[6]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[7]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[7]_i_2\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[0]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[1]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[2]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[3]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[4]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[5]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[6]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[7]\ : STD_LOGIC;
  signal n_0_brst_one_i_1 : STD_LOGIC;
  signal n_0_brst_zero_i_1 : STD_LOGIC;
  signal n_0_brst_zero_i_2 : STD_LOGIC;
  signal n_0_brst_zero_i_4 : STD_LOGIC;
  signal n_0_disable_b2b_brst_i_2 : STD_LOGIC;
  signal n_0_disable_b2b_brst_i_3 : STD_LOGIC;
  signal n_0_disable_b2b_brst_i_4 : STD_LOGIC;
  signal n_0_disable_b2b_brst_i_5 : STD_LOGIC;
  signal n_0_end_brst_rd_clr_i_1 : STD_LOGIC;
  signal n_0_end_brst_rd_i_1 : STD_LOGIC;
  signal n_0_last_bram_addr_i_2 : STD_LOGIC;
  signal n_0_last_bram_addr_i_3 : STD_LOGIC;
  signal n_0_last_bram_addr_i_4 : STD_LOGIC;
  signal n_0_last_bram_addr_i_5 : STD_LOGIC;
  signal n_0_last_bram_addr_i_6 : STD_LOGIC;
  signal n_0_pend_rd_op_i_1 : STD_LOGIC;
  signal n_0_pend_rd_op_i_2 : STD_LOGIC;
  signal n_0_pend_rd_op_i_3 : STD_LOGIC;
  signal n_0_pend_rd_op_i_4 : STD_LOGIC;
  signal n_0_pend_rd_op_i_5 : STD_LOGIC;
  signal n_0_pend_rd_op_i_6 : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[0]_i_2\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[0]_i_3\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[1]_i_1\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[1]_i_2\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[1]_i_3\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[2]_i_1\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[2]_i_2\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[2]_i_3\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[2]_i_4\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_1\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_2\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_3\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_4\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_5\ : STD_LOGIC;
  signal n_0_rddata_mux_sel_i_1 : STD_LOGIC;
  signal n_0_rddata_mux_sel_i_3 : STD_LOGIC;
  signal n_11_I_WRAP_BRST : STD_LOGIC;
  signal n_12_I_WRAP_BRST : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\ : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_mod : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^p_7_in\ : STD_LOGIC;
  signal pend_rd_op : STD_LOGIC;
  signal rd_adv_buf29_out : STD_LOGIC;
  signal rd_data_sm_cs : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_skid_buf : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal rd_skid_buf_ld : STD_LOGIC;
  signal rd_skid_buf_ld_cmb : STD_LOGIC;
  signal rd_skid_buf_ld_reg : STD_LOGIC;
  signal rddata_mux_sel : STD_LOGIC;
  signal rddata_mux_sel_cmb : STD_LOGIC;
  signal rlast_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_7\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_8\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_10__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_13__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_17__0\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_8__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_19__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_20__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_21\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_27__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_34__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_38__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_8__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_NARROW_EN.curr_narrow_burst_i_3__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int[128]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int[129]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int[130]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int[131]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int[132]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int[133]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int[134]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int[135]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int[136]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int[137]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int[138]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int[139]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int[140]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int[141]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int[142]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int[143]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int[144]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int[145]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int[146]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int[147]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int[148]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int[149]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int[150]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int[151]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int[152]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int[153]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int[154]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int[155]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int[156]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int[157]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int[158]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int[159]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int[160]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int[161]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int[162]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int[163]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int[164]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int[165]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int[166]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int[167]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int[168]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int[169]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int[170]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int[171]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int[172]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int[173]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int[174]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int[175]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int[176]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int[177]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int[178]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int[179]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int[180]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int[181]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int[182]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int[183]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int[184]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int[185]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int[186]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int[187]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int[188]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int[189]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int[190]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int[191]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int[192]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int[193]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int[194]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int[195]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int[196]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int[197]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int[198]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int[199]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int[200]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int[201]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int[202]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int[203]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int[204]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int[205]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int[206]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int[207]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int[208]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int[209]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int[210]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int[211]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int[212]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int[213]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int[214]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int[215]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int[216]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int[217]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int[218]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int[219]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int[220]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int[221]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int[222]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int[223]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int[224]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int[225]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int[226]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int[227]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int[228]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int[229]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int[230]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int[231]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int[232]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int[233]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int[234]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int[235]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int[236]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int[237]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int[238]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int[239]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int[240]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int[241]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int[242]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int[243]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int[244]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int[245]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int[246]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int[247]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int[248]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int[249]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int[250]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int[251]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int[252]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int[253]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int[254]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_3\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_5\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_RID_SNG.axi_rid_int[0]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \arb_sm_cs[1]_i_3\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of axi_rd_burst_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of axi_rlast_int_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of axi_rvalid_set_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of bram_en_int_i_5 : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of bram_en_int_i_7 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of bram_en_int_i_8 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \brst_cnt[4]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \brst_cnt[5]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \brst_cnt[7]_i_3\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of brst_one_i_2 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of brst_one_i_3 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of brst_zero_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of brst_zero_i_2 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of curr_fixed_burst_reg_i_1 : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of curr_wrap_burst_reg_i_1 : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of disable_b2b_brst_i_4 : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of disable_b2b_brst_i_5 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of last_bram_addr_i_2 : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of last_bram_addr_i_4 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of last_bram_addr_i_5 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of last_bram_addr_i_6 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of pend_rd_op_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of pend_rd_op_i_4 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[1]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[2]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[3]_i_5\ : label is "soft_lutpair37";
begin
  O1 <= \^o1\;
  O13 <= \^o13\;
  O14 <= \^o14\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  ar_active_d1 <= \^ar_active_d1\;
  curr_narrow_burst <= \^curr_narrow_burst\;
  p_7_in <= \^p_7_in\;
  s_axi_rid(0) <= \^s_axi_rid\(0);
\ADDR_SNG_PORT.bram_addr_int[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEF00FFFF"
    )
    port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => narrow_addr_int(4),
      I2 => \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0\,
      I3 => \^curr_narrow_burst\,
      I4 => n_11_I_WRAP_BRST,
      I5 => rd_data_sm_cs(3),
      O => O16
    );
\FSM_sequential_rlast_sm_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
    port map (
      I0 => rlast_sm_cs(2),
      I1 => rlast_sm_cs(0),
      I2 => \n_0_FSM_sequential_rlast_sm_cs[0]_i_2\,
      I3 => \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\,
      I4 => rlast_sm_cs(0),
      O => \n_0_FSM_sequential_rlast_sm_cs[0]_i_1\
    );
\FSM_sequential_rlast_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEFEFEAFFFFFFF"
    )
    port map (
      I0 => rlast_sm_cs(1),
      I1 => act_rd_burst_two,
      I2 => n_0_axi_rd_burst_two_reg,
      I3 => s_axi_rready,
      I4 => \^o4\,
      I5 => axi_rd_burst,
      O => \n_0_FSM_sequential_rlast_sm_cs[0]_i_2\
    );
\FSM_sequential_rlast_sm_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
    port map (
      I0 => rlast_sm_cs(1),
      I1 => rlast_sm_cs(0),
      I2 => \n_0_FSM_sequential_rlast_sm_cs[1]_i_2\,
      I3 => \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\,
      I4 => rlast_sm_cs(1),
      O => \n_0_FSM_sequential_rlast_sm_cs[1]_i_1\
    );
\FSM_sequential_rlast_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001300130013"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => rlast_sm_cs(2),
      I2 => act_rd_burst_two,
      I3 => n_0_axi_rd_burst_two_reg,
      I4 => \^o4\,
      I5 => s_axi_rready,
      O => \n_0_FSM_sequential_rlast_sm_cs[1]_i_2\
    );
\FSM_sequential_rlast_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
    port map (
      I0 => n_0_axi_rd_burst_two_reg,
      I1 => act_rd_burst_two,
      I2 => axi_rd_burst,
      I3 => \n_0_FSM_sequential_rlast_sm_cs[2]_i_2\,
      I4 => \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\,
      I5 => rlast_sm_cs(2),
      O => \n_0_FSM_sequential_rlast_sm_cs[2]_i_1\
    );
\FSM_sequential_rlast_sm_cs[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
    port map (
      I0 => rlast_sm_cs(2),
      I1 => rlast_sm_cs(0),
      I2 => rlast_sm_cs(1),
      I3 => s_axi_rready,
      I4 => \^o4\,
      O => \n_0_FSM_sequential_rlast_sm_cs[2]_i_2\
    );
\FSM_sequential_rlast_sm_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECC98CC98CC98"
    )
    port map (
      I0 => rlast_sm_cs(1),
      I1 => rlast_sm_cs(2),
      I2 => last_bram_addr,
      I3 => rlast_sm_cs(0),
      I4 => \^o4\,
      I5 => s_axi_rready,
      O => \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\
    );
\FSM_sequential_rlast_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_rlast_sm_cs[0]_i_1\,
      Q => rlast_sm_cs(0),
      R => \^o1\
    );
\FSM_sequential_rlast_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_rlast_sm_cs[1]_i_1\,
      Q => rlast_sm_cs(1),
      R => \^o1\
    );
\FSM_sequential_rlast_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_rlast_sm_cs[2]_i_1\,
      Q => rlast_sm_cs(2),
      R => \^o1\
    );
\GEN_AR_SNG.ar_active_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => \^ar_active_d1\,
      R => '0'
    );
\GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0000000E00"
    )
    port map (
      I0 => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\,
      I1 => brst_cnt_max7_out,
      I2 => end_brst_rd_clr,
      I3 => s_axi_aresetn,
      I4 => p_0_out,
      I5 => \^ar_active_d1\,
      O => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\
    );
\GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D00000"
    )
    port map (
      I0 => \^curr_narrow_burst\,
      I1 => narrow_bram_addr_inc,
      I2 => p_0_out,
      I3 => pend_rd_op,
      I4 => brst_zero,
      O => brst_cnt_max7_out
    );
\GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\,
      Q => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\,
      R => '0'
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF4040EA00EAEA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\,
      I2 => narrow_burst_cnt_ld_mod(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\,
      I5 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4045FFFFEAEF0000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I1 => narrow_burst_cnt_ld_mod(0),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\,
      I5 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\,
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBF00BF00BF00"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => ar_active_re,
      I4 => \^curr_narrow_burst\,
      I5 => bram_addr_inc,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      I2 => s_axi_arsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(5),
      I4 => s_axi_arsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFF74440000"
    )
    port map (
      I0 => narrow_addr_int(0),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\,
      I3 => narrow_burst_cnt_ld_mod(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4\,
      I5 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8B874007474"
    )
    port map (
      I0 => narrow_addr_int(0),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\,
      I5 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBF00BF00BF00"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => ar_active_re,
      I4 => \^curr_narrow_burst\,
      I5 => bram_addr_inc,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A88AAA8AABBAAABA"
    )
    port map (
      I0 => narrow_burst_cnt_ld_mod(1),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0\,
      I2 => s_axi_arburst(0),
      I3 => s_axi_arburst(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44440444"
    )
    port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => rd_data_sm_cs(3),
      I1 => n_11_I_WRAP_BRST,
      I2 => \^curr_narrow_burst\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0404FB"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0CCAAAA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\,
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I2 => s_axi_arsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      I4 => s_axi_arsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(4),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3),
      I2 => s_axi_arsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(2),
      I4 => s_axi_arsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(2),
      I2 => s_axi_arsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(1),
      I4 => s_axi_arsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F808FFFFF8080000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\,
      I1 => narrow_burst_cnt_ld_mod(2),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5\,
      I5 => narrow_addr_int(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88FFFF8A880000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5\,
      I5 => narrow_addr_int(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBF00BF00BF00"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => ar_active_re,
      I4 => \^curr_narrow_burst\,
      I5 => bram_addr_inc,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1FF"
    )
    port map (
      I0 => narrow_addr_int(0),
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFABFAAAAAAAA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0\,
      I2 => s_axi_arburst(1),
      I3 => s_axi_arburst(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0\,
      I5 => narrow_burst_cnt_ld_mod(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"595559655965A6AA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0\,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0\,
      I1 => s_axi_arsize(2),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(3)
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I1 => s_axi_arsize(0),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF47FFFFFF47"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(4),
      I1 => s_axi_arsize(0),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(5),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(4),
      I2 => s_axi_arsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3),
      I4 => s_axi_arsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I1 => s_axi_arsize(1),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I3 => s_axi_arsize(0),
      I4 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      I1 => s_axi_arsize(0),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_21__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(0)
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_22__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_araddr(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_23__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_araddr(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_24__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      I3 => s_axi_araddr(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_25__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_araddr(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F808FFFFF8080000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\,
      I1 => narrow_burst_cnt_ld_mod(3),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5\,
      I5 => narrow_addr_int(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD0FFFFFFD00000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5\,
      I5 => narrow_addr_int(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => narrow_addr_int(3),
      I1 => narrow_addr_int(2),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBF00BF00BF00"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => ar_active_re,
      I4 => \^curr_narrow_burst\,
      I5 => bram_addr_inc,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24DB2B24DB24D4D"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(3),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF1404"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0\,
      I1 => s_axi_arburst(0),
      I2 => s_axi_arburst(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0\,
      I4 => narrow_burst_cnt_ld_mod(3),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80002"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(2),
      I4 => narrow_addr_int(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0001FFFFFFFF"
    )
    port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(3),
      I4 => narrow_addr_int(4),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFABFAAAAAAAA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0\,
      I2 => s_axi_arburst(1),
      I3 => s_axi_arburst(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0\,
      I5 => narrow_burst_cnt_ld_mod(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFE0EF1F10"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
    port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(1),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFCE0A0"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0\,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFD5"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32__0\,
      I2 => s_axi_arsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFEEE00AAAEEE"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0\,
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_37\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_19__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0\,
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_20__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000404FF"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFACFFFFFFAFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0\,
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000CA5AA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_24__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555F5DD55005555"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_26__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_27__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40FFFF"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      I3 => \^ar_active_d1\,
      I4 => p_0_out,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arlen(6),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arlen(7),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arlen(4),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5353533F"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0\,
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_32__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0E800BFC0A800"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0\,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_34__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEB28E82"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0\,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => s_axi_arlen(5),
      I1 => s_axi_arlen(4),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arlen(7),
      I5 => s_axi_arlen(6),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arlen(3),
      I5 => s_axi_arlen(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0\,
      I1 => s_axi_arsize(1),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0\,
      I3 => s_axi_arsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_37\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_38__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E320E02"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0\,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_39__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BBB2888"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0\,
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F808FFFFF8080000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\,
      I1 => narrow_burst_cnt_ld_mod(4),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9\,
      I5 => narrow_addr_int(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_41__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\,
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_42__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04440000"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_43__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001050"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_44__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCDCFCDCFDDCFDDF"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_45__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCD0CCDCDDC2DDCE"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0\,
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_46__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228122"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0\,
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_47__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FB0000"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_48__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arlen(1),
      I5 => s_axi_arlen(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arlen(6),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arlen(5),
      I5 => s_axi_arlen(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88FFFF8A880000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9\,
      I5 => narrow_addr_int(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_51__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_52__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_53__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(6)
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_54__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      O => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(5)
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_55__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_araddr(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAA8A8A8AAAAAAA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0\,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I4 => s_axi_arsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBEBEBEBEBEBEBFB"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0\,
      I1 => s_axi_arburst(0),
      I2 => s_axi_arburst(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBFFF"
    )
    port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => n_12_I_WRAP_BRST,
      I2 => \^curr_narrow_burst\,
      I3 => n_11_I_WRAP_BRST,
      I4 => rd_data_sm_cs(3),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => narrow_addr_int(4),
      I1 => narrow_addr_int(3),
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(0),
      I4 => narrow_addr_int(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBF00BF00BF00"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => ar_active_re,
      I4 => \^curr_narrow_burst\,
      I5 => bram_addr_inc,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0\,
      Q => narrow_addr_int(0),
      R => \^o1\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\,
      Q => narrow_addr_int(1),
      R => \^o1\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0\,
      Q => narrow_addr_int(2),
      R => \^o1\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1__0\,
      Q => narrow_addr_int(3),
      R => \^o1\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\,
      CYINIT => '0',
      DI(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18__0\,
      DI(2) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19__0\,
      DI(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20__0\,
      DI(0) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(0),
      O(3 downto 0) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3 downto 0),
      S(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22__0\,
      S(2) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23__0\,
      S(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24__0\,
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1__0\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0\,
      S => s_axi_arsize(2)
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1__0\,
      Q => narrow_addr_int(4),
      R => \^o1\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1__0\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41__0\,
      DI(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42__0\,
      DI(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43__0\,
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44__0\,
      S(2) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45__0\,
      S(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46__0\,
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0\,
      CO(3) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51__0\,
      O(3 downto 0) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7 downto 4),
      S(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52__0\,
      S(2 downto 1) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(6 downto 5),
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => narrow_addr_int(4),
      I1 => \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0\,
      I2 => \^curr_narrow_burst\,
      I3 => n_11_I_WRAP_BRST,
      I4 => rd_data_sm_cs(3),
      O => narrow_bram_addr_inc
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(3),
      O => \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_bram_addr_inc,
      Q => narrow_bram_addr_inc_d1,
      R => \^o1\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF57FF00005700"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => p_0_out,
      I4 => \^ar_active_d1\,
      I5 => narrow_burst_cnt_ld_reg(0),
      O => narrow_burst_cnt_ld_mod(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => narrow_burst_cnt_ld_reg(1),
      O => narrow_burst_cnt_ld_mod(1)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF15FF00001500"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => p_0_out,
      I4 => \^ar_active_d1\,
      I5 => narrow_burst_cnt_ld_reg(2),
      O => narrow_burst_cnt_ld_mod(2)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A2A2AE"
    )
    port map (
      I0 => narrow_burst_cnt_ld_reg(3),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      O => narrow_burst_cnt_ld_mod(3)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FF00000100"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => p_0_out,
      I4 => \^ar_active_d1\,
      I5 => narrow_burst_cnt_ld_reg(4),
      O => narrow_burst_cnt_ld_mod(4)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_mod(0),
      Q => narrow_burst_cnt_ld_reg(0),
      R => \^o1\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_mod(1),
      Q => narrow_burst_cnt_ld_reg(1),
      R => \^o1\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_mod(2),
      Q => narrow_burst_cnt_ld_reg(2),
      R => \^o1\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_mod(3),
      Q => narrow_burst_cnt_ld_reg(3),
      R => \^o1\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_mod(4),
      Q => narrow_burst_cnt_ld_reg(4),
      R => \^o1\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888808088808"
    )
    port map (
      I0 => I9,
      I1 => s_axi_aresetn,
      I2 => n_0_axi_rlast_int_i_2,
      I3 => p_0_out,
      I4 => \^ar_active_d1\,
      I5 => pend_rd_op,
      O => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      O => O18
    );
\GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1\,
      Q => \^curr_narrow_burst\,
      R => '0'
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(0),
      I1 => bram_rddata_a(0),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\,
      Q => s_axi_rdata(0),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(100),
      I1 => bram_rddata_a(100),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1\,
      Q => s_axi_rdata(100),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(101),
      I1 => bram_rddata_a(101),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1\,
      Q => s_axi_rdata(101),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(102),
      I1 => bram_rddata_a(102),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1\,
      Q => s_axi_rdata(102),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(103),
      I1 => bram_rddata_a(103),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1\,
      Q => s_axi_rdata(103),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(104),
      I1 => bram_rddata_a(104),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1\,
      Q => s_axi_rdata(104),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(105),
      I1 => bram_rddata_a(105),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1\,
      Q => s_axi_rdata(105),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(106),
      I1 => bram_rddata_a(106),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1\,
      Q => s_axi_rdata(106),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(107),
      I1 => bram_rddata_a(107),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1\,
      Q => s_axi_rdata(107),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(108),
      I1 => bram_rddata_a(108),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1\,
      Q => s_axi_rdata(108),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(109),
      I1 => bram_rddata_a(109),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1\,
      Q => s_axi_rdata(109),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(10),
      I1 => bram_rddata_a(10),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\,
      Q => s_axi_rdata(10),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(110),
      I1 => bram_rddata_a(110),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1\,
      Q => s_axi_rdata(110),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(111),
      I1 => bram_rddata_a(111),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1\,
      Q => s_axi_rdata(111),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(112),
      I1 => bram_rddata_a(112),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1\,
      Q => s_axi_rdata(112),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(113),
      I1 => bram_rddata_a(113),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1\,
      Q => s_axi_rdata(113),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(114),
      I1 => bram_rddata_a(114),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1\,
      Q => s_axi_rdata(114),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(115),
      I1 => bram_rddata_a(115),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1\,
      Q => s_axi_rdata(115),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(116),
      I1 => bram_rddata_a(116),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1\,
      Q => s_axi_rdata(116),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(117),
      I1 => bram_rddata_a(117),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1\,
      Q => s_axi_rdata(117),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(118),
      I1 => bram_rddata_a(118),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1\,
      Q => s_axi_rdata(118),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(119),
      I1 => bram_rddata_a(119),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1\,
      Q => s_axi_rdata(119),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(11),
      I1 => bram_rddata_a(11),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\,
      Q => s_axi_rdata(11),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(120),
      I1 => bram_rddata_a(120),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1\,
      Q => s_axi_rdata(120),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(121),
      I1 => bram_rddata_a(121),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1\,
      Q => s_axi_rdata(121),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(122),
      I1 => bram_rddata_a(122),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1\,
      Q => s_axi_rdata(122),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(123),
      I1 => bram_rddata_a(123),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1\,
      Q => s_axi_rdata(123),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(124),
      I1 => bram_rddata_a(124),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1\,
      Q => s_axi_rdata(124),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(125),
      I1 => bram_rddata_a(125),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1\,
      Q => s_axi_rdata(125),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(126),
      I1 => bram_rddata_a(126),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1\,
      Q => s_axi_rdata(126),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(127),
      I1 => bram_rddata_a(127),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1\,
      Q => s_axi_rdata(127),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int[128]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(128),
      I1 => bram_rddata_a(128),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int[128]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int_reg[128]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int[128]_i_1\,
      Q => s_axi_rdata(128),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int[129]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(129),
      I1 => bram_rddata_a(129),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int[129]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int_reg[129]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int[129]_i_1\,
      Q => s_axi_rdata(129),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(12),
      I1 => bram_rddata_a(12),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\,
      Q => s_axi_rdata(12),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int[130]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(130),
      I1 => bram_rddata_a(130),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int[130]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int_reg[130]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int[130]_i_1\,
      Q => s_axi_rdata(130),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int[131]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(131),
      I1 => bram_rddata_a(131),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int[131]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int_reg[131]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int[131]_i_1\,
      Q => s_axi_rdata(131),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int[132]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(132),
      I1 => bram_rddata_a(132),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int[132]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int_reg[132]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int[132]_i_1\,
      Q => s_axi_rdata(132),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int[133]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(133),
      I1 => bram_rddata_a(133),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int[133]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int_reg[133]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int[133]_i_1\,
      Q => s_axi_rdata(133),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int[134]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(134),
      I1 => bram_rddata_a(134),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int[134]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int_reg[134]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int[134]_i_1\,
      Q => s_axi_rdata(134),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int[135]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(135),
      I1 => bram_rddata_a(135),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int[135]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int_reg[135]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int[135]_i_1\,
      Q => s_axi_rdata(135),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int[136]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(136),
      I1 => bram_rddata_a(136),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int[136]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int_reg[136]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int[136]_i_1\,
      Q => s_axi_rdata(136),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int[137]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(137),
      I1 => bram_rddata_a(137),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int[137]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int_reg[137]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int[137]_i_1\,
      Q => s_axi_rdata(137),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int[138]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(138),
      I1 => bram_rddata_a(138),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int[138]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int_reg[138]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int[138]_i_1\,
      Q => s_axi_rdata(138),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int[139]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(139),
      I1 => bram_rddata_a(139),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int[139]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int_reg[139]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int[139]_i_1\,
      Q => s_axi_rdata(139),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(13),
      I1 => bram_rddata_a(13),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\,
      Q => s_axi_rdata(13),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int[140]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(140),
      I1 => bram_rddata_a(140),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int[140]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int_reg[140]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int[140]_i_1\,
      Q => s_axi_rdata(140),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int[141]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(141),
      I1 => bram_rddata_a(141),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int[141]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int_reg[141]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int[141]_i_1\,
      Q => s_axi_rdata(141),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int[142]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(142),
      I1 => bram_rddata_a(142),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int[142]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int_reg[142]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int[142]_i_1\,
      Q => s_axi_rdata(142),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int[143]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(143),
      I1 => bram_rddata_a(143),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int[143]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int_reg[143]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int[143]_i_1\,
      Q => s_axi_rdata(143),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int[144]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(144),
      I1 => bram_rddata_a(144),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int[144]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int_reg[144]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int[144]_i_1\,
      Q => s_axi_rdata(144),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int[145]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(145),
      I1 => bram_rddata_a(145),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int[145]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int_reg[145]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int[145]_i_1\,
      Q => s_axi_rdata(145),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int[146]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(146),
      I1 => bram_rddata_a(146),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int[146]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int_reg[146]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int[146]_i_1\,
      Q => s_axi_rdata(146),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int[147]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(147),
      I1 => bram_rddata_a(147),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int[147]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int_reg[147]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int[147]_i_1\,
      Q => s_axi_rdata(147),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int[148]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(148),
      I1 => bram_rddata_a(148),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int[148]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int_reg[148]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int[148]_i_1\,
      Q => s_axi_rdata(148),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int[149]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(149),
      I1 => bram_rddata_a(149),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int[149]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int_reg[149]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int[149]_i_1\,
      Q => s_axi_rdata(149),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(14),
      I1 => bram_rddata_a(14),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\,
      Q => s_axi_rdata(14),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int[150]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(150),
      I1 => bram_rddata_a(150),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int[150]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int_reg[150]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int[150]_i_1\,
      Q => s_axi_rdata(150),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int[151]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(151),
      I1 => bram_rddata_a(151),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int[151]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int_reg[151]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int[151]_i_1\,
      Q => s_axi_rdata(151),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int[152]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(152),
      I1 => bram_rddata_a(152),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int[152]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int_reg[152]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int[152]_i_1\,
      Q => s_axi_rdata(152),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int[153]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(153),
      I1 => bram_rddata_a(153),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int[153]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int_reg[153]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int[153]_i_1\,
      Q => s_axi_rdata(153),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int[154]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(154),
      I1 => bram_rddata_a(154),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int[154]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int_reg[154]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int[154]_i_1\,
      Q => s_axi_rdata(154),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int[155]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(155),
      I1 => bram_rddata_a(155),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int[155]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int_reg[155]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int[155]_i_1\,
      Q => s_axi_rdata(155),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int[156]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(156),
      I1 => bram_rddata_a(156),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int[156]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int_reg[156]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int[156]_i_1\,
      Q => s_axi_rdata(156),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int[157]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(157),
      I1 => bram_rddata_a(157),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int[157]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int_reg[157]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int[157]_i_1\,
      Q => s_axi_rdata(157),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int[158]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(158),
      I1 => bram_rddata_a(158),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int[158]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int_reg[158]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int[158]_i_1\,
      Q => s_axi_rdata(158),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int[159]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(159),
      I1 => bram_rddata_a(159),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int[159]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int_reg[159]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int[159]_i_1\,
      Q => s_axi_rdata(159),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(15),
      I1 => bram_rddata_a(15),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\,
      Q => s_axi_rdata(15),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int[160]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(160),
      I1 => bram_rddata_a(160),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int[160]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int_reg[160]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int[160]_i_1\,
      Q => s_axi_rdata(160),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int[161]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(161),
      I1 => bram_rddata_a(161),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int[161]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int_reg[161]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int[161]_i_1\,
      Q => s_axi_rdata(161),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int[162]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(162),
      I1 => bram_rddata_a(162),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int[162]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int_reg[162]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int[162]_i_1\,
      Q => s_axi_rdata(162),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int[163]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(163),
      I1 => bram_rddata_a(163),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int[163]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int_reg[163]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int[163]_i_1\,
      Q => s_axi_rdata(163),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int[164]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(164),
      I1 => bram_rddata_a(164),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int[164]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int_reg[164]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int[164]_i_1\,
      Q => s_axi_rdata(164),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int[165]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(165),
      I1 => bram_rddata_a(165),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int[165]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int_reg[165]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int[165]_i_1\,
      Q => s_axi_rdata(165),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int[166]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(166),
      I1 => bram_rddata_a(166),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int[166]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int_reg[166]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int[166]_i_1\,
      Q => s_axi_rdata(166),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int[167]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(167),
      I1 => bram_rddata_a(167),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int[167]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int_reg[167]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int[167]_i_1\,
      Q => s_axi_rdata(167),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int[168]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(168),
      I1 => bram_rddata_a(168),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int[168]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int_reg[168]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int[168]_i_1\,
      Q => s_axi_rdata(168),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int[169]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(169),
      I1 => bram_rddata_a(169),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int[169]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int_reg[169]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int[169]_i_1\,
      Q => s_axi_rdata(169),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(16),
      I1 => bram_rddata_a(16),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\,
      Q => s_axi_rdata(16),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int[170]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(170),
      I1 => bram_rddata_a(170),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int[170]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int_reg[170]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int[170]_i_1\,
      Q => s_axi_rdata(170),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int[171]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(171),
      I1 => bram_rddata_a(171),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int[171]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int_reg[171]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int[171]_i_1\,
      Q => s_axi_rdata(171),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int[172]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(172),
      I1 => bram_rddata_a(172),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int[172]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int_reg[172]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int[172]_i_1\,
      Q => s_axi_rdata(172),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int[173]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(173),
      I1 => bram_rddata_a(173),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int[173]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int_reg[173]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int[173]_i_1\,
      Q => s_axi_rdata(173),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int[174]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(174),
      I1 => bram_rddata_a(174),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int[174]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int_reg[174]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int[174]_i_1\,
      Q => s_axi_rdata(174),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int[175]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(175),
      I1 => bram_rddata_a(175),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int[175]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int_reg[175]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int[175]_i_1\,
      Q => s_axi_rdata(175),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int[176]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(176),
      I1 => bram_rddata_a(176),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int[176]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int_reg[176]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int[176]_i_1\,
      Q => s_axi_rdata(176),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int[177]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(177),
      I1 => bram_rddata_a(177),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int[177]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int_reg[177]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int[177]_i_1\,
      Q => s_axi_rdata(177),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int[178]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(178),
      I1 => bram_rddata_a(178),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int[178]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int_reg[178]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int[178]_i_1\,
      Q => s_axi_rdata(178),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int[179]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(179),
      I1 => bram_rddata_a(179),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int[179]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int_reg[179]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int[179]_i_1\,
      Q => s_axi_rdata(179),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(17),
      I1 => bram_rddata_a(17),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\,
      Q => s_axi_rdata(17),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int[180]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(180),
      I1 => bram_rddata_a(180),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int[180]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int_reg[180]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int[180]_i_1\,
      Q => s_axi_rdata(180),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int[181]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(181),
      I1 => bram_rddata_a(181),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int[181]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int_reg[181]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int[181]_i_1\,
      Q => s_axi_rdata(181),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int[182]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(182),
      I1 => bram_rddata_a(182),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int[182]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int_reg[182]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int[182]_i_1\,
      Q => s_axi_rdata(182),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int[183]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(183),
      I1 => bram_rddata_a(183),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int[183]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int_reg[183]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int[183]_i_1\,
      Q => s_axi_rdata(183),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int[184]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(184),
      I1 => bram_rddata_a(184),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int[184]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int_reg[184]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int[184]_i_1\,
      Q => s_axi_rdata(184),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int[185]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(185),
      I1 => bram_rddata_a(185),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int[185]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int_reg[185]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int[185]_i_1\,
      Q => s_axi_rdata(185),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int[186]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(186),
      I1 => bram_rddata_a(186),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int[186]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int_reg[186]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int[186]_i_1\,
      Q => s_axi_rdata(186),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int[187]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(187),
      I1 => bram_rddata_a(187),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int[187]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int_reg[187]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int[187]_i_1\,
      Q => s_axi_rdata(187),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int[188]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(188),
      I1 => bram_rddata_a(188),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int[188]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int_reg[188]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int[188]_i_1\,
      Q => s_axi_rdata(188),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int[189]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(189),
      I1 => bram_rddata_a(189),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int[189]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int_reg[189]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int[189]_i_1\,
      Q => s_axi_rdata(189),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(18),
      I1 => bram_rddata_a(18),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\,
      Q => s_axi_rdata(18),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int[190]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(190),
      I1 => bram_rddata_a(190),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int[190]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int_reg[190]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int[190]_i_1\,
      Q => s_axi_rdata(190),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int[191]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(191),
      I1 => bram_rddata_a(191),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int[191]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int_reg[191]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int[191]_i_1\,
      Q => s_axi_rdata(191),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int[192]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(192),
      I1 => bram_rddata_a(192),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int[192]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int_reg[192]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int[192]_i_1\,
      Q => s_axi_rdata(192),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int[193]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(193),
      I1 => bram_rddata_a(193),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int[193]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int_reg[193]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int[193]_i_1\,
      Q => s_axi_rdata(193),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int[194]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(194),
      I1 => bram_rddata_a(194),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int[194]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int_reg[194]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int[194]_i_1\,
      Q => s_axi_rdata(194),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int[195]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(195),
      I1 => bram_rddata_a(195),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int[195]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int_reg[195]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int[195]_i_1\,
      Q => s_axi_rdata(195),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int[196]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(196),
      I1 => bram_rddata_a(196),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int[196]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int_reg[196]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int[196]_i_1\,
      Q => s_axi_rdata(196),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int[197]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(197),
      I1 => bram_rddata_a(197),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int[197]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int_reg[197]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int[197]_i_1\,
      Q => s_axi_rdata(197),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int[198]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(198),
      I1 => bram_rddata_a(198),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int[198]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int_reg[198]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int[198]_i_1\,
      Q => s_axi_rdata(198),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int[199]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(199),
      I1 => bram_rddata_a(199),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int[199]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int_reg[199]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int[199]_i_1\,
      Q => s_axi_rdata(199),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(19),
      I1 => bram_rddata_a(19),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\,
      Q => s_axi_rdata(19),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(1),
      I1 => bram_rddata_a(1),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\,
      Q => s_axi_rdata(1),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int[200]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(200),
      I1 => bram_rddata_a(200),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int[200]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int_reg[200]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int[200]_i_1\,
      Q => s_axi_rdata(200),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int[201]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(201),
      I1 => bram_rddata_a(201),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int[201]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int_reg[201]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int[201]_i_1\,
      Q => s_axi_rdata(201),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int[202]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(202),
      I1 => bram_rddata_a(202),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int[202]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int_reg[202]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int[202]_i_1\,
      Q => s_axi_rdata(202),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int[203]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(203),
      I1 => bram_rddata_a(203),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int[203]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int_reg[203]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int[203]_i_1\,
      Q => s_axi_rdata(203),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int[204]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(204),
      I1 => bram_rddata_a(204),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int[204]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int_reg[204]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int[204]_i_1\,
      Q => s_axi_rdata(204),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int[205]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(205),
      I1 => bram_rddata_a(205),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int[205]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int_reg[205]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int[205]_i_1\,
      Q => s_axi_rdata(205),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int[206]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(206),
      I1 => bram_rddata_a(206),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int[206]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int_reg[206]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int[206]_i_1\,
      Q => s_axi_rdata(206),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int[207]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(207),
      I1 => bram_rddata_a(207),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int[207]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int_reg[207]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int[207]_i_1\,
      Q => s_axi_rdata(207),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int[208]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(208),
      I1 => bram_rddata_a(208),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int[208]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int_reg[208]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int[208]_i_1\,
      Q => s_axi_rdata(208),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int[209]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(209),
      I1 => bram_rddata_a(209),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int[209]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int_reg[209]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int[209]_i_1\,
      Q => s_axi_rdata(209),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(20),
      I1 => bram_rddata_a(20),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\,
      Q => s_axi_rdata(20),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int[210]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(210),
      I1 => bram_rddata_a(210),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int[210]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int_reg[210]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int[210]_i_1\,
      Q => s_axi_rdata(210),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int[211]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(211),
      I1 => bram_rddata_a(211),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int[211]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int_reg[211]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int[211]_i_1\,
      Q => s_axi_rdata(211),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int[212]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(212),
      I1 => bram_rddata_a(212),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int[212]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int_reg[212]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int[212]_i_1\,
      Q => s_axi_rdata(212),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int[213]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(213),
      I1 => bram_rddata_a(213),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int[213]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int_reg[213]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int[213]_i_1\,
      Q => s_axi_rdata(213),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int[214]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(214),
      I1 => bram_rddata_a(214),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int[214]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int_reg[214]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int[214]_i_1\,
      Q => s_axi_rdata(214),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int[215]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(215),
      I1 => bram_rddata_a(215),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int[215]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int_reg[215]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int[215]_i_1\,
      Q => s_axi_rdata(215),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int[216]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(216),
      I1 => bram_rddata_a(216),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int[216]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int_reg[216]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int[216]_i_1\,
      Q => s_axi_rdata(216),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int[217]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(217),
      I1 => bram_rddata_a(217),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int[217]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int_reg[217]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int[217]_i_1\,
      Q => s_axi_rdata(217),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int[218]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(218),
      I1 => bram_rddata_a(218),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int[218]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int_reg[218]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int[218]_i_1\,
      Q => s_axi_rdata(218),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int[219]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(219),
      I1 => bram_rddata_a(219),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int[219]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int_reg[219]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int[219]_i_1\,
      Q => s_axi_rdata(219),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(21),
      I1 => bram_rddata_a(21),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\,
      Q => s_axi_rdata(21),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int[220]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(220),
      I1 => bram_rddata_a(220),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int[220]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int_reg[220]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int[220]_i_1\,
      Q => s_axi_rdata(220),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int[221]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(221),
      I1 => bram_rddata_a(221),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int[221]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int_reg[221]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int[221]_i_1\,
      Q => s_axi_rdata(221),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int[222]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(222),
      I1 => bram_rddata_a(222),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int[222]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int_reg[222]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int[222]_i_1\,
      Q => s_axi_rdata(222),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int[223]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(223),
      I1 => bram_rddata_a(223),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int[223]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int_reg[223]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int[223]_i_1\,
      Q => s_axi_rdata(223),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int[224]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(224),
      I1 => bram_rddata_a(224),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int[224]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int_reg[224]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int[224]_i_1\,
      Q => s_axi_rdata(224),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int[225]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(225),
      I1 => bram_rddata_a(225),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int[225]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int_reg[225]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int[225]_i_1\,
      Q => s_axi_rdata(225),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int[226]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(226),
      I1 => bram_rddata_a(226),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int[226]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int_reg[226]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int[226]_i_1\,
      Q => s_axi_rdata(226),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int[227]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(227),
      I1 => bram_rddata_a(227),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int[227]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int_reg[227]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int[227]_i_1\,
      Q => s_axi_rdata(227),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int[228]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(228),
      I1 => bram_rddata_a(228),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int[228]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int_reg[228]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int[228]_i_1\,
      Q => s_axi_rdata(228),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int[229]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(229),
      I1 => bram_rddata_a(229),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int[229]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int_reg[229]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int[229]_i_1\,
      Q => s_axi_rdata(229),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(22),
      I1 => bram_rddata_a(22),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\,
      Q => s_axi_rdata(22),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int[230]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(230),
      I1 => bram_rddata_a(230),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int[230]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int_reg[230]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int[230]_i_1\,
      Q => s_axi_rdata(230),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int[231]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(231),
      I1 => bram_rddata_a(231),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int[231]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int_reg[231]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int[231]_i_1\,
      Q => s_axi_rdata(231),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int[232]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(232),
      I1 => bram_rddata_a(232),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int[232]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int_reg[232]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int[232]_i_1\,
      Q => s_axi_rdata(232),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int[233]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(233),
      I1 => bram_rddata_a(233),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int[233]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int_reg[233]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int[233]_i_1\,
      Q => s_axi_rdata(233),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int[234]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(234),
      I1 => bram_rddata_a(234),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int[234]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int_reg[234]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int[234]_i_1\,
      Q => s_axi_rdata(234),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int[235]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(235),
      I1 => bram_rddata_a(235),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int[235]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int_reg[235]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int[235]_i_1\,
      Q => s_axi_rdata(235),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int[236]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(236),
      I1 => bram_rddata_a(236),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int[236]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int_reg[236]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int[236]_i_1\,
      Q => s_axi_rdata(236),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int[237]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(237),
      I1 => bram_rddata_a(237),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int[237]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int_reg[237]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int[237]_i_1\,
      Q => s_axi_rdata(237),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int[238]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(238),
      I1 => bram_rddata_a(238),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int[238]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int_reg[238]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int[238]_i_1\,
      Q => s_axi_rdata(238),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int[239]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(239),
      I1 => bram_rddata_a(239),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int[239]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int_reg[239]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int[239]_i_1\,
      Q => s_axi_rdata(239),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(23),
      I1 => bram_rddata_a(23),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\,
      Q => s_axi_rdata(23),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int[240]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(240),
      I1 => bram_rddata_a(240),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int[240]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int_reg[240]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int[240]_i_1\,
      Q => s_axi_rdata(240),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int[241]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(241),
      I1 => bram_rddata_a(241),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int[241]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int_reg[241]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int[241]_i_1\,
      Q => s_axi_rdata(241),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int[242]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(242),
      I1 => bram_rddata_a(242),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int[242]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int_reg[242]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int[242]_i_1\,
      Q => s_axi_rdata(242),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int[243]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(243),
      I1 => bram_rddata_a(243),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int[243]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int_reg[243]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int[243]_i_1\,
      Q => s_axi_rdata(243),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int[244]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(244),
      I1 => bram_rddata_a(244),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int[244]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int_reg[244]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int[244]_i_1\,
      Q => s_axi_rdata(244),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int[245]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(245),
      I1 => bram_rddata_a(245),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int[245]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int_reg[245]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int[245]_i_1\,
      Q => s_axi_rdata(245),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int[246]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(246),
      I1 => bram_rddata_a(246),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int[246]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int_reg[246]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int[246]_i_1\,
      Q => s_axi_rdata(246),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int[247]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(247),
      I1 => bram_rddata_a(247),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int[247]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int_reg[247]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int[247]_i_1\,
      Q => s_axi_rdata(247),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int[248]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(248),
      I1 => bram_rddata_a(248),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int[248]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int_reg[248]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int[248]_i_1\,
      Q => s_axi_rdata(248),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int[249]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(249),
      I1 => bram_rddata_a(249),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int[249]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int_reg[249]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int[249]_i_1\,
      Q => s_axi_rdata(249),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(24),
      I1 => bram_rddata_a(24),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\,
      Q => s_axi_rdata(24),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int[250]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(250),
      I1 => bram_rddata_a(250),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int[250]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int_reg[250]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int[250]_i_1\,
      Q => s_axi_rdata(250),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int[251]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(251),
      I1 => bram_rddata_a(251),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int[251]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int_reg[251]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int[251]_i_1\,
      Q => s_axi_rdata(251),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int[252]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(252),
      I1 => bram_rddata_a(252),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int[252]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int_reg[252]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int[252]_i_1\,
      Q => s_axi_rdata(252),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int[253]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(253),
      I1 => bram_rddata_a(253),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int[253]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int_reg[253]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int[253]_i_1\,
      Q => s_axi_rdata(253),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int[254]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(254),
      I1 => bram_rddata_a(254),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int[254]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int_reg[254]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int[254]_i_1\,
      Q => s_axi_rdata(254),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => \^o3\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0302330030003030"
    )
    port map (
      I0 => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4\,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(1),
      I3 => rd_adv_buf29_out,
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(2),
      O => axi_rdata_en
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(255),
      I1 => bram_rddata_a(255),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_3\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => s_axi_rready,
      O => rd_adv_buf29_out
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int_reg[255]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_3\,
      Q => s_axi_rdata(255),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(25),
      I1 => bram_rddata_a(25),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\,
      Q => s_axi_rdata(25),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(26),
      I1 => bram_rddata_a(26),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\,
      Q => s_axi_rdata(26),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(27),
      I1 => bram_rddata_a(27),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\,
      Q => s_axi_rdata(27),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(28),
      I1 => bram_rddata_a(28),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\,
      Q => s_axi_rdata(28),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(29),
      I1 => bram_rddata_a(29),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\,
      Q => s_axi_rdata(29),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(2),
      I1 => bram_rddata_a(2),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\,
      Q => s_axi_rdata(2),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(30),
      I1 => bram_rddata_a(30),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\,
      Q => s_axi_rdata(30),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(31),
      I1 => bram_rddata_a(31),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\,
      Q => s_axi_rdata(31),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(32),
      I1 => bram_rddata_a(32),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1\,
      Q => s_axi_rdata(32),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(33),
      I1 => bram_rddata_a(33),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1\,
      Q => s_axi_rdata(33),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(34),
      I1 => bram_rddata_a(34),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1\,
      Q => s_axi_rdata(34),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(35),
      I1 => bram_rddata_a(35),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1\,
      Q => s_axi_rdata(35),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(36),
      I1 => bram_rddata_a(36),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1\,
      Q => s_axi_rdata(36),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(37),
      I1 => bram_rddata_a(37),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1\,
      Q => s_axi_rdata(37),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(38),
      I1 => bram_rddata_a(38),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1\,
      Q => s_axi_rdata(38),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(39),
      I1 => bram_rddata_a(39),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1\,
      Q => s_axi_rdata(39),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(3),
      I1 => bram_rddata_a(3),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\,
      Q => s_axi_rdata(3),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(40),
      I1 => bram_rddata_a(40),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1\,
      Q => s_axi_rdata(40),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(41),
      I1 => bram_rddata_a(41),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1\,
      Q => s_axi_rdata(41),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(42),
      I1 => bram_rddata_a(42),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1\,
      Q => s_axi_rdata(42),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(43),
      I1 => bram_rddata_a(43),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1\,
      Q => s_axi_rdata(43),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(44),
      I1 => bram_rddata_a(44),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1\,
      Q => s_axi_rdata(44),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(45),
      I1 => bram_rddata_a(45),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1\,
      Q => s_axi_rdata(45),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(46),
      I1 => bram_rddata_a(46),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1\,
      Q => s_axi_rdata(46),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(47),
      I1 => bram_rddata_a(47),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1\,
      Q => s_axi_rdata(47),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(48),
      I1 => bram_rddata_a(48),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1\,
      Q => s_axi_rdata(48),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(49),
      I1 => bram_rddata_a(49),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1\,
      Q => s_axi_rdata(49),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(4),
      I1 => bram_rddata_a(4),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\,
      Q => s_axi_rdata(4),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(50),
      I1 => bram_rddata_a(50),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1\,
      Q => s_axi_rdata(50),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(51),
      I1 => bram_rddata_a(51),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1\,
      Q => s_axi_rdata(51),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(52),
      I1 => bram_rddata_a(52),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1\,
      Q => s_axi_rdata(52),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(53),
      I1 => bram_rddata_a(53),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1\,
      Q => s_axi_rdata(53),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(54),
      I1 => bram_rddata_a(54),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1\,
      Q => s_axi_rdata(54),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(55),
      I1 => bram_rddata_a(55),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1\,
      Q => s_axi_rdata(55),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(56),
      I1 => bram_rddata_a(56),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1\,
      Q => s_axi_rdata(56),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(57),
      I1 => bram_rddata_a(57),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1\,
      Q => s_axi_rdata(57),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(58),
      I1 => bram_rddata_a(58),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1\,
      Q => s_axi_rdata(58),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(59),
      I1 => bram_rddata_a(59),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1\,
      Q => s_axi_rdata(59),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(5),
      I1 => bram_rddata_a(5),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\,
      Q => s_axi_rdata(5),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(60),
      I1 => bram_rddata_a(60),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1\,
      Q => s_axi_rdata(60),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(61),
      I1 => bram_rddata_a(61),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1\,
      Q => s_axi_rdata(61),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(62),
      I1 => bram_rddata_a(62),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1\,
      Q => s_axi_rdata(62),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(63),
      I1 => bram_rddata_a(63),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1\,
      Q => s_axi_rdata(63),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(64),
      I1 => bram_rddata_a(64),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1\,
      Q => s_axi_rdata(64),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(65),
      I1 => bram_rddata_a(65),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1\,
      Q => s_axi_rdata(65),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(66),
      I1 => bram_rddata_a(66),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1\,
      Q => s_axi_rdata(66),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(67),
      I1 => bram_rddata_a(67),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1\,
      Q => s_axi_rdata(67),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(68),
      I1 => bram_rddata_a(68),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1\,
      Q => s_axi_rdata(68),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(69),
      I1 => bram_rddata_a(69),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1\,
      Q => s_axi_rdata(69),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(6),
      I1 => bram_rddata_a(6),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\,
      Q => s_axi_rdata(6),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(70),
      I1 => bram_rddata_a(70),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1\,
      Q => s_axi_rdata(70),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(71),
      I1 => bram_rddata_a(71),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1\,
      Q => s_axi_rdata(71),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(72),
      I1 => bram_rddata_a(72),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1\,
      Q => s_axi_rdata(72),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(73),
      I1 => bram_rddata_a(73),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1\,
      Q => s_axi_rdata(73),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(74),
      I1 => bram_rddata_a(74),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1\,
      Q => s_axi_rdata(74),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(75),
      I1 => bram_rddata_a(75),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1\,
      Q => s_axi_rdata(75),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(76),
      I1 => bram_rddata_a(76),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1\,
      Q => s_axi_rdata(76),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(77),
      I1 => bram_rddata_a(77),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1\,
      Q => s_axi_rdata(77),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(78),
      I1 => bram_rddata_a(78),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1\,
      Q => s_axi_rdata(78),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(79),
      I1 => bram_rddata_a(79),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1\,
      Q => s_axi_rdata(79),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(7),
      I1 => bram_rddata_a(7),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\,
      Q => s_axi_rdata(7),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(80),
      I1 => bram_rddata_a(80),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1\,
      Q => s_axi_rdata(80),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(81),
      I1 => bram_rddata_a(81),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1\,
      Q => s_axi_rdata(81),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(82),
      I1 => bram_rddata_a(82),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1\,
      Q => s_axi_rdata(82),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(83),
      I1 => bram_rddata_a(83),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1\,
      Q => s_axi_rdata(83),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(84),
      I1 => bram_rddata_a(84),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1\,
      Q => s_axi_rdata(84),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(85),
      I1 => bram_rddata_a(85),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1\,
      Q => s_axi_rdata(85),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(86),
      I1 => bram_rddata_a(86),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1\,
      Q => s_axi_rdata(86),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(87),
      I1 => bram_rddata_a(87),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1\,
      Q => s_axi_rdata(87),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(88),
      I1 => bram_rddata_a(88),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1\,
      Q => s_axi_rdata(88),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(89),
      I1 => bram_rddata_a(89),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1\,
      Q => s_axi_rdata(89),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(8),
      I1 => bram_rddata_a(8),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\,
      Q => s_axi_rdata(8),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(90),
      I1 => bram_rddata_a(90),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1\,
      Q => s_axi_rdata(90),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(91),
      I1 => bram_rddata_a(91),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1\,
      Q => s_axi_rdata(91),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(92),
      I1 => bram_rddata_a(92),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1\,
      Q => s_axi_rdata(92),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(93),
      I1 => bram_rddata_a(93),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1\,
      Q => s_axi_rdata(93),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(94),
      I1 => bram_rddata_a(94),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1\,
      Q => s_axi_rdata(94),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(95),
      I1 => bram_rddata_a(95),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1\,
      Q => s_axi_rdata(95),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(96),
      I1 => bram_rddata_a(96),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1\,
      Q => s_axi_rdata(96),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(97),
      I1 => bram_rddata_a(97),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1\,
      Q => s_axi_rdata(97),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(98),
      I1 => bram_rddata_a(98),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1\,
      Q => s_axi_rdata(98),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(99),
      I1 => bram_rddata_a(99),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1\,
      Q => s_axi_rdata(99),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(9),
      I1 => bram_rddata_a(9),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\,
      Q => s_axi_rdata(9),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf[255]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
    port map (
      I0 => rd_skid_buf_ld_reg,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(2),
      I5 => rd_adv_buf29_out,
      O => rd_skid_buf_ld
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(0),
      Q => rd_skid_buf(0),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(100),
      Q => rd_skid_buf(100),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(101),
      Q => rd_skid_buf(101),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(102),
      Q => rd_skid_buf(102),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(103),
      Q => rd_skid_buf(103),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(104),
      Q => rd_skid_buf(104),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(105),
      Q => rd_skid_buf(105),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(106),
      Q => rd_skid_buf(106),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(107),
      Q => rd_skid_buf(107),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(108),
      Q => rd_skid_buf(108),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(109),
      Q => rd_skid_buf(109),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(10),
      Q => rd_skid_buf(10),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(110),
      Q => rd_skid_buf(110),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(111),
      Q => rd_skid_buf(111),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(112),
      Q => rd_skid_buf(112),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(113),
      Q => rd_skid_buf(113),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(114),
      Q => rd_skid_buf(114),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(115),
      Q => rd_skid_buf(115),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(116),
      Q => rd_skid_buf(116),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(117),
      Q => rd_skid_buf(117),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(118),
      Q => rd_skid_buf(118),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(119),
      Q => rd_skid_buf(119),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(11),
      Q => rd_skid_buf(11),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(120),
      Q => rd_skid_buf(120),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(121),
      Q => rd_skid_buf(121),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(122),
      Q => rd_skid_buf(122),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(123),
      Q => rd_skid_buf(123),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(124),
      Q => rd_skid_buf(124),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(125),
      Q => rd_skid_buf(125),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(126),
      Q => rd_skid_buf(126),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(127),
      Q => rd_skid_buf(127),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[128]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(128),
      Q => rd_skid_buf(128),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[129]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(129),
      Q => rd_skid_buf(129),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(12),
      Q => rd_skid_buf(12),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[130]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(130),
      Q => rd_skid_buf(130),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[131]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(131),
      Q => rd_skid_buf(131),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[132]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(132),
      Q => rd_skid_buf(132),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[133]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(133),
      Q => rd_skid_buf(133),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[134]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(134),
      Q => rd_skid_buf(134),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[135]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(135),
      Q => rd_skid_buf(135),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[136]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(136),
      Q => rd_skid_buf(136),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[137]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(137),
      Q => rd_skid_buf(137),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[138]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(138),
      Q => rd_skid_buf(138),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[139]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(139),
      Q => rd_skid_buf(139),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(13),
      Q => rd_skid_buf(13),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[140]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(140),
      Q => rd_skid_buf(140),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[141]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(141),
      Q => rd_skid_buf(141),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[142]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(142),
      Q => rd_skid_buf(142),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[143]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(143),
      Q => rd_skid_buf(143),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[144]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(144),
      Q => rd_skid_buf(144),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[145]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(145),
      Q => rd_skid_buf(145),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[146]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(146),
      Q => rd_skid_buf(146),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[147]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(147),
      Q => rd_skid_buf(147),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[148]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(148),
      Q => rd_skid_buf(148),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[149]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(149),
      Q => rd_skid_buf(149),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(14),
      Q => rd_skid_buf(14),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[150]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(150),
      Q => rd_skid_buf(150),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[151]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(151),
      Q => rd_skid_buf(151),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[152]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(152),
      Q => rd_skid_buf(152),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[153]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(153),
      Q => rd_skid_buf(153),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[154]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(154),
      Q => rd_skid_buf(154),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[155]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(155),
      Q => rd_skid_buf(155),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[156]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(156),
      Q => rd_skid_buf(156),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[157]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(157),
      Q => rd_skid_buf(157),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[158]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(158),
      Q => rd_skid_buf(158),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[159]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(159),
      Q => rd_skid_buf(159),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(15),
      Q => rd_skid_buf(15),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[160]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(160),
      Q => rd_skid_buf(160),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[161]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(161),
      Q => rd_skid_buf(161),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[162]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(162),
      Q => rd_skid_buf(162),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[163]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(163),
      Q => rd_skid_buf(163),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[164]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(164),
      Q => rd_skid_buf(164),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[165]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(165),
      Q => rd_skid_buf(165),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[166]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(166),
      Q => rd_skid_buf(166),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[167]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(167),
      Q => rd_skid_buf(167),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[168]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(168),
      Q => rd_skid_buf(168),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[169]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(169),
      Q => rd_skid_buf(169),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(16),
      Q => rd_skid_buf(16),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[170]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(170),
      Q => rd_skid_buf(170),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[171]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(171),
      Q => rd_skid_buf(171),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[172]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(172),
      Q => rd_skid_buf(172),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[173]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(173),
      Q => rd_skid_buf(173),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[174]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(174),
      Q => rd_skid_buf(174),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[175]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(175),
      Q => rd_skid_buf(175),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[176]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(176),
      Q => rd_skid_buf(176),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[177]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(177),
      Q => rd_skid_buf(177),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[178]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(178),
      Q => rd_skid_buf(178),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[179]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(179),
      Q => rd_skid_buf(179),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(17),
      Q => rd_skid_buf(17),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[180]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(180),
      Q => rd_skid_buf(180),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[181]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(181),
      Q => rd_skid_buf(181),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[182]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(182),
      Q => rd_skid_buf(182),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[183]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(183),
      Q => rd_skid_buf(183),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[184]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(184),
      Q => rd_skid_buf(184),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[185]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(185),
      Q => rd_skid_buf(185),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[186]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(186),
      Q => rd_skid_buf(186),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[187]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(187),
      Q => rd_skid_buf(187),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[188]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(188),
      Q => rd_skid_buf(188),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[189]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(189),
      Q => rd_skid_buf(189),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(18),
      Q => rd_skid_buf(18),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[190]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(190),
      Q => rd_skid_buf(190),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[191]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(191),
      Q => rd_skid_buf(191),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[192]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(192),
      Q => rd_skid_buf(192),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[193]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(193),
      Q => rd_skid_buf(193),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[194]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(194),
      Q => rd_skid_buf(194),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[195]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(195),
      Q => rd_skid_buf(195),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[196]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(196),
      Q => rd_skid_buf(196),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[197]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(197),
      Q => rd_skid_buf(197),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[198]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(198),
      Q => rd_skid_buf(198),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[199]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(199),
      Q => rd_skid_buf(199),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(19),
      Q => rd_skid_buf(19),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(1),
      Q => rd_skid_buf(1),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[200]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(200),
      Q => rd_skid_buf(200),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[201]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(201),
      Q => rd_skid_buf(201),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[202]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(202),
      Q => rd_skid_buf(202),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[203]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(203),
      Q => rd_skid_buf(203),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[204]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(204),
      Q => rd_skid_buf(204),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[205]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(205),
      Q => rd_skid_buf(205),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[206]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(206),
      Q => rd_skid_buf(206),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[207]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(207),
      Q => rd_skid_buf(207),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[208]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(208),
      Q => rd_skid_buf(208),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[209]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(209),
      Q => rd_skid_buf(209),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(20),
      Q => rd_skid_buf(20),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[210]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(210),
      Q => rd_skid_buf(210),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[211]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(211),
      Q => rd_skid_buf(211),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[212]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(212),
      Q => rd_skid_buf(212),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[213]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(213),
      Q => rd_skid_buf(213),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[214]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(214),
      Q => rd_skid_buf(214),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[215]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(215),
      Q => rd_skid_buf(215),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[216]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(216),
      Q => rd_skid_buf(216),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[217]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(217),
      Q => rd_skid_buf(217),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[218]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(218),
      Q => rd_skid_buf(218),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[219]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(219),
      Q => rd_skid_buf(219),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(21),
      Q => rd_skid_buf(21),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[220]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(220),
      Q => rd_skid_buf(220),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[221]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(221),
      Q => rd_skid_buf(221),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[222]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(222),
      Q => rd_skid_buf(222),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[223]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(223),
      Q => rd_skid_buf(223),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[224]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(224),
      Q => rd_skid_buf(224),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[225]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(225),
      Q => rd_skid_buf(225),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[226]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(226),
      Q => rd_skid_buf(226),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[227]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(227),
      Q => rd_skid_buf(227),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[228]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(228),
      Q => rd_skid_buf(228),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[229]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(229),
      Q => rd_skid_buf(229),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(22),
      Q => rd_skid_buf(22),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[230]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(230),
      Q => rd_skid_buf(230),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[231]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(231),
      Q => rd_skid_buf(231),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[232]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(232),
      Q => rd_skid_buf(232),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[233]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(233),
      Q => rd_skid_buf(233),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[234]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(234),
      Q => rd_skid_buf(234),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[235]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(235),
      Q => rd_skid_buf(235),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[236]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(236),
      Q => rd_skid_buf(236),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[237]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(237),
      Q => rd_skid_buf(237),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[238]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(238),
      Q => rd_skid_buf(238),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[239]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(239),
      Q => rd_skid_buf(239),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(23),
      Q => rd_skid_buf(23),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[240]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(240),
      Q => rd_skid_buf(240),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[241]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(241),
      Q => rd_skid_buf(241),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[242]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(242),
      Q => rd_skid_buf(242),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[243]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(243),
      Q => rd_skid_buf(243),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[244]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(244),
      Q => rd_skid_buf(244),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[245]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(245),
      Q => rd_skid_buf(245),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[246]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(246),
      Q => rd_skid_buf(246),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[247]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(247),
      Q => rd_skid_buf(247),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[248]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(248),
      Q => rd_skid_buf(248),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[249]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(249),
      Q => rd_skid_buf(249),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(24),
      Q => rd_skid_buf(24),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[250]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(250),
      Q => rd_skid_buf(250),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[251]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(251),
      Q => rd_skid_buf(251),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[252]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(252),
      Q => rd_skid_buf(252),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[253]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(253),
      Q => rd_skid_buf(253),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[254]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(254),
      Q => rd_skid_buf(254),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[255]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(255),
      Q => rd_skid_buf(255),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(25),
      Q => rd_skid_buf(25),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(26),
      Q => rd_skid_buf(26),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(27),
      Q => rd_skid_buf(27),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(28),
      Q => rd_skid_buf(28),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(29),
      Q => rd_skid_buf(29),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(2),
      Q => rd_skid_buf(2),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(30),
      Q => rd_skid_buf(30),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(31),
      Q => rd_skid_buf(31),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(32),
      Q => rd_skid_buf(32),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(33),
      Q => rd_skid_buf(33),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(34),
      Q => rd_skid_buf(34),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(35),
      Q => rd_skid_buf(35),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(36),
      Q => rd_skid_buf(36),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(37),
      Q => rd_skid_buf(37),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(38),
      Q => rd_skid_buf(38),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(39),
      Q => rd_skid_buf(39),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(3),
      Q => rd_skid_buf(3),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(40),
      Q => rd_skid_buf(40),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(41),
      Q => rd_skid_buf(41),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(42),
      Q => rd_skid_buf(42),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(43),
      Q => rd_skid_buf(43),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(44),
      Q => rd_skid_buf(44),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(45),
      Q => rd_skid_buf(45),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(46),
      Q => rd_skid_buf(46),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(47),
      Q => rd_skid_buf(47),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(48),
      Q => rd_skid_buf(48),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(49),
      Q => rd_skid_buf(49),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(4),
      Q => rd_skid_buf(4),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(50),
      Q => rd_skid_buf(50),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(51),
      Q => rd_skid_buf(51),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(52),
      Q => rd_skid_buf(52),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(53),
      Q => rd_skid_buf(53),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(54),
      Q => rd_skid_buf(54),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(55),
      Q => rd_skid_buf(55),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(56),
      Q => rd_skid_buf(56),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(57),
      Q => rd_skid_buf(57),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(58),
      Q => rd_skid_buf(58),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(59),
      Q => rd_skid_buf(59),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(5),
      Q => rd_skid_buf(5),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(60),
      Q => rd_skid_buf(60),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(61),
      Q => rd_skid_buf(61),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(62),
      Q => rd_skid_buf(62),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(63),
      Q => rd_skid_buf(63),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(64),
      Q => rd_skid_buf(64),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(65),
      Q => rd_skid_buf(65),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(66),
      Q => rd_skid_buf(66),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(67),
      Q => rd_skid_buf(67),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(68),
      Q => rd_skid_buf(68),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(69),
      Q => rd_skid_buf(69),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(6),
      Q => rd_skid_buf(6),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(70),
      Q => rd_skid_buf(70),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(71),
      Q => rd_skid_buf(71),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(72),
      Q => rd_skid_buf(72),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(73),
      Q => rd_skid_buf(73),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(74),
      Q => rd_skid_buf(74),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(75),
      Q => rd_skid_buf(75),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(76),
      Q => rd_skid_buf(76),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(77),
      Q => rd_skid_buf(77),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(78),
      Q => rd_skid_buf(78),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(79),
      Q => rd_skid_buf(79),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(7),
      Q => rd_skid_buf(7),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(80),
      Q => rd_skid_buf(80),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(81),
      Q => rd_skid_buf(81),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(82),
      Q => rd_skid_buf(82),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(83),
      Q => rd_skid_buf(83),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(84),
      Q => rd_skid_buf(84),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(85),
      Q => rd_skid_buf(85),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(86),
      Q => rd_skid_buf(86),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(87),
      Q => rd_skid_buf(87),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(88),
      Q => rd_skid_buf(88),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(89),
      Q => rd_skid_buf(89),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(8),
      Q => rd_skid_buf(8),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(90),
      Q => rd_skid_buf(90),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(91),
      Q => rd_skid_buf(91),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(92),
      Q => rd_skid_buf(92),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(93),
      Q => rd_skid_buf(93),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(94),
      Q => rd_skid_buf(94),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(95),
      Q => rd_skid_buf(95),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(96),
      Q => rd_skid_buf(96),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(97),
      Q => rd_skid_buf(97),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(98),
      Q => rd_skid_buf(98),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(99),
      Q => rd_skid_buf(99),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(9),
      Q => rd_skid_buf(9),
      R => \^o1\
    );
\GEN_RID_SNG.axi_rid_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE3202"
    )
    port map (
      I0 => \^s_axi_rid\(0),
      I1 => ar_active_re,
      I2 => axi_rvalid_set,
      I3 => axi_rid_temp,
      I4 => s_axi_arid(0),
      I5 => \n_0_GEN_RID_SNG.axi_rid_int[0]_i_2\,
      O => \n_0_GEN_RID_SNG.axi_rid_int[0]_i_1\
    );
\GEN_RID_SNG.axi_rid_int[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => \^o3\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \n_0_GEN_RID_SNG.axi_rid_int[0]_i_2\
    );
\GEN_RID_SNG.axi_rid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_RID_SNG.axi_rid_int[0]_i_1\,
      Q => \^s_axi_rid\(0),
      R => '0'
    );
\GEN_RID_SNG.axi_rid_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(0),
      Q => axi_rid_temp,
      R => \^o1\
    );
I_WRAP_BRST: entity work.controller_wrap_brst_0
    port map (
      D(5 downto 0) => D(5 downto 0),
      I1 => \^curr_narrow_burst\,
      I2 => I2,
      I3 => I3,
      I4 => I4,
      I5 => n_0_axi_rd_burst_two_reg,
      I6 => I6,
      I7 => \^o4\,
      I8 => I8,
      O1 => O6,
      O10 => O10,
      O11 => O11,
      O12 => O12,
      O15(2 downto 0) => O15(2 downto 0),
      O2 => n_11_I_WRAP_BRST,
      O3 => n_12_I_WRAP_BRST,
      O4 => \^o1\,
      O5 => O5,
      O7 => O7,
      O8 => O8,
      O9 => O9,
      Q(3 downto 0) => rd_data_sm_cs(3 downto 0),
      ar_active_re => ar_active_re,
      axi_rd_burst => axi_rd_burst,
      bram_addr_inc10_out => bram_addr_inc10_out,
      brst_zero => brst_zero,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      end_brst_rd => end_brst_rd,
      narrow_addr_int(4 downto 0) => narrow_addr_int(4 downto 0),
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      p_0_out => p_0_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(9 downto 0) => s_axi_araddr(14 downto 5),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_awaddr(0) => s_axi_awaddr(0),
      s_axi_rready => s_axi_rready
    );
act_rd_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E2E2E22"
    )
    port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_set,
      I2 => I7,
      I3 => axi_rd_burst,
      I4 => ar_active_re,
      I5 => n_0_act_rd_burst_i_4,
      O => n_0_act_rd_burst_i_1
    );
act_rd_burst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000002E"
    )
    port map (
      I0 => I5,
      I1 => rd_data_sm_cs(0),
      I2 => n_0_pend_rd_op_i_2,
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(3),
      O => act_rd_burst_set
    );
act_rd_burst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000180FFFFFFFF"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(3),
      I4 => \n_0_rd_data_sm_cs[2]_i_4\,
      I5 => s_axi_aresetn,
      O => n_0_act_rd_burst_i_4
    );
act_rd_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_act_rd_burst_i_1,
      Q => act_rd_burst,
      R => '0'
    );
act_rd_burst_two_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEE22E2"
    )
    port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst_set,
      I2 => n_0_axi_rd_burst_two_reg,
      I3 => ar_active_re,
      I4 => I7,
      I5 => n_0_act_rd_burst_i_4,
      O => n_0_act_rd_burst_two_i_1
    );
act_rd_burst_two_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_act_rd_burst_two_i_1,
      Q => act_rd_burst_two,
      R => '0'
    );
\arb_sm_cs[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o3\,
      O => O17
    );
axi_rd_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0303000A000A0"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => \^o14\,
      I2 => s_axi_aresetn,
      I3 => brst_zero,
      I4 => \^ar_active_d1\,
      I5 => p_0_out,
      O => n_0_axi_rd_burst_i_1
    );
axi_rd_burst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => \^o13\,
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(1),
      O => \^o14\
    );
axi_rd_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rd_burst_i_1,
      Q => axi_rd_burst,
      R => '0'
    );
axi_rd_burst_two_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C0000000AA00"
    )
    port map (
      I0 => n_0_axi_rd_burst_two_reg,
      I1 => \^o14\,
      I2 => s_axi_arlen(0),
      I3 => s_axi_aresetn,
      I4 => brst_zero,
      I5 => ar_active_re,
      O => n_0_axi_rd_burst_two_i_1
    );
axi_rd_burst_two_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rd_burst_two_i_1,
      Q => n_0_axi_rd_burst_two_reg,
      R => '0'
    );
axi_rlast_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => \^o3\,
      I2 => s_axi_rready,
      I3 => n_0_axi_rlast_int_i_2,
      O => n_0_axi_rlast_int_i_1
    );
axi_rlast_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4040404"
    )
    port map (
      I0 => \^o3\,
      I1 => rlast_sm_cs(0),
      I2 => rlast_sm_cs(1),
      I3 => s_axi_rready,
      I4 => \^o4\,
      I5 => rlast_sm_cs(2),
      O => n_0_axi_rlast_int_i_2
    );
axi_rlast_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rlast_int_i_1,
      Q => \^o3\,
      R => '0'
    );
axi_rvalid_clr_ok_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
    port map (
      I0 => axi_rvalid_clr_ok,
      I1 => last_bram_addr,
      I2 => disable_b2b_brst,
      I3 => n_0_disable_b2b_brst_i_2,
      I4 => n_0_axi_rvalid_clr_ok_i_2,
      O => n_0_axi_rvalid_clr_ok_i_1
    );
axi_rvalid_clr_ok_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444F44444"
    )
    port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(3),
      O => n_0_axi_rvalid_clr_ok_i_2
    );
axi_rvalid_clr_ok_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rvalid_clr_ok_i_1,
      Q => axi_rvalid_clr_ok,
      R => \^o1\
    );
axi_rvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0E0E0E0E0E0E0"
    )
    port map (
      I0 => \^o4\,
      I1 => axi_rvalid_set,
      I2 => s_axi_aresetn,
      I3 => axi_rvalid_clr_ok,
      I4 => \^o3\,
      I5 => s_axi_rready,
      O => n_0_axi_rvalid_int_i_1
    );
axi_rvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rvalid_int_i_1,
      Q => \^o4\,
      R => '0'
    );
axi_rvalid_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      O => axi_rvalid_set_cmb
    );
axi_rvalid_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_set_cmb,
      Q => axi_rvalid_set,
      R => \^o1\
    );
bram_en_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFB0000A808"
    )
    port map (
      I0 => n_0_bram_en_int_i_2,
      I1 => n_0_bram_en_int_i_3,
      I2 => rd_data_sm_cs(2),
      I3 => n_0_bram_en_int_i_4,
      I4 => rd_data_sm_cs(3),
      I5 => \^p_7_in\,
      O => n_0_bram_en_int_i_1
    );
bram_en_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => ar_active_re,
      I1 => bram_addr_inc10_out,
      I2 => n_0_bram_en_int_i_5,
      I3 => n_0_bram_en_int_i_6,
      I4 => n_0_bram_en_int_i_7,
      I5 => n_0_bram_en_int_i_8,
      O => n_0_bram_en_int_i_2
    );
bram_en_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFF7FFFF00"
    )
    port map (
      I0 => brst_one,
      I1 => \n_0_rd_data_sm_cs[3]_i_5\,
      I2 => rd_adv_buf29_out,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => ar_active_re,
      O => n_0_bram_en_int_i_3
    );
bram_en_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF0FCF0FE00FC000"
    )
    port map (
      I0 => pend_rd_op,
      I1 => ar_active_re,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => rd_adv_buf29_out,
      I5 => \n_0_rd_data_sm_cs[1]_i_2\,
      O => n_0_bram_en_int_i_4
    );
bram_en_int_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(1),
      O => n_0_bram_en_int_i_5
    );
bram_en_int_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0AFAFFCFCFC0C"
    )
    port map (
      I0 => \n_0_rd_data_sm_cs[3]_i_5\,
      I1 => ar_active_re,
      I2 => rd_data_sm_cs(0),
      I3 => axi_rd_burst,
      I4 => n_0_axi_rd_burst_two_reg,
      I5 => rd_data_sm_cs(1),
      O => n_0_bram_en_int_i_6
    );
bram_en_int_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(2),
      O => n_0_bram_en_int_i_7
    );
bram_en_int_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F800F0"
    )
    port map (
      I0 => \^o4\,
      I1 => s_axi_rready,
      I2 => p_0_out,
      I3 => \^ar_active_d1\,
      I4 => pend_rd_op,
      O => n_0_bram_en_int_i_8
    );
bram_en_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_bram_en_int_i_1,
      Q => \^p_7_in\,
      R => \^o1\
    );
\brst_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A33CACC"
    )
    port map (
      I0 => s_axi_arlen(0),
      I1 => bram_addr_inc,
      I2 => \^ar_active_d1\,
      I3 => p_0_out,
      I4 => \n_0_brst_cnt_reg[0]\,
      O => \n_0_brst_cnt[0]_i_1\
    );
\brst_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAACFCF30AA3030"
    )
    port map (
      I0 => s_axi_arlen(1),
      I1 => \n_0_brst_cnt_reg[0]\,
      I2 => bram_addr_inc,
      I3 => \^ar_active_d1\,
      I4 => p_0_out,
      I5 => \n_0_brst_cnt_reg[1]\,
      O => \n_0_brst_cnt[1]_i_1\
    );
\brst_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0300"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => \n_0_brst_cnt_reg[0]\,
      I2 => \n_0_brst_cnt_reg[1]\,
      I3 => bram_addr_inc,
      I4 => ar_active_re,
      I5 => \n_0_brst_cnt_reg[2]\,
      O => \n_0_brst_cnt[2]_i_1\
    );
\brst_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FAA3F3FC0AAC0C0"
    )
    port map (
      I0 => s_axi_arlen(3),
      I1 => \n_0_brst_cnt[3]_i_2\,
      I2 => bram_addr_inc,
      I3 => \^ar_active_d1\,
      I4 => p_0_out,
      I5 => \n_0_brst_cnt_reg[3]\,
      O => \n_0_brst_cnt[3]_i_1\
    );
\brst_cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[0]\,
      I1 => \n_0_brst_cnt_reg[1]\,
      I2 => \n_0_brst_cnt_reg[2]\,
      O => \n_0_brst_cnt[3]_i_2\
    );
\brst_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FAA3F3FC0AAC0C0"
    )
    port map (
      I0 => s_axi_arlen(4),
      I1 => \n_0_brst_cnt[4]_i_2\,
      I2 => bram_addr_inc,
      I3 => \^ar_active_d1\,
      I4 => p_0_out,
      I5 => \n_0_brst_cnt_reg[4]\,
      O => \n_0_brst_cnt[4]_i_1\
    );
\brst_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[2]\,
      I1 => \n_0_brst_cnt_reg[1]\,
      I2 => \n_0_brst_cnt_reg[0]\,
      I3 => \n_0_brst_cnt_reg[3]\,
      O => \n_0_brst_cnt[4]_i_2\
    );
\brst_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FAA3F3FC0AAC0C0"
    )
    port map (
      I0 => s_axi_arlen(5),
      I1 => \n_0_brst_cnt[5]_i_2\,
      I2 => bram_addr_inc,
      I3 => \^ar_active_d1\,
      I4 => p_0_out,
      I5 => \n_0_brst_cnt_reg[5]\,
      O => \n_0_brst_cnt[5]_i_1\
    );
\brst_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[3]\,
      I1 => \n_0_brst_cnt_reg[0]\,
      I2 => \n_0_brst_cnt_reg[1]\,
      I3 => \n_0_brst_cnt_reg[2]\,
      I4 => \n_0_brst_cnt_reg[4]\,
      O => \n_0_brst_cnt[5]_i_2\
    );
\brst_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FAA3F3FC0AAC0C0"
    )
    port map (
      I0 => s_axi_arlen(6),
      I1 => \n_0_brst_cnt[7]_i_2\,
      I2 => bram_addr_inc,
      I3 => \^ar_active_d1\,
      I4 => p_0_out,
      I5 => \n_0_brst_cnt_reg[6]\,
      O => \n_0_brst_cnt[6]_i_1\
    );
\brst_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACFFFAAAA3000"
    )
    port map (
      I0 => s_axi_arlen(7),
      I1 => \n_0_brst_cnt_reg[6]\,
      I2 => \n_0_brst_cnt[7]_i_2\,
      I3 => bram_addr_inc,
      I4 => ar_active_re,
      I5 => \n_0_brst_cnt_reg[7]\,
      O => \n_0_brst_cnt[7]_i_1\
    );
\brst_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[4]\,
      I1 => \n_0_brst_cnt_reg[2]\,
      I2 => \n_0_brst_cnt_reg[1]\,
      I3 => \n_0_brst_cnt_reg[0]\,
      I4 => \n_0_brst_cnt_reg[3]\,
      I5 => \n_0_brst_cnt_reg[5]\,
      O => \n_0_brst_cnt[7]_i_2\
    );
\brst_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => n_11_I_WRAP_BRST,
      I1 => rd_data_sm_cs(3),
      O => bram_addr_inc
    );
brst_cnt_max_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\,
      Q => brst_cnt_max_d1,
      R => \^o1\
    );
\brst_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[0]_i_1\,
      Q => \n_0_brst_cnt_reg[0]\,
      R => \^o1\
    );
\brst_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[1]_i_1\,
      Q => \n_0_brst_cnt_reg[1]\,
      R => \^o1\
    );
\brst_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[2]_i_1\,
      Q => \n_0_brst_cnt_reg[2]\,
      R => \^o1\
    );
\brst_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[3]_i_1\,
      Q => \n_0_brst_cnt_reg[3]\,
      R => \^o1\
    );
\brst_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[4]_i_1\,
      Q => \n_0_brst_cnt_reg[4]\,
      R => \^o1\
    );
\brst_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[5]_i_1\,
      Q => \n_0_brst_cnt_reg[5]\,
      R => \^o1\
    );
\brst_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[6]_i_1\,
      Q => \n_0_brst_cnt_reg[6]\,
      R => \^o1\
    );
\brst_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[7]_i_1\,
      Q => \n_0_brst_cnt_reg[7]\,
      R => \^o1\
    );
brst_one_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0000000E00"
    )
    port map (
      I0 => brst_one,
      I1 => brst_one0,
      I2 => n_0_brst_zero_i_2,
      I3 => s_axi_aresetn,
      I4 => ar_active_re,
      I5 => axi_rd_burst_two,
      O => n_0_brst_one_i_1
    );
brst_one_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
    port map (
      I0 => I7,
      I1 => \n_0_brst_cnt_reg[0]\,
      I2 => \n_0_brst_cnt_reg[1]\,
      I3 => bram_addr_inc,
      I4 => n_0_brst_zero_i_4,
      O => brst_one0
    );
brst_one_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(3),
      I4 => \^o13\,
      O => axi_rd_burst_two
    );
brst_one_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_brst_one_i_1,
      Q => brst_one,
      R => '0'
    );
brst_zero_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
    port map (
      I0 => brst_zero,
      I1 => n_0_brst_zero_i_2,
      I2 => s_axi_aresetn,
      I3 => I5,
      O => n_0_brst_zero_i_1
    );
brst_zero_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => n_0_brst_zero_i_4,
      I1 => bram_addr_inc,
      I2 => \n_0_brst_cnt_reg[0]\,
      I3 => \n_0_brst_cnt_reg[1]\,
      O => n_0_brst_zero_i_2
    );
brst_zero_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[2]\,
      I1 => \n_0_brst_cnt_reg[3]\,
      I2 => \n_0_brst_cnt_reg[6]\,
      I3 => \n_0_brst_cnt_reg[7]\,
      I4 => \n_0_brst_cnt_reg[5]\,
      I5 => \n_0_brst_cnt_reg[4]\,
      O => n_0_brst_zero_i_4
    );
brst_zero_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arlen(6),
      I2 => s_axi_arlen(4),
      I3 => s_axi_arlen(5),
      O => \^o13\
    );
brst_zero_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_brst_zero_i_1,
      Q => brst_zero,
      R => '0'
    );
curr_fixed_burst_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      O => curr_fixed_burst
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => curr_fixed_burst,
      Q => O2,
      R => \^o1\
    );
curr_wrap_burst_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      O => curr_wrap_burst
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => curr_wrap_burst,
      Q => curr_wrap_burst_reg,
      R => \^o1\
    );
disable_b2b_brst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAEAEEEAEEEE"
    )
    port map (
      I0 => n_0_disable_b2b_brst_i_2,
      I1 => disable_b2b_brst,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(0),
      O => disable_b2b_brst_cmb
    );
disable_b2b_brst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020222222"
    )
    port map (
      I0 => n_0_disable_b2b_brst_i_3,
      I1 => rd_data_sm_cs(2),
      I2 => n_0_axi_rd_burst_two_reg,
      I3 => axi_rd_burst,
      I4 => n_0_disable_b2b_brst_i_4,
      I5 => n_0_disable_b2b_brst_i_5,
      O => n_0_disable_b2b_brst_i_2
    );
disable_b2b_brst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000045FF"
    )
    port map (
      I0 => rd_adv_buf29_out,
      I1 => brst_one,
      I2 => \n_0_rd_data_sm_cs[3]_i_5\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(3),
      I5 => disable_b2b_brst,
      O => n_0_disable_b2b_brst_i_3
    );
disable_b2b_brst_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(3),
      O => n_0_disable_b2b_brst_i_4
    );
disable_b2b_brst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D8FF"
    )
    port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(0),
      O => n_0_disable_b2b_brst_i_5
    );
disable_b2b_brst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => disable_b2b_brst_cmb,
      Q => disable_b2b_brst,
      R => \^o1\
    );
end_brst_rd_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFD03000000"
    )
    port map (
      I0 => ar_active_re,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => end_brst_rd_clr,
      O => n_0_end_brst_rd_clr_i_1
    );
end_brst_rd_clr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_end_brst_rd_clr_i_1,
      Q => end_brst_rd_clr,
      R => \^o1\
    );
end_brst_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0040F040"
    )
    port map (
      I0 => brst_cnt_max_d1,
      I1 => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\,
      I2 => s_axi_aresetn,
      I3 => end_brst_rd,
      I4 => end_brst_rd_clr,
      O => n_0_end_brst_rd_i_1
    );
end_brst_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_end_brst_rd_i_1,
      Q => end_brst_rd,
      R => '0'
    );
last_bram_addr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABBAAAAAAAA"
    )
    port map (
      I0 => n_0_brst_zero_i_2,
      I1 => n_0_last_bram_addr_i_2,
      I2 => ar_active_re,
      I3 => axi_rd_burst,
      I4 => n_0_axi_rd_burst_two_reg,
      I5 => n_0_last_bram_addr_i_3,
      O => last_bram_addr0
    );
last_bram_addr_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      O => n_0_last_bram_addr_i_2
    );
last_bram_addr_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F300AAAAC0C0"
    )
    port map (
      I0 => n_0_last_bram_addr_i_4,
      I1 => ar_active_re,
      I2 => n_0_last_bram_addr_i_5,
      I3 => n_0_last_bram_addr_i_6,
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(2),
      O => n_0_last_bram_addr_i_3
    );
last_bram_addr_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => n_0_axi_rd_burst_two_reg,
      I1 => axi_rd_burst,
      I2 => s_axi_rready,
      I3 => \^o4\,
      O => n_0_last_bram_addr_i_4
    );
last_bram_addr_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => \^o13\,
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      O => n_0_last_bram_addr_i_5
    );
last_bram_addr_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880080"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o4\,
      I2 => p_0_out,
      I3 => \^ar_active_d1\,
      I4 => pend_rd_op,
      O => n_0_last_bram_addr_i_6
    );
last_bram_addr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_bram_addr0,
      Q => last_bram_addr,
      R => \^o1\
    );
pend_rd_op_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0FFFF00E00000"
    )
    port map (
      I0 => n_0_pend_rd_op_i_2,
      I1 => rd_data_sm_cs(2),
      I2 => ar_active_re,
      I3 => rd_data_sm_cs(1),
      I4 => n_0_pend_rd_op_i_3,
      I5 => pend_rd_op,
      O => n_0_pend_rd_op_i_1
    );
pend_rd_op_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => n_0_axi_rd_burst_two_reg,
      O => n_0_pend_rd_op_i_2
    );
pend_rd_op_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F800F800F8"
    )
    port map (
      I0 => \^o3\,
      I1 => pend_rd_op,
      I2 => ar_active_re,
      I3 => n_0_pend_rd_op_i_4,
      I4 => rd_data_sm_cs(0),
      I5 => n_0_pend_rd_op_i_5,
      O => n_0_pend_rd_op_i_3
    );
pend_rd_op_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(2),
      O => n_0_pend_rd_op_i_4
    );
pend_rd_op_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
    port map (
      I0 => rd_adv_buf29_out,
      I1 => rd_data_sm_cs(3),
      I2 => pend_rd_op,
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(1),
      I5 => n_0_pend_rd_op_i_6,
      O => n_0_pend_rd_op_i_5
    );
pend_rd_op_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000300020000"
    )
    port map (
      I0 => n_0_pend_rd_op_i_2,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(2),
      I4 => ar_active_re,
      I5 => pend_rd_op,
      O => n_0_pend_rd_op_i_6
    );
pend_rd_op_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_pend_rd_op_i_1,
      Q => pend_rd_op,
      R => \^o1\
    );
\rd_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => \n_0_rd_data_sm_cs[0]_i_2\,
      I4 => rd_data_sm_cs(2),
      I5 => \n_0_rd_data_sm_cs[0]_i_3\,
      O => \n_0_rd_data_sm_cs[0]_i_1\
    );
\rd_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3C0B3B0FFFFFFFF"
    )
    port map (
      I0 => pend_rd_op,
      I1 => rd_data_sm_cs(1),
      I2 => rd_adv_buf29_out,
      I3 => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4\,
      I4 => ar_active_re,
      I5 => rd_data_sm_cs(0),
      O => \n_0_rd_data_sm_cs[0]_i_2\
    );
\rd_data_sm_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808FFFFFFFFF"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o4\,
      I2 => rd_data_sm_cs(1),
      I3 => n_0_axi_rd_burst_two_reg,
      I4 => axi_rd_burst,
      I5 => rd_data_sm_cs(0),
      O => \n_0_rd_data_sm_cs[0]_i_3\
    );
\rd_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF404C"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      I3 => \n_0_rd_data_sm_cs[1]_i_2\,
      I4 => \n_0_rd_data_sm_cs[1]_i_3\,
      I5 => rd_data_sm_cs(3),
      O => \n_0_rd_data_sm_cs[1]_i_1\
    );
\rd_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10101010FFFFFF00"
    )
    port map (
      I0 => \n_0_rd_data_sm_cs[2]_i_4\,
      I1 => \^ar_active_d1\,
      I2 => p_0_out,
      I3 => end_brst_rd,
      I4 => brst_zero,
      I5 => rd_data_sm_cs(0),
      O => \n_0_rd_data_sm_cs[1]_i_2\
    );
\rd_data_sm_cs[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000003E0"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => n_0_axi_rd_burst_two_reg,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      O => \n_0_rd_data_sm_cs[1]_i_3\
    );
\rd_data_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E2EEE2"
    )
    port map (
      I0 => \n_0_rd_data_sm_cs[2]_i_2\,
      I1 => rd_data_sm_cs(2),
      I2 => \n_0_rd_data_sm_cs[2]_i_3\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(3),
      O => \n_0_rd_data_sm_cs[2]_i_1\
    );
\rd_data_sm_cs[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AC"
    )
    port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      I2 => n_0_axi_rd_burst_two_reg,
      I3 => axi_rd_burst,
      O => \n_0_rd_data_sm_cs[2]_i_2\
    );
\rd_data_sm_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFFFFFF00"
    )
    port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => \n_0_rd_data_sm_cs[2]_i_4\,
      I3 => end_brst_rd,
      I4 => brst_zero,
      I5 => rd_data_sm_cs(0),
      O => \n_0_rd_data_sm_cs[2]_i_3\
    );
\rd_data_sm_cs[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
    port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_two,
      I2 => s_axi_rready,
      I3 => \^o4\,
      O => \n_0_rd_data_sm_cs[2]_i_4\
    );
\rd_data_sm_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
    port map (
      I0 => rd_adv_buf29_out,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(3),
      I5 => \n_0_rd_data_sm_cs[3]_i_3\,
      O => \n_0_rd_data_sm_cs[3]_i_1\
    );
\rd_data_sm_cs[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000070400000"
    )
    port map (
      I0 => rd_adv_buf29_out,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(0),
      I3 => \n_0_rd_data_sm_cs[3]_i_4\,
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(3),
      O => \n_0_rd_data_sm_cs[3]_i_2\
    );
\rd_data_sm_cs[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFDDDD9DFFDD88"
    )
    port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_adv_buf29_out,
      I2 => \n_0_rd_data_sm_cs[3]_i_5\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => ar_active_re,
      O => \n_0_rd_data_sm_cs[3]_i_3\
    );
\rd_data_sm_cs[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400040000000"
    )
    port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => \^o4\,
      I3 => s_axi_rready,
      I4 => act_rd_burst_two,
      I5 => act_rd_burst,
      O => \n_0_rd_data_sm_cs[3]_i_4\
    );
\rd_data_sm_cs[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => end_brst_rd,
      I1 => brst_zero,
      O => \n_0_rd_data_sm_cs[3]_i_5\
    );
\rd_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rd_data_sm_cs[3]_i_1\,
      D => \n_0_rd_data_sm_cs[0]_i_1\,
      Q => rd_data_sm_cs(0),
      R => \^o1\
    );
\rd_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rd_data_sm_cs[3]_i_1\,
      D => \n_0_rd_data_sm_cs[1]_i_1\,
      Q => rd_data_sm_cs(1),
      R => \^o1\
    );
\rd_data_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rd_data_sm_cs[3]_i_1\,
      D => \n_0_rd_data_sm_cs[2]_i_1\,
      Q => rd_data_sm_cs(2),
      R => \^o1\
    );
\rd_data_sm_cs_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rd_data_sm_cs[3]_i_1\,
      D => \n_0_rd_data_sm_cs[3]_i_2\,
      Q => rd_data_sm_cs(3),
      R => \^o1\
    );
rd_skid_buf_ld_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000D500AA"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => s_axi_rready,
      I2 => \^o4\,
      I3 => rd_data_sm_cs(3),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(2),
      O => rd_skid_buf_ld_cmb
    );
rd_skid_buf_ld_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_skid_buf_ld_cmb,
      Q => rd_skid_buf_ld_reg,
      R => \^o1\
    );
rddata_mux_sel_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rddata_mux_sel_cmb,
      I1 => n_0_rddata_mux_sel_i_3,
      I2 => rddata_mux_sel,
      O => n_0_rddata_mux_sel_i_1
    );
rddata_mux_sel_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0100FF0F0F00000"
    )
    port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_two,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_adv_buf29_out,
      I5 => rd_data_sm_cs(0),
      O => rddata_mux_sel_cmb
    );
rddata_mux_sel_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003FF83F08"
    )
    port map (
      I0 => n_0_axi_rd_burst_two_reg,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(0),
      I4 => rd_adv_buf29_out,
      I5 => rd_data_sm_cs(3),
      O => n_0_rddata_mux_sel_i_3
    );
rddata_mux_sel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_rddata_mux_sel_i_1,
      Q => rddata_mux_sel,
      R => \^o1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller_wr_chnl is
  port (
    aw_active_d1 : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wready : out STD_LOGIC;
    O1 : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_out : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    arb_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    p_0_out : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    I7 : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    I8 : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    curr_narrow_burst_en : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of controller_wr_chnl : entity is "wr_chnl";
end controller_wr_chnl;

architecture STRUCTURE of controller_wr_chnl is
  signal AW2Arb_BVALID_Cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^o1\ : STD_LOGIC;
  signal \^aw_active_d1\ : STD_LOGIC;
  signal axi_wdata_full_cmb : STD_LOGIC;
  signal axi_wdata_full_reg : STD_LOGIC;
  signal axi_wlast_d1 : STD_LOGIC;
  signal axi_wr_burst : STD_LOGIC;
  signal bid_gets_fifo_load : STD_LOGIC;
  signal bid_gets_fifo_load_d1 : STD_LOGIC;
  signal bram_en_cmb : STD_LOGIC;
  signal bvalid_cnt_inc : STD_LOGIC;
  signal clr_bram_we : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  signal curr_narrow_burst : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_5\ : STD_LOGIC;
  signal n_0_BID_FIFO : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_40\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3]\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4]\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\ : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_1 : STD_LOGIC;
  signal n_0_axi_wr_burst_i_1 : STD_LOGIC;
  signal n_0_axi_wr_burst_i_2 : STD_LOGIC;
  signal n_0_axi_wready_int_mod_i_1 : STD_LOGIC;
  signal n_0_bid_gets_fifo_load_d1_i_2 : STD_LOGIC;
  signal \n_0_bvalid_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[2]_i_1\ : STD_LOGIC;
  signal \n_0_curr_fixed_burst_reg_i_1__0\ : STD_LOGIC;
  signal \n_0_curr_wrap_burst_reg_i_1__0\ : STD_LOGIC;
  signal n_13_I_WRAP_BRST : STD_LOGIC;
  signal n_1_BID_FIFO : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\ : STD_LOGIC;
  signal n_3_BID_FIFO : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\ : STD_LOGIC;
  signal n_9_I_WRAP_BRST : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_11_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal wr_data_sng_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wrdata_reg_ld : STD_LOGIC;
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[14]_i_5\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_4\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_5\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_8\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_10\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_13\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_17\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_4__0\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_5__0\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_8\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_12\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_18\ : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_19\ : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_20\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_31\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_34\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_39\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_40\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_50\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[4]_i_6__0\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \GEN_NARROW_EN.axi_wlast_d1_i_1\ : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of \GEN_NARROW_EN.curr_narrow_burst_i_2__0\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \arb_sm_cs[1]_i_2\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of axi_awready_int_i_2 : label is "soft_lutpair194";
  attribute SOFT_HLUTNM of axi_wr_burst_i_1 : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of axi_wr_burst_i_2 : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of bid_gets_fifo_load_d1_i_2 : label is "soft_lutpair194";
begin
  O1 <= \^o1\;
  aw_active_d1 <= \^aw_active_d1\;
  s_axi_bid(0) <= \^s_axi_bid\(0);
  s_axi_wready <= \^s_axi_wready\;
\ADDR_SNG_PORT.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10101010101F1010"
    )
    port map (
      I0 => I5,
      I1 => I6,
      I2 => p_0_out,
      I3 => curr_fixed_burst_reg,
      I4 => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_5\,
      I5 => n_9_I_WRAP_BRST,
      O => O5
    );
\ADDR_SNG_PORT.bram_addr_int[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3\,
      I1 => s_axi_aresetn,
      O => O2
    );
\ADDR_SNG_PORT.bram_addr_int[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
    port map (
      I0 => p_1_out,
      I1 => \^aw_active_d1\,
      I2 => wr_data_sng_sm_cs(0),
      I3 => wr_data_sng_sm_cs(1),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3\
    );
\ADDR_SNG_PORT.bram_addr_int[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => wr_data_sng_sm_cs(0),
      I1 => wr_data_sng_sm_cs(1),
      I2 => s_axi_wvalid,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_5\
    );
BID_FIFO: entity work.controller_SRL_FIFO
    port map (
      AW2Arb_BVALID_Cnt(2 downto 0) => AW2Arb_BVALID_Cnt(2 downto 0),
      I1 => I1,
      I2 => \^aw_active_d1\,
      I3 => \^o1\,
      I4 => n_0_bid_gets_fifo_load_d1_i_2,
      O1 => n_0_BID_FIFO,
      O2 => n_1_BID_FIFO,
      O3 => n_3_BID_FIFO,
      aw_active_re => aw_active_re,
      axi_wdata_full_reg => axi_wdata_full_reg,
      axi_wr_burst => axi_wr_burst,
      bid_gets_fifo_load => bid_gets_fifo_load,
      bid_gets_fifo_load_d1 => bid_gets_fifo_load_d1,
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_bid(0) => \^s_axi_bid\(0),
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      wr_data_sng_sm_cs(1 downto 0) => wr_data_sng_sm_cs(1 downto 0)
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"880F88F0"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\,
      I1 => narrow_burst_cnt_ld_reg(0),
      I2 => n_13_I_WRAP_BRST,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I4 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B00FF8B8BFF00"
    )
    port map (
      I0 => narrow_burst_cnt_ld_reg(0),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4\,
      I3 => n_13_I_WRAP_BRST,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I5 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      I2 => s_axi_awsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(5),
      I4 => s_axi_awsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F0FF88880F00"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\,
      I1 => narrow_burst_cnt_ld_reg(1),
      I2 => narrow_addr_int(0),
      I3 => n_13_I_WRAP_BRST,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I5 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAA30"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\,
      I1 => narrow_addr_int(0),
      I2 => n_13_I_WRAP_BRST,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I4 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A88AAA8AABBAAABA"
    )
    port map (
      I0 => narrow_burst_cnt_ld_reg(1),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14\,
      I2 => s_axi_awburst(0),
      I3 => s_axi_awburst(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0404FB"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0CCAAAA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I2 => s_axi_awsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      I4 => s_axi_awsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(4),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3),
      I2 => s_axi_awsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(2),
      I4 => s_axi_awsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(2),
      I2 => s_axi_awsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(1),
      I4 => s_axi_awsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0AAFFC0C0AA00"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\,
      I2 => narrow_burst_cnt_ld_reg(2),
      I3 => n_13_I_WRAP_BRST,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I5 => narrow_addr_int(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAFFFF08AA0000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8\,
      I5 => narrow_addr_int(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAB"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"595559655965A6AA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9\,
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A2A2222222A22"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I1 => narrow_burst_cnt_ld_reg(2),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14\,
      I3 => s_axi_awburst(0),
      I4 => s_axi_awburst(1),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
    port map (
      I0 => wr_data_sng_sm_cs(0),
      I1 => wr_data_sng_sm_cs(1),
      I2 => s_axi_wvalid,
      I3 => curr_narrow_burst,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11\,
      I1 => s_axi_awsize(2),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(3)
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I1 => s_axi_awsize(0),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I3 => s_axi_awsize(2),
      I4 => s_axi_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF47FFFFFF47"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(4),
      I1 => s_axi_awsize(0),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3),
      I3 => s_axi_awsize(2),
      I4 => s_axi_awsize(1),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(5),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(4),
      I2 => s_axi_awsize(1),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3),
      I4 => s_axi_awsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I1 => s_axi_awsize(1),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I3 => s_axi_awsize(0),
      I4 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      I1 => s_axi_awsize(0),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0AAFFC0C0AA00"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\,
      I2 => narrow_burst_cnt_ld_reg(3),
      I3 => n_13_I_WRAP_BRST,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I5 => narrow_addr_int(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(0)
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awaddr(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awaddr(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awaddr(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awaddr(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFFFFFBAA0000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8\,
      I5 => narrow_addr_int(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => narrow_addr_int(3),
      I1 => narrow_addr_int(2),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE01"
    )
    port map (
      I0 => narrow_addr_int(1),
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(2),
      I3 => narrow_addr_int(3),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24DB2B24DB24D4D"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(3),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF140400000000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14\,
      I1 => s_axi_awburst(0),
      I2 => s_axi_awburst(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24\,
      I4 => narrow_burst_cnt_ld_reg(3),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
    port map (
      I0 => wr_data_sng_sm_cs(0),
      I1 => wr_data_sng_sm_cs(1),
      I2 => s_axi_wvalid,
      I3 => curr_narrow_burst,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFE0EF1F10"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A2A2222222A22"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I1 => narrow_burst_cnt_ld_reg(4),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14\,
      I3 => s_axi_awburst(0),
      I4 => s_axi_awburst(1),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
    port map (
      I0 => wr_data_sng_sm_cs(0),
      I1 => wr_data_sng_sm_cs(1),
      I2 => s_axi_wvalid,
      I3 => curr_narrow_burst,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
    port map (
      I0 => s_axi_awaddr(4),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(3),
      I4 => s_axi_awaddr(1),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFCE0A0"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28\,
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFD5"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32\,
      I2 => s_axi_awsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFEEE00AAAEEE"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35\,
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12\,
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000404FF"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFACFFFFFFAFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11\,
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000CA5AA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_23__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555F5DD55005555"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12\,
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      I2 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_40\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40FFFF"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      I3 => \^aw_active_d1\,
      I4 => p_1_out,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awlen(5),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(6),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0AAFFC0C0AA00"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\,
      I2 => narrow_burst_cnt_ld_reg(4),
      I3 => n_13_I_WRAP_BRST,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I5 => narrow_addr_int(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awlen(7),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(4),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5353533F"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49\,
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(2),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0E800BFC0A800"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49\,
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEB28E82"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30\,
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => s_axi_awlen(5),
      I1 => s_axi_awlen(4),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awlen(7),
      I5 => s_axi_awlen(6),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awlen(3),
      I5 => s_axi_awlen(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50\,
      I1 => s_axi_awsize(1),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29\,
      I3 => s_axi_awsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E320E02"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30\,
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAFFFF08AA0000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12\,
      I5 => narrow_addr_int(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BBB2888"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_40\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04440000"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001050"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCDCFCDCFDDCFDDF"
    )
    port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(6),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCD0CCDCDDC2DDCE"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228122"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9\,
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FB0000"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awlen(1),
      I5 => s_axi_awlen(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_awlen(6),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awlen(5),
      I5 => s_axi_awlen(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(6)
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      O => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(5)
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awaddr(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAA8A8A8AAAAAAA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12\,
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      I4 => s_axi_awsize(0),
      I5 => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => narrow_addr_int(4),
      I1 => narrow_addr_int(3),
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(0),
      I4 => narrow_addr_int(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBEBEBEBEBEBEBFB"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14\,
      I1 => s_axi_awburst(0),
      I2 => s_axi_awburst(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFFFFF44444444"
    )
    port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => narrow_bram_addr_inc,
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => s_axi_awsize(0),
      I5 => aw_active_re,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\
    );
\GEN_NARROW_CNT.narrow_addr_int[4]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAB"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8\,
      I1 => narrow_addr_int(2),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(1),
      I4 => narrow_addr_int(3),
      I5 => narrow_addr_int(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1\,
      Q => narrow_addr_int(0),
      R => I1
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\,
      Q => narrow_addr_int(1),
      R => I1
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1\,
      Q => narrow_addr_int(2),
      R => I1
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1\,
      Q => narrow_addr_int(3),
      R => I1
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\,
      CYINIT => '0',
      DI(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18\,
      DI(2) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19\,
      DI(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20\,
      DI(0) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(0),
      O(3 downto 0) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(3 downto 0),
      S(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22\,
      S(2) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23\,
      S(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24\,
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9\,
      S => s_axi_awsize(2)
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1\,
      Q => narrow_addr_int(4),
      R => I1
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41\,
      DI(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42\,
      DI(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43\,
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44\,
      S(2) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45\,
      S(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46\,
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16\,
      CO(3) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(8),
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51\,
      O(3 downto 0) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb\(7 downto 4),
      S(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52\,
      S(2 downto 1) => \GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0\(6 downto 5),
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_bram_addr_inc,
      Q => narrow_bram_addr_inc_d1,
      R => I1
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF57FF00005700"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => p_1_out,
      I4 => \^aw_active_d1\,
      I5 => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\,
      O => narrow_burst_cnt_ld_reg(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => p_1_out,
      I2 => \^aw_active_d1\,
      I3 => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\,
      O => narrow_burst_cnt_ld_reg(1)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF15FF00001500"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => p_1_out,
      I4 => \^aw_active_d1\,
      I5 => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\,
      O => narrow_burst_cnt_ld_reg(2)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => p_1_out,
      I3 => \^aw_active_d1\,
      I4 => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3]\,
      O => narrow_burst_cnt_ld_reg(3)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FF00000100"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => p_1_out,
      I4 => \^aw_active_d1\,
      I5 => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4]\,
      O => narrow_burst_cnt_ld_reg(4)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(0),
      Q => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\,
      R => I1
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(1),
      Q => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\,
      R => I1
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(2),
      Q => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\,
      R => I1
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(3),
      Q => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3]\,
      R => I1
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(4),
      Q => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4]\,
      R => I1
    );
\GEN_NARROW_EN.axi_wlast_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_wlast,
      I2 => s_axi_wvalid,
      O => p_11_in
    );
\GEN_NARROW_EN.axi_wlast_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_11_in,
      Q => axi_wlast_d1,
      R => I1
    );
\GEN_NARROW_EN.curr_narrow_burst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030A000A0A0"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0\,
      I2 => s_axi_aresetn,
      I3 => axi_wlast_d1,
      I4 => p_11_in,
      I5 => curr_narrow_burst_en,
      O => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      O => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_awlen(4),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(5),
      I5 => s_axi_awlen(6),
      O => O4
    );
\GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0\,
      Q => curr_narrow_burst,
      R => '0'
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8D888DC"
    )
    port map (
      I0 => wr_data_sng_sm_cs(1),
      I1 => axi_wdata_full_reg,
      I2 => s_axi_wvalid,
      I3 => p_1_out,
      I4 => wr_data_sng_sm_cs(0),
      O => axi_wdata_full_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wdata_full_cmb,
      Q => axi_wdata_full_reg,
      R => I1
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0C8"
    )
    port map (
      I0 => axi_wdata_full_reg,
      I1 => p_1_out,
      I2 => s_axi_wvalid,
      I3 => wr_data_sng_sm_cs(1),
      I4 => wr_data_sng_sm_cs(0),
      O => bram_en_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_en_cmb,
      Q => p_8_in,
      R => I1
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => n_0_BID_FIFO,
      O => bvalid_cnt_inc
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => bvalid_cnt_inc,
      Q => clr_bram_we,
      R => I1
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFF5C0000"
    )
    port map (
      I0 => axi_wr_burst,
      I1 => s_axi_wlast,
      I2 => axi_wdata_full_reg,
      I3 => wr_data_sng_sm_cs(1),
      I4 => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\,
      I5 => wr_data_sng_sm_cs(0),
      O => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00A30000"
    )
    port map (
      I0 => axi_wr_burst,
      I1 => s_axi_wlast,
      I2 => axi_wdata_full_reg,
      I3 => wr_data_sng_sm_cs(0),
      I4 => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\,
      I5 => wr_data_sng_sm_cs(1),
      O => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0AA0088"
    )
    port map (
      I0 => p_1_out,
      I1 => axi_wdata_full_reg,
      I2 => s_axi_wlast,
      I3 => wr_data_sng_sm_cs(1),
      I4 => s_axi_wvalid,
      I5 => wr_data_sng_sm_cs(0),
      O => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\,
      Q => wr_data_sng_sm_cs(0),
      R => I1
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\,
      Q => wr_data_sng_sm_cs(1),
      R => I1
    );
\GEN_WRDATA[0].bram_wrdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(0),
      Q => bram_wrdata_a(0),
      R => '0'
    );
\GEN_WRDATA[100].bram_wrdata_int_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(100),
      Q => bram_wrdata_a(100),
      R => '0'
    );
\GEN_WRDATA[101].bram_wrdata_int_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(101),
      Q => bram_wrdata_a(101),
      R => '0'
    );
\GEN_WRDATA[102].bram_wrdata_int_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(102),
      Q => bram_wrdata_a(102),
      R => '0'
    );
\GEN_WRDATA[103].bram_wrdata_int_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(103),
      Q => bram_wrdata_a(103),
      R => '0'
    );
\GEN_WRDATA[104].bram_wrdata_int_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(104),
      Q => bram_wrdata_a(104),
      R => '0'
    );
\GEN_WRDATA[105].bram_wrdata_int_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(105),
      Q => bram_wrdata_a(105),
      R => '0'
    );
\GEN_WRDATA[106].bram_wrdata_int_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(106),
      Q => bram_wrdata_a(106),
      R => '0'
    );
\GEN_WRDATA[107].bram_wrdata_int_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(107),
      Q => bram_wrdata_a(107),
      R => '0'
    );
\GEN_WRDATA[108].bram_wrdata_int_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(108),
      Q => bram_wrdata_a(108),
      R => '0'
    );
\GEN_WRDATA[109].bram_wrdata_int_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(109),
      Q => bram_wrdata_a(109),
      R => '0'
    );
\GEN_WRDATA[10].bram_wrdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(10),
      Q => bram_wrdata_a(10),
      R => '0'
    );
\GEN_WRDATA[110].bram_wrdata_int_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(110),
      Q => bram_wrdata_a(110),
      R => '0'
    );
\GEN_WRDATA[111].bram_wrdata_int_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(111),
      Q => bram_wrdata_a(111),
      R => '0'
    );
\GEN_WRDATA[112].bram_wrdata_int_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(112),
      Q => bram_wrdata_a(112),
      R => '0'
    );
\GEN_WRDATA[113].bram_wrdata_int_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(113),
      Q => bram_wrdata_a(113),
      R => '0'
    );
\GEN_WRDATA[114].bram_wrdata_int_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(114),
      Q => bram_wrdata_a(114),
      R => '0'
    );
\GEN_WRDATA[115].bram_wrdata_int_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(115),
      Q => bram_wrdata_a(115),
      R => '0'
    );
\GEN_WRDATA[116].bram_wrdata_int_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(116),
      Q => bram_wrdata_a(116),
      R => '0'
    );
\GEN_WRDATA[117].bram_wrdata_int_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(117),
      Q => bram_wrdata_a(117),
      R => '0'
    );
\GEN_WRDATA[118].bram_wrdata_int_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(118),
      Q => bram_wrdata_a(118),
      R => '0'
    );
\GEN_WRDATA[119].bram_wrdata_int_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(119),
      Q => bram_wrdata_a(119),
      R => '0'
    );
\GEN_WRDATA[11].bram_wrdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(11),
      Q => bram_wrdata_a(11),
      R => '0'
    );
\GEN_WRDATA[120].bram_wrdata_int_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(120),
      Q => bram_wrdata_a(120),
      R => '0'
    );
\GEN_WRDATA[121].bram_wrdata_int_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(121),
      Q => bram_wrdata_a(121),
      R => '0'
    );
\GEN_WRDATA[122].bram_wrdata_int_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(122),
      Q => bram_wrdata_a(122),
      R => '0'
    );
\GEN_WRDATA[123].bram_wrdata_int_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(123),
      Q => bram_wrdata_a(123),
      R => '0'
    );
\GEN_WRDATA[124].bram_wrdata_int_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(124),
      Q => bram_wrdata_a(124),
      R => '0'
    );
\GEN_WRDATA[125].bram_wrdata_int_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(125),
      Q => bram_wrdata_a(125),
      R => '0'
    );
\GEN_WRDATA[126].bram_wrdata_int_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(126),
      Q => bram_wrdata_a(126),
      R => '0'
    );
\GEN_WRDATA[127].bram_wrdata_int_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(127),
      Q => bram_wrdata_a(127),
      R => '0'
    );
\GEN_WRDATA[128].bram_wrdata_int_reg[128]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(128),
      Q => bram_wrdata_a(128),
      R => '0'
    );
\GEN_WRDATA[129].bram_wrdata_int_reg[129]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(129),
      Q => bram_wrdata_a(129),
      R => '0'
    );
\GEN_WRDATA[12].bram_wrdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(12),
      Q => bram_wrdata_a(12),
      R => '0'
    );
\GEN_WRDATA[130].bram_wrdata_int_reg[130]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(130),
      Q => bram_wrdata_a(130),
      R => '0'
    );
\GEN_WRDATA[131].bram_wrdata_int_reg[131]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(131),
      Q => bram_wrdata_a(131),
      R => '0'
    );
\GEN_WRDATA[132].bram_wrdata_int_reg[132]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(132),
      Q => bram_wrdata_a(132),
      R => '0'
    );
\GEN_WRDATA[133].bram_wrdata_int_reg[133]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(133),
      Q => bram_wrdata_a(133),
      R => '0'
    );
\GEN_WRDATA[134].bram_wrdata_int_reg[134]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(134),
      Q => bram_wrdata_a(134),
      R => '0'
    );
\GEN_WRDATA[135].bram_wrdata_int_reg[135]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(135),
      Q => bram_wrdata_a(135),
      R => '0'
    );
\GEN_WRDATA[136].bram_wrdata_int_reg[136]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(136),
      Q => bram_wrdata_a(136),
      R => '0'
    );
\GEN_WRDATA[137].bram_wrdata_int_reg[137]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(137),
      Q => bram_wrdata_a(137),
      R => '0'
    );
\GEN_WRDATA[138].bram_wrdata_int_reg[138]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(138),
      Q => bram_wrdata_a(138),
      R => '0'
    );
\GEN_WRDATA[139].bram_wrdata_int_reg[139]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(139),
      Q => bram_wrdata_a(139),
      R => '0'
    );
\GEN_WRDATA[13].bram_wrdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(13),
      Q => bram_wrdata_a(13),
      R => '0'
    );
\GEN_WRDATA[140].bram_wrdata_int_reg[140]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(140),
      Q => bram_wrdata_a(140),
      R => '0'
    );
\GEN_WRDATA[141].bram_wrdata_int_reg[141]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(141),
      Q => bram_wrdata_a(141),
      R => '0'
    );
\GEN_WRDATA[142].bram_wrdata_int_reg[142]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(142),
      Q => bram_wrdata_a(142),
      R => '0'
    );
\GEN_WRDATA[143].bram_wrdata_int_reg[143]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(143),
      Q => bram_wrdata_a(143),
      R => '0'
    );
\GEN_WRDATA[144].bram_wrdata_int_reg[144]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(144),
      Q => bram_wrdata_a(144),
      R => '0'
    );
\GEN_WRDATA[145].bram_wrdata_int_reg[145]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(145),
      Q => bram_wrdata_a(145),
      R => '0'
    );
\GEN_WRDATA[146].bram_wrdata_int_reg[146]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(146),
      Q => bram_wrdata_a(146),
      R => '0'
    );
\GEN_WRDATA[147].bram_wrdata_int_reg[147]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(147),
      Q => bram_wrdata_a(147),
      R => '0'
    );
\GEN_WRDATA[148].bram_wrdata_int_reg[148]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(148),
      Q => bram_wrdata_a(148),
      R => '0'
    );
\GEN_WRDATA[149].bram_wrdata_int_reg[149]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(149),
      Q => bram_wrdata_a(149),
      R => '0'
    );
\GEN_WRDATA[14].bram_wrdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(14),
      Q => bram_wrdata_a(14),
      R => '0'
    );
\GEN_WRDATA[150].bram_wrdata_int_reg[150]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(150),
      Q => bram_wrdata_a(150),
      R => '0'
    );
\GEN_WRDATA[151].bram_wrdata_int_reg[151]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(151),
      Q => bram_wrdata_a(151),
      R => '0'
    );
\GEN_WRDATA[152].bram_wrdata_int_reg[152]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(152),
      Q => bram_wrdata_a(152),
      R => '0'
    );
\GEN_WRDATA[153].bram_wrdata_int_reg[153]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(153),
      Q => bram_wrdata_a(153),
      R => '0'
    );
\GEN_WRDATA[154].bram_wrdata_int_reg[154]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(154),
      Q => bram_wrdata_a(154),
      R => '0'
    );
\GEN_WRDATA[155].bram_wrdata_int_reg[155]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(155),
      Q => bram_wrdata_a(155),
      R => '0'
    );
\GEN_WRDATA[156].bram_wrdata_int_reg[156]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(156),
      Q => bram_wrdata_a(156),
      R => '0'
    );
\GEN_WRDATA[157].bram_wrdata_int_reg[157]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(157),
      Q => bram_wrdata_a(157),
      R => '0'
    );
\GEN_WRDATA[158].bram_wrdata_int_reg[158]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(158),
      Q => bram_wrdata_a(158),
      R => '0'
    );
\GEN_WRDATA[159].bram_wrdata_int_reg[159]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(159),
      Q => bram_wrdata_a(159),
      R => '0'
    );
\GEN_WRDATA[15].bram_wrdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(15),
      Q => bram_wrdata_a(15),
      R => '0'
    );
\GEN_WRDATA[160].bram_wrdata_int_reg[160]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(160),
      Q => bram_wrdata_a(160),
      R => '0'
    );
\GEN_WRDATA[161].bram_wrdata_int_reg[161]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(161),
      Q => bram_wrdata_a(161),
      R => '0'
    );
\GEN_WRDATA[162].bram_wrdata_int_reg[162]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(162),
      Q => bram_wrdata_a(162),
      R => '0'
    );
\GEN_WRDATA[163].bram_wrdata_int_reg[163]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(163),
      Q => bram_wrdata_a(163),
      R => '0'
    );
\GEN_WRDATA[164].bram_wrdata_int_reg[164]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(164),
      Q => bram_wrdata_a(164),
      R => '0'
    );
\GEN_WRDATA[165].bram_wrdata_int_reg[165]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(165),
      Q => bram_wrdata_a(165),
      R => '0'
    );
\GEN_WRDATA[166].bram_wrdata_int_reg[166]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(166),
      Q => bram_wrdata_a(166),
      R => '0'
    );
\GEN_WRDATA[167].bram_wrdata_int_reg[167]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(167),
      Q => bram_wrdata_a(167),
      R => '0'
    );
\GEN_WRDATA[168].bram_wrdata_int_reg[168]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(168),
      Q => bram_wrdata_a(168),
      R => '0'
    );
\GEN_WRDATA[169].bram_wrdata_int_reg[169]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(169),
      Q => bram_wrdata_a(169),
      R => '0'
    );
\GEN_WRDATA[16].bram_wrdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(16),
      Q => bram_wrdata_a(16),
      R => '0'
    );
\GEN_WRDATA[170].bram_wrdata_int_reg[170]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(170),
      Q => bram_wrdata_a(170),
      R => '0'
    );
\GEN_WRDATA[171].bram_wrdata_int_reg[171]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(171),
      Q => bram_wrdata_a(171),
      R => '0'
    );
\GEN_WRDATA[172].bram_wrdata_int_reg[172]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(172),
      Q => bram_wrdata_a(172),
      R => '0'
    );
\GEN_WRDATA[173].bram_wrdata_int_reg[173]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(173),
      Q => bram_wrdata_a(173),
      R => '0'
    );
\GEN_WRDATA[174].bram_wrdata_int_reg[174]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(174),
      Q => bram_wrdata_a(174),
      R => '0'
    );
\GEN_WRDATA[175].bram_wrdata_int_reg[175]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(175),
      Q => bram_wrdata_a(175),
      R => '0'
    );
\GEN_WRDATA[176].bram_wrdata_int_reg[176]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(176),
      Q => bram_wrdata_a(176),
      R => '0'
    );
\GEN_WRDATA[177].bram_wrdata_int_reg[177]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(177),
      Q => bram_wrdata_a(177),
      R => '0'
    );
\GEN_WRDATA[178].bram_wrdata_int_reg[178]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(178),
      Q => bram_wrdata_a(178),
      R => '0'
    );
\GEN_WRDATA[179].bram_wrdata_int_reg[179]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(179),
      Q => bram_wrdata_a(179),
      R => '0'
    );
\GEN_WRDATA[17].bram_wrdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(17),
      Q => bram_wrdata_a(17),
      R => '0'
    );
\GEN_WRDATA[180].bram_wrdata_int_reg[180]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(180),
      Q => bram_wrdata_a(180),
      R => '0'
    );
\GEN_WRDATA[181].bram_wrdata_int_reg[181]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(181),
      Q => bram_wrdata_a(181),
      R => '0'
    );
\GEN_WRDATA[182].bram_wrdata_int_reg[182]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(182),
      Q => bram_wrdata_a(182),
      R => '0'
    );
\GEN_WRDATA[183].bram_wrdata_int_reg[183]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(183),
      Q => bram_wrdata_a(183),
      R => '0'
    );
\GEN_WRDATA[184].bram_wrdata_int_reg[184]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(184),
      Q => bram_wrdata_a(184),
      R => '0'
    );
\GEN_WRDATA[185].bram_wrdata_int_reg[185]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(185),
      Q => bram_wrdata_a(185),
      R => '0'
    );
\GEN_WRDATA[186].bram_wrdata_int_reg[186]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(186),
      Q => bram_wrdata_a(186),
      R => '0'
    );
\GEN_WRDATA[187].bram_wrdata_int_reg[187]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(187),
      Q => bram_wrdata_a(187),
      R => '0'
    );
\GEN_WRDATA[188].bram_wrdata_int_reg[188]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(188),
      Q => bram_wrdata_a(188),
      R => '0'
    );
\GEN_WRDATA[189].bram_wrdata_int_reg[189]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(189),
      Q => bram_wrdata_a(189),
      R => '0'
    );
\GEN_WRDATA[18].bram_wrdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(18),
      Q => bram_wrdata_a(18),
      R => '0'
    );
\GEN_WRDATA[190].bram_wrdata_int_reg[190]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(190),
      Q => bram_wrdata_a(190),
      R => '0'
    );
\GEN_WRDATA[191].bram_wrdata_int_reg[191]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(191),
      Q => bram_wrdata_a(191),
      R => '0'
    );
\GEN_WRDATA[192].bram_wrdata_int_reg[192]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(192),
      Q => bram_wrdata_a(192),
      R => '0'
    );
\GEN_WRDATA[193].bram_wrdata_int_reg[193]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(193),
      Q => bram_wrdata_a(193),
      R => '0'
    );
\GEN_WRDATA[194].bram_wrdata_int_reg[194]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(194),
      Q => bram_wrdata_a(194),
      R => '0'
    );
\GEN_WRDATA[195].bram_wrdata_int_reg[195]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(195),
      Q => bram_wrdata_a(195),
      R => '0'
    );
\GEN_WRDATA[196].bram_wrdata_int_reg[196]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(196),
      Q => bram_wrdata_a(196),
      R => '0'
    );
\GEN_WRDATA[197].bram_wrdata_int_reg[197]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(197),
      Q => bram_wrdata_a(197),
      R => '0'
    );
\GEN_WRDATA[198].bram_wrdata_int_reg[198]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(198),
      Q => bram_wrdata_a(198),
      R => '0'
    );
\GEN_WRDATA[199].bram_wrdata_int_reg[199]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(199),
      Q => bram_wrdata_a(199),
      R => '0'
    );
\GEN_WRDATA[19].bram_wrdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(19),
      Q => bram_wrdata_a(19),
      R => '0'
    );
\GEN_WRDATA[1].bram_wrdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(1),
      Q => bram_wrdata_a(1),
      R => '0'
    );
\GEN_WRDATA[200].bram_wrdata_int_reg[200]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(200),
      Q => bram_wrdata_a(200),
      R => '0'
    );
\GEN_WRDATA[201].bram_wrdata_int_reg[201]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(201),
      Q => bram_wrdata_a(201),
      R => '0'
    );
\GEN_WRDATA[202].bram_wrdata_int_reg[202]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(202),
      Q => bram_wrdata_a(202),
      R => '0'
    );
\GEN_WRDATA[203].bram_wrdata_int_reg[203]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(203),
      Q => bram_wrdata_a(203),
      R => '0'
    );
\GEN_WRDATA[204].bram_wrdata_int_reg[204]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(204),
      Q => bram_wrdata_a(204),
      R => '0'
    );
\GEN_WRDATA[205].bram_wrdata_int_reg[205]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(205),
      Q => bram_wrdata_a(205),
      R => '0'
    );
\GEN_WRDATA[206].bram_wrdata_int_reg[206]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(206),
      Q => bram_wrdata_a(206),
      R => '0'
    );
\GEN_WRDATA[207].bram_wrdata_int_reg[207]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(207),
      Q => bram_wrdata_a(207),
      R => '0'
    );
\GEN_WRDATA[208].bram_wrdata_int_reg[208]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(208),
      Q => bram_wrdata_a(208),
      R => '0'
    );
\GEN_WRDATA[209].bram_wrdata_int_reg[209]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(209),
      Q => bram_wrdata_a(209),
      R => '0'
    );
\GEN_WRDATA[20].bram_wrdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(20),
      Q => bram_wrdata_a(20),
      R => '0'
    );
\GEN_WRDATA[210].bram_wrdata_int_reg[210]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(210),
      Q => bram_wrdata_a(210),
      R => '0'
    );
\GEN_WRDATA[211].bram_wrdata_int_reg[211]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(211),
      Q => bram_wrdata_a(211),
      R => '0'
    );
\GEN_WRDATA[212].bram_wrdata_int_reg[212]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(212),
      Q => bram_wrdata_a(212),
      R => '0'
    );
\GEN_WRDATA[213].bram_wrdata_int_reg[213]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(213),
      Q => bram_wrdata_a(213),
      R => '0'
    );
\GEN_WRDATA[214].bram_wrdata_int_reg[214]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(214),
      Q => bram_wrdata_a(214),
      R => '0'
    );
\GEN_WRDATA[215].bram_wrdata_int_reg[215]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(215),
      Q => bram_wrdata_a(215),
      R => '0'
    );
\GEN_WRDATA[216].bram_wrdata_int_reg[216]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(216),
      Q => bram_wrdata_a(216),
      R => '0'
    );
\GEN_WRDATA[217].bram_wrdata_int_reg[217]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(217),
      Q => bram_wrdata_a(217),
      R => '0'
    );
\GEN_WRDATA[218].bram_wrdata_int_reg[218]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(218),
      Q => bram_wrdata_a(218),
      R => '0'
    );
\GEN_WRDATA[219].bram_wrdata_int_reg[219]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(219),
      Q => bram_wrdata_a(219),
      R => '0'
    );
\GEN_WRDATA[21].bram_wrdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(21),
      Q => bram_wrdata_a(21),
      R => '0'
    );
\GEN_WRDATA[220].bram_wrdata_int_reg[220]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(220),
      Q => bram_wrdata_a(220),
      R => '0'
    );
\GEN_WRDATA[221].bram_wrdata_int_reg[221]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(221),
      Q => bram_wrdata_a(221),
      R => '0'
    );
\GEN_WRDATA[222].bram_wrdata_int_reg[222]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(222),
      Q => bram_wrdata_a(222),
      R => '0'
    );
\GEN_WRDATA[223].bram_wrdata_int_reg[223]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(223),
      Q => bram_wrdata_a(223),
      R => '0'
    );
\GEN_WRDATA[224].bram_wrdata_int_reg[224]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(224),
      Q => bram_wrdata_a(224),
      R => '0'
    );
\GEN_WRDATA[225].bram_wrdata_int_reg[225]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(225),
      Q => bram_wrdata_a(225),
      R => '0'
    );
\GEN_WRDATA[226].bram_wrdata_int_reg[226]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(226),
      Q => bram_wrdata_a(226),
      R => '0'
    );
\GEN_WRDATA[227].bram_wrdata_int_reg[227]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(227),
      Q => bram_wrdata_a(227),
      R => '0'
    );
\GEN_WRDATA[228].bram_wrdata_int_reg[228]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(228),
      Q => bram_wrdata_a(228),
      R => '0'
    );
\GEN_WRDATA[229].bram_wrdata_int_reg[229]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(229),
      Q => bram_wrdata_a(229),
      R => '0'
    );
\GEN_WRDATA[22].bram_wrdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(22),
      Q => bram_wrdata_a(22),
      R => '0'
    );
\GEN_WRDATA[230].bram_wrdata_int_reg[230]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(230),
      Q => bram_wrdata_a(230),
      R => '0'
    );
\GEN_WRDATA[231].bram_wrdata_int_reg[231]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(231),
      Q => bram_wrdata_a(231),
      R => '0'
    );
\GEN_WRDATA[232].bram_wrdata_int_reg[232]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(232),
      Q => bram_wrdata_a(232),
      R => '0'
    );
\GEN_WRDATA[233].bram_wrdata_int_reg[233]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(233),
      Q => bram_wrdata_a(233),
      R => '0'
    );
\GEN_WRDATA[234].bram_wrdata_int_reg[234]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(234),
      Q => bram_wrdata_a(234),
      R => '0'
    );
\GEN_WRDATA[235].bram_wrdata_int_reg[235]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(235),
      Q => bram_wrdata_a(235),
      R => '0'
    );
\GEN_WRDATA[236].bram_wrdata_int_reg[236]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(236),
      Q => bram_wrdata_a(236),
      R => '0'
    );
\GEN_WRDATA[237].bram_wrdata_int_reg[237]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(237),
      Q => bram_wrdata_a(237),
      R => '0'
    );
\GEN_WRDATA[238].bram_wrdata_int_reg[238]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(238),
      Q => bram_wrdata_a(238),
      R => '0'
    );
\GEN_WRDATA[239].bram_wrdata_int_reg[239]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(239),
      Q => bram_wrdata_a(239),
      R => '0'
    );
\GEN_WRDATA[23].bram_wrdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(23),
      Q => bram_wrdata_a(23),
      R => '0'
    );
\GEN_WRDATA[240].bram_wrdata_int_reg[240]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(240),
      Q => bram_wrdata_a(240),
      R => '0'
    );
\GEN_WRDATA[241].bram_wrdata_int_reg[241]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(241),
      Q => bram_wrdata_a(241),
      R => '0'
    );
\GEN_WRDATA[242].bram_wrdata_int_reg[242]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(242),
      Q => bram_wrdata_a(242),
      R => '0'
    );
\GEN_WRDATA[243].bram_wrdata_int_reg[243]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(243),
      Q => bram_wrdata_a(243),
      R => '0'
    );
\GEN_WRDATA[244].bram_wrdata_int_reg[244]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(244),
      Q => bram_wrdata_a(244),
      R => '0'
    );
\GEN_WRDATA[245].bram_wrdata_int_reg[245]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(245),
      Q => bram_wrdata_a(245),
      R => '0'
    );
\GEN_WRDATA[246].bram_wrdata_int_reg[246]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(246),
      Q => bram_wrdata_a(246),
      R => '0'
    );
\GEN_WRDATA[247].bram_wrdata_int_reg[247]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(247),
      Q => bram_wrdata_a(247),
      R => '0'
    );
\GEN_WRDATA[248].bram_wrdata_int_reg[248]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(248),
      Q => bram_wrdata_a(248),
      R => '0'
    );
\GEN_WRDATA[249].bram_wrdata_int_reg[249]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(249),
      Q => bram_wrdata_a(249),
      R => '0'
    );
\GEN_WRDATA[24].bram_wrdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(24),
      Q => bram_wrdata_a(24),
      R => '0'
    );
\GEN_WRDATA[250].bram_wrdata_int_reg[250]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(250),
      Q => bram_wrdata_a(250),
      R => '0'
    );
\GEN_WRDATA[251].bram_wrdata_int_reg[251]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(251),
      Q => bram_wrdata_a(251),
      R => '0'
    );
\GEN_WRDATA[252].bram_wrdata_int_reg[252]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(252),
      Q => bram_wrdata_a(252),
      R => '0'
    );
\GEN_WRDATA[253].bram_wrdata_int_reg[253]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(253),
      Q => bram_wrdata_a(253),
      R => '0'
    );
\GEN_WRDATA[254].bram_wrdata_int_reg[254]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(254),
      Q => bram_wrdata_a(254),
      R => '0'
    );
\GEN_WRDATA[255].bram_wrdata_int[255]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CC4"
    )
    port map (
      I0 => axi_wdata_full_reg,
      I1 => s_axi_wvalid,
      I2 => wr_data_sng_sm_cs(0),
      I3 => wr_data_sng_sm_cs(1),
      O => wrdata_reg_ld
    );
\GEN_WRDATA[255].bram_wrdata_int_reg[255]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(255),
      Q => bram_wrdata_a(255),
      R => '0'
    );
\GEN_WRDATA[25].bram_wrdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(25),
      Q => bram_wrdata_a(25),
      R => '0'
    );
\GEN_WRDATA[26].bram_wrdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(26),
      Q => bram_wrdata_a(26),
      R => '0'
    );
\GEN_WRDATA[27].bram_wrdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(27),
      Q => bram_wrdata_a(27),
      R => '0'
    );
\GEN_WRDATA[28].bram_wrdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(28),
      Q => bram_wrdata_a(28),
      R => '0'
    );
\GEN_WRDATA[29].bram_wrdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(29),
      Q => bram_wrdata_a(29),
      R => '0'
    );
\GEN_WRDATA[2].bram_wrdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(2),
      Q => bram_wrdata_a(2),
      R => '0'
    );
\GEN_WRDATA[30].bram_wrdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(30),
      Q => bram_wrdata_a(30),
      R => '0'
    );
\GEN_WRDATA[31].bram_wrdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(31),
      Q => bram_wrdata_a(31),
      R => '0'
    );
\GEN_WRDATA[32].bram_wrdata_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(32),
      Q => bram_wrdata_a(32),
      R => '0'
    );
\GEN_WRDATA[33].bram_wrdata_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(33),
      Q => bram_wrdata_a(33),
      R => '0'
    );
\GEN_WRDATA[34].bram_wrdata_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(34),
      Q => bram_wrdata_a(34),
      R => '0'
    );
\GEN_WRDATA[35].bram_wrdata_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(35),
      Q => bram_wrdata_a(35),
      R => '0'
    );
\GEN_WRDATA[36].bram_wrdata_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(36),
      Q => bram_wrdata_a(36),
      R => '0'
    );
\GEN_WRDATA[37].bram_wrdata_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(37),
      Q => bram_wrdata_a(37),
      R => '0'
    );
\GEN_WRDATA[38].bram_wrdata_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(38),
      Q => bram_wrdata_a(38),
      R => '0'
    );
\GEN_WRDATA[39].bram_wrdata_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(39),
      Q => bram_wrdata_a(39),
      R => '0'
    );
\GEN_WRDATA[3].bram_wrdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(3),
      Q => bram_wrdata_a(3),
      R => '0'
    );
\GEN_WRDATA[40].bram_wrdata_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(40),
      Q => bram_wrdata_a(40),
      R => '0'
    );
\GEN_WRDATA[41].bram_wrdata_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(41),
      Q => bram_wrdata_a(41),
      R => '0'
    );
\GEN_WRDATA[42].bram_wrdata_int_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(42),
      Q => bram_wrdata_a(42),
      R => '0'
    );
\GEN_WRDATA[43].bram_wrdata_int_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(43),
      Q => bram_wrdata_a(43),
      R => '0'
    );
\GEN_WRDATA[44].bram_wrdata_int_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(44),
      Q => bram_wrdata_a(44),
      R => '0'
    );
\GEN_WRDATA[45].bram_wrdata_int_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(45),
      Q => bram_wrdata_a(45),
      R => '0'
    );
\GEN_WRDATA[46].bram_wrdata_int_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(46),
      Q => bram_wrdata_a(46),
      R => '0'
    );
\GEN_WRDATA[47].bram_wrdata_int_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(47),
      Q => bram_wrdata_a(47),
      R => '0'
    );
\GEN_WRDATA[48].bram_wrdata_int_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(48),
      Q => bram_wrdata_a(48),
      R => '0'
    );
\GEN_WRDATA[49].bram_wrdata_int_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(49),
      Q => bram_wrdata_a(49),
      R => '0'
    );
\GEN_WRDATA[4].bram_wrdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(4),
      Q => bram_wrdata_a(4),
      R => '0'
    );
\GEN_WRDATA[50].bram_wrdata_int_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(50),
      Q => bram_wrdata_a(50),
      R => '0'
    );
\GEN_WRDATA[51].bram_wrdata_int_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(51),
      Q => bram_wrdata_a(51),
      R => '0'
    );
\GEN_WRDATA[52].bram_wrdata_int_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(52),
      Q => bram_wrdata_a(52),
      R => '0'
    );
\GEN_WRDATA[53].bram_wrdata_int_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(53),
      Q => bram_wrdata_a(53),
      R => '0'
    );
\GEN_WRDATA[54].bram_wrdata_int_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(54),
      Q => bram_wrdata_a(54),
      R => '0'
    );
\GEN_WRDATA[55].bram_wrdata_int_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(55),
      Q => bram_wrdata_a(55),
      R => '0'
    );
\GEN_WRDATA[56].bram_wrdata_int_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(56),
      Q => bram_wrdata_a(56),
      R => '0'
    );
\GEN_WRDATA[57].bram_wrdata_int_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(57),
      Q => bram_wrdata_a(57),
      R => '0'
    );
\GEN_WRDATA[58].bram_wrdata_int_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(58),
      Q => bram_wrdata_a(58),
      R => '0'
    );
\GEN_WRDATA[59].bram_wrdata_int_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(59),
      Q => bram_wrdata_a(59),
      R => '0'
    );
\GEN_WRDATA[5].bram_wrdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(5),
      Q => bram_wrdata_a(5),
      R => '0'
    );
\GEN_WRDATA[60].bram_wrdata_int_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(60),
      Q => bram_wrdata_a(60),
      R => '0'
    );
\GEN_WRDATA[61].bram_wrdata_int_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(61),
      Q => bram_wrdata_a(61),
      R => '0'
    );
\GEN_WRDATA[62].bram_wrdata_int_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(62),
      Q => bram_wrdata_a(62),
      R => '0'
    );
\GEN_WRDATA[63].bram_wrdata_int_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(63),
      Q => bram_wrdata_a(63),
      R => '0'
    );
\GEN_WRDATA[64].bram_wrdata_int_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(64),
      Q => bram_wrdata_a(64),
      R => '0'
    );
\GEN_WRDATA[65].bram_wrdata_int_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(65),
      Q => bram_wrdata_a(65),
      R => '0'
    );
\GEN_WRDATA[66].bram_wrdata_int_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(66),
      Q => bram_wrdata_a(66),
      R => '0'
    );
\GEN_WRDATA[67].bram_wrdata_int_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(67),
      Q => bram_wrdata_a(67),
      R => '0'
    );
\GEN_WRDATA[68].bram_wrdata_int_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(68),
      Q => bram_wrdata_a(68),
      R => '0'
    );
\GEN_WRDATA[69].bram_wrdata_int_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(69),
      Q => bram_wrdata_a(69),
      R => '0'
    );
\GEN_WRDATA[6].bram_wrdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(6),
      Q => bram_wrdata_a(6),
      R => '0'
    );
\GEN_WRDATA[70].bram_wrdata_int_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(70),
      Q => bram_wrdata_a(70),
      R => '0'
    );
\GEN_WRDATA[71].bram_wrdata_int_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(71),
      Q => bram_wrdata_a(71),
      R => '0'
    );
\GEN_WRDATA[72].bram_wrdata_int_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(72),
      Q => bram_wrdata_a(72),
      R => '0'
    );
\GEN_WRDATA[73].bram_wrdata_int_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(73),
      Q => bram_wrdata_a(73),
      R => '0'
    );
\GEN_WRDATA[74].bram_wrdata_int_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(74),
      Q => bram_wrdata_a(74),
      R => '0'
    );
\GEN_WRDATA[75].bram_wrdata_int_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(75),
      Q => bram_wrdata_a(75),
      R => '0'
    );
\GEN_WRDATA[76].bram_wrdata_int_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(76),
      Q => bram_wrdata_a(76),
      R => '0'
    );
\GEN_WRDATA[77].bram_wrdata_int_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(77),
      Q => bram_wrdata_a(77),
      R => '0'
    );
\GEN_WRDATA[78].bram_wrdata_int_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(78),
      Q => bram_wrdata_a(78),
      R => '0'
    );
\GEN_WRDATA[79].bram_wrdata_int_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(79),
      Q => bram_wrdata_a(79),
      R => '0'
    );
\GEN_WRDATA[7].bram_wrdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(7),
      Q => bram_wrdata_a(7),
      R => '0'
    );
\GEN_WRDATA[80].bram_wrdata_int_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(80),
      Q => bram_wrdata_a(80),
      R => '0'
    );
\GEN_WRDATA[81].bram_wrdata_int_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(81),
      Q => bram_wrdata_a(81),
      R => '0'
    );
\GEN_WRDATA[82].bram_wrdata_int_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(82),
      Q => bram_wrdata_a(82),
      R => '0'
    );
\GEN_WRDATA[83].bram_wrdata_int_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(83),
      Q => bram_wrdata_a(83),
      R => '0'
    );
\GEN_WRDATA[84].bram_wrdata_int_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(84),
      Q => bram_wrdata_a(84),
      R => '0'
    );
\GEN_WRDATA[85].bram_wrdata_int_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(85),
      Q => bram_wrdata_a(85),
      R => '0'
    );
\GEN_WRDATA[86].bram_wrdata_int_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(86),
      Q => bram_wrdata_a(86),
      R => '0'
    );
\GEN_WRDATA[87].bram_wrdata_int_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(87),
      Q => bram_wrdata_a(87),
      R => '0'
    );
\GEN_WRDATA[88].bram_wrdata_int_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(88),
      Q => bram_wrdata_a(88),
      R => '0'
    );
\GEN_WRDATA[89].bram_wrdata_int_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(89),
      Q => bram_wrdata_a(89),
      R => '0'
    );
\GEN_WRDATA[8].bram_wrdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(8),
      Q => bram_wrdata_a(8),
      R => '0'
    );
\GEN_WRDATA[90].bram_wrdata_int_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(90),
      Q => bram_wrdata_a(90),
      R => '0'
    );
\GEN_WRDATA[91].bram_wrdata_int_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(91),
      Q => bram_wrdata_a(91),
      R => '0'
    );
\GEN_WRDATA[92].bram_wrdata_int_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(92),
      Q => bram_wrdata_a(92),
      R => '0'
    );
\GEN_WRDATA[93].bram_wrdata_int_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(93),
      Q => bram_wrdata_a(93),
      R => '0'
    );
\GEN_WRDATA[94].bram_wrdata_int_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(94),
      Q => bram_wrdata_a(94),
      R => '0'
    );
\GEN_WRDATA[95].bram_wrdata_int_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(95),
      Q => bram_wrdata_a(95),
      R => '0'
    );
\GEN_WRDATA[96].bram_wrdata_int_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(96),
      Q => bram_wrdata_a(96),
      R => '0'
    );
\GEN_WRDATA[97].bram_wrdata_int_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(97),
      Q => bram_wrdata_a(97),
      R => '0'
    );
\GEN_WRDATA[98].bram_wrdata_int_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(98),
      Q => bram_wrdata_a(98),
      R => '0'
    );
\GEN_WRDATA[99].bram_wrdata_int_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(99),
      Q => bram_wrdata_a(99),
      R => '0'
    );
\GEN_WRDATA[9].bram_wrdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(9),
      Q => bram_wrdata_a(9),
      R => '0'
    );
\GEN_WR_NO_ECC.bram_we_int[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F33B0000FFFFFFFF"
    )
    port map (
      I0 => axi_wdata_full_reg,
      I1 => s_axi_wvalid,
      I2 => wr_data_sng_sm_cs(0),
      I3 => wr_data_sng_sm_cs(1),
      I4 => clr_bram_we,
      I5 => s_axi_aresetn,
      O => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(0),
      Q => Q(0),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(10),
      Q => Q(10),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(11),
      Q => Q(11),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(12),
      Q => Q(12),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(13),
      Q => Q(13),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(14),
      Q => Q(14),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(15),
      Q => Q(15),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(16),
      Q => Q(16),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(17),
      Q => Q(17),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(18),
      Q => Q(18),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(19),
      Q => Q(19),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(1),
      Q => Q(1),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(20),
      Q => Q(20),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(21),
      Q => Q(21),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(22),
      Q => Q(22),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(23),
      Q => Q(23),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(24),
      Q => Q(24),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(25),
      Q => Q(25),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(26),
      Q => Q(26),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(27),
      Q => Q(27),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(28),
      Q => Q(28),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(29),
      Q => Q(29),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(2),
      Q => Q(2),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(30),
      Q => Q(30),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(31),
      Q => Q(31),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(3),
      Q => Q(3),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(4),
      Q => Q(4),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(5),
      Q => Q(5),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(6),
      Q => Q(6),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(7),
      Q => Q(7),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(8),
      Q => Q(8),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(9),
      Q => Q(9),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1\
    );
I_WRAP_BRST: entity work.controller_wrap_brst
    port map (
      D(8 downto 0) => D(8 downto 0),
      I1 => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_5\,
      I2 => I2,
      I3 => I3,
      I4 => I4,
      I5 => \^aw_active_d1\,
      I6 => I1,
      I7 => I7,
      I8 => I8,
      O1 => n_9_I_WRAP_BRST,
      O2 => O6,
      O3 => n_13_I_WRAP_BRST,
      O7 => O7,
      O9 => O9,
      ar_active_re => ar_active_re,
      aw_active_re => aw_active_re,
      curr_narrow_burst => curr_narrow_burst,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      narrow_addr_int(4 downto 0) => narrow_addr_int(4 downto 0),
      narrow_bram_addr_inc => narrow_bram_addr_inc,
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(13 downto 5),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      wr_data_sng_sm_cs(1 downto 0) => wr_data_sng_sm_cs(1 downto 0)
    );
\arb_sm_cs[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => wr_data_sng_sm_cs(1),
      I1 => wr_data_sng_sm_cs(0),
      O => O10
    );
aw_active_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_out,
      Q => \^aw_active_d1\,
      R => I1
    );
axi_awready_int_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
    port map (
      I0 => s_axi_awvalid,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => AW2Arb_BVALID_Cnt(1),
      O => O8
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_3_BID_FIFO,
      Q => \^s_axi_bid\(0),
      R => I1
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAA0A"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => n_1_BID_FIFO,
      I2 => n_0_BID_FIFO,
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => AW2Arb_BVALID_Cnt(0),
      I5 => AW2Arb_BVALID_Cnt(1),
      O => n_0_axi_bvalid_int_i_1
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_bvalid_int_i_1,
      Q => \^o1\,
      R => '0'
    );
axi_wr_burst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
    port map (
      I0 => s_axi_wlast,
      I1 => n_0_axi_wr_burst_i_2,
      I2 => axi_wr_burst,
      O => n_0_axi_wr_burst_i_1
    );
axi_wr_burst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F2D0"
    )
    port map (
      I0 => axi_wdata_full_reg,
      I1 => wr_data_sng_sm_cs(0),
      I2 => s_axi_wvalid,
      I3 => p_1_out,
      I4 => wr_data_sng_sm_cs(1),
      O => n_0_axi_wr_burst_i_2
    );
axi_wr_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_wr_burst_i_1,
      Q => axi_wr_burst,
      R => I1
    );
axi_wready_int_mod_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA20A820AA"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => wr_data_sng_sm_cs(0),
      I2 => p_1_out,
      I3 => s_axi_wvalid,
      I4 => axi_wdata_full_reg,
      I5 => wr_data_sng_sm_cs(1),
      O => n_0_axi_wready_int_mod_i_1
    );
axi_wready_int_mod_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_wready_int_mod_i_1,
      Q => \^s_axi_wready\,
      R => '0'
    );
bid_gets_fifo_load_d1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => AW2Arb_BVALID_Cnt(1),
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(2),
      O => n_0_bid_gets_fifo_load_d1_i_2
    );
bid_gets_fifo_load_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => bid_gets_fifo_load,
      Q => bid_gets_fifo_load_d1,
      R => I1
    );
bram_en_a_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => p_8_in,
      I1 => p_7_in,
      O => bram_en_a
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A6A6A95959555"
    )
    port map (
      I0 => n_0_BID_FIFO,
      I1 => \^o1\,
      I2 => s_axi_bready,
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => AW2Arb_BVALID_Cnt(1),
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \n_0_bvalid_cnt[0]_i_1\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA15157F7F8000"
    )
    port map (
      I0 => n_0_BID_FIFO,
      I1 => \^o1\,
      I2 => s_axi_bready,
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => AW2Arb_BVALID_Cnt(1),
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \n_0_bvalid_cnt[1]_i_1\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA15FF00FF007F00"
    )
    port map (
      I0 => n_0_BID_FIFO,
      I1 => \^o1\,
      I2 => s_axi_bready,
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => AW2Arb_BVALID_Cnt(1),
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \n_0_bvalid_cnt[2]_i_1\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_bvalid_cnt[0]_i_1\,
      Q => AW2Arb_BVALID_Cnt(0),
      R => I1
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_bvalid_cnt[1]_i_1\,
      Q => AW2Arb_BVALID_Cnt(1),
      R => I1
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_bvalid_cnt[2]_i_1\,
      Q => AW2Arb_BVALID_Cnt(2),
      R => I1
    );
\curr_fixed_burst_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222E0000"
    )
    port map (
      I0 => curr_fixed_burst_reg,
      I1 => aw_active_re,
      I2 => s_axi_awburst(0),
      I3 => s_axi_awburst(1),
      I4 => s_axi_aresetn,
      I5 => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3\,
      O => \n_0_curr_fixed_burst_reg_i_1__0\
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_curr_fixed_burst_reg_i_1__0\,
      Q => curr_fixed_burst_reg,
      R => '0'
    );
\curr_wrap_burst_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E220000"
    )
    port map (
      I0 => curr_wrap_burst_reg,
      I1 => aw_active_re,
      I2 => s_axi_awburst(0),
      I3 => s_axi_awburst(1),
      I4 => s_axi_aresetn,
      I5 => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3\,
      O => \n_0_curr_wrap_burst_reg_i_1__0\
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_curr_wrap_burst_reg_i_1__0\,
      Q => curr_wrap_burst_reg,
      R => '0'
    );
last_arb_won_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007F00"
    )
    port map (
      I0 => AW2Arb_BVALID_Cnt(1),
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => s_axi_awvalid,
      I4 => arb_sm_cs(0),
      I5 => arb_sm_cs(1),
      O => O3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller_full_axi is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O7 : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of controller_full_axi : entity is "full_axi";
end controller_full_axi;

architecture STRUCTURE of controller_full_axi is
  signal \^o1\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \^o6\ : STD_LOGIC;
  signal RdChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 9 downto 7 );
  signal WrChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal ar_active_d1 : STD_LOGIC;
  signal ar_active_re : STD_LOGIC;
  signal arb_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aw_active_d1 : STD_LOGIC;
  signal aw_active_re : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal bram_we_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal curr_narrow_burst : STD_LOGIC;
  signal curr_narrow_burst_en : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[12]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_2\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_2\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1\ : STD_LOGIC;
  signal \n_10_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal n_257_I_RD_CHNL : STD_LOGIC;
  signal n_260_I_WR_CHNL : STD_LOGIC;
  signal n_261_I_WR_CHNL : STD_LOGIC;
  signal n_262_I_WR_CHNL : STD_LOGIC;
  signal n_263_I_WR_CHNL : STD_LOGIC;
  signal n_264_I_RD_CHNL : STD_LOGIC;
  signal n_265_I_RD_CHNL : STD_LOGIC;
  signal n_266_I_RD_CHNL : STD_LOGIC;
  signal n_267_I_RD_CHNL : STD_LOGIC;
  signal n_268_I_RD_CHNL : STD_LOGIC;
  signal n_269_I_RD_CHNL : STD_LOGIC;
  signal n_270_I_RD_CHNL : STD_LOGIC;
  signal n_271_I_RD_CHNL : STD_LOGIC;
  signal n_272_I_RD_CHNL : STD_LOGIC;
  signal n_273_I_RD_CHNL : STD_LOGIC;
  signal n_273_I_WR_CHNL : STD_LOGIC;
  signal n_274_I_WR_CHNL : STD_LOGIC;
  signal n_275_I_WR_CHNL : STD_LOGIC;
  signal n_276_I_WR_CHNL : STD_LOGIC;
  signal n_277_I_RD_CHNL : STD_LOGIC;
  signal n_277_I_WR_CHNL : STD_LOGIC;
  signal n_278_I_RD_CHNL : STD_LOGIC;
  signal n_279_I_RD_CHNL : STD_LOGIC;
  signal \n_43_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal \n_44_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal \n_8_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[6]_i_1\ : label is "soft_lutpair197";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[8]_i_2\ : label is "soft_lutpair197";
begin
  O1 <= \^o1\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  O5 <= \^o5\;
  O6 <= \^o6\;
  bram_addr_a(6 downto 0) <= \^bram_addr_a\(6 downto 0);
\ADDR_SNG_PORT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => n_276_I_WR_CHNL,
      I1 => \^bram_addr_a\(1),
      I2 => n_270_I_RD_CHNL,
      I3 => n_263_I_WR_CHNL,
      I4 => n_274_I_WR_CHNL,
      I5 => \^bram_addr_a\(2),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2\,
      I1 => \^bram_addr_a\(2),
      I2 => n_271_I_RD_CHNL,
      I3 => n_263_I_WR_CHNL,
      I4 => n_274_I_WR_CHNL,
      I5 => \^bram_addr_a\(3),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \^bram_addr_a\(1),
      I1 => \^o4\,
      I2 => \^o3\,
      I3 => \^o5\,
      I4 => \^bram_addr_a\(0),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2\
    );
\ADDR_SNG_PORT.bram_addr_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
    port map (
      I0 => RdChnl_BRAM_Addr_Ld(7),
      I1 => p_0_out,
      I2 => WrChnl_BRAM_Addr_Ld(7),
      I3 => n_274_I_WR_CHNL,
      I4 => \^bram_addr_a\(4),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[12]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
    port map (
      I0 => RdChnl_BRAM_Addr_Ld(8),
      I1 => p_0_out,
      I2 => WrChnl_BRAM_Addr_Ld(8),
      I3 => n_274_I_WR_CHNL,
      I4 => \^bram_addr_a\(5),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
    port map (
      I0 => RdChnl_BRAM_Addr_Ld(9),
      I1 => p_0_out,
      I2 => WrChnl_BRAM_Addr_Ld(9),
      I3 => n_274_I_WR_CHNL,
      I4 => \^bram_addr_a\(6),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_2\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3ACA"
    )
    port map (
      I0 => n_264_I_RD_CHNL,
      I1 => n_263_I_WR_CHNL,
      I2 => n_274_I_WR_CHNL,
      I3 => \^o3\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FCCA0CC"
    )
    port map (
      I0 => \^o3\,
      I1 => n_266_I_RD_CHNL,
      I2 => n_263_I_WR_CHNL,
      I3 => n_274_I_WR_CHNL,
      I4 => \^o5\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \^o3\,
      I1 => \^o5\,
      I2 => n_267_I_RD_CHNL,
      I3 => n_263_I_WR_CHNL,
      I4 => n_274_I_WR_CHNL,
      I5 => \^o4\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_2\,
      I1 => \^o4\,
      I2 => n_268_I_RD_CHNL,
      I3 => n_263_I_WR_CHNL,
      I4 => n_274_I_WR_CHNL,
      I5 => \^bram_addr_a\(0),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o3\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_2\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FCCA0CC"
    )
    port map (
      I0 => n_276_I_WR_CHNL,
      I1 => n_269_I_RD_CHNL,
      I2 => n_263_I_WR_CHNL,
      I3 => n_274_I_WR_CHNL,
      I4 => \^bram_addr_a\(1),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1\,
      Q => \^bram_addr_a\(2),
      R => n_260_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_1\,
      Q => \^bram_addr_a\(3),
      R => n_260_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[12]_i_1\,
      Q => \^bram_addr_a\(4),
      R => n_260_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_1\,
      Q => \^bram_addr_a\(5),
      R => n_260_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_2\,
      Q => \^bram_addr_a\(6),
      R => n_260_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1\,
      Q => \^o3\,
      R => n_260_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1\,
      Q => \^o5\,
      R => n_260_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1\,
      Q => \^o4\,
      R => n_260_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1\,
      Q => \^bram_addr_a\(0),
      R => n_260_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1\,
      Q => \^bram_addr_a\(1),
      R => n_260_I_WR_CHNL
    );
\GEN_ARB.I_SNG_PORT\: entity work.controller_sng_port_arb
    port map (
      I1 => \^o6\,
      I10 => n_261_I_WR_CHNL,
      I2 => n_275_I_WR_CHNL,
      I3 => n_262_I_WR_CHNL,
      I4 => n_272_I_RD_CHNL,
      I5 => n_273_I_RD_CHNL,
      I6 => n_277_I_WR_CHNL,
      I7 => n_278_I_RD_CHNL,
      I8 => \^o1\,
      I9 => n_279_I_RD_CHNL,
      O1 => \n_8_GEN_ARB.I_SNG_PORT\,
      O2 => \n_10_GEN_ARB.I_SNG_PORT\,
      O3 => \n_43_GEN_ARB.I_SNG_PORT\,
      O4 => \n_44_GEN_ARB.I_SNG_PORT\,
      Q(31 downto 0) => bram_we_int(31 downto 0),
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      bram_we_a(31 downto 0) => bram_we_a(31 downto 0),
      curr_narrow_burst => curr_narrow_burst,
      curr_narrow_burst_en => curr_narrow_burst_en,
      p_0_out => p_0_out,
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(0) => s_axi_arsize(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(1 downto 0) => s_axi_awlen(3 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rready => s_axi_rready
    );
I_RD_CHNL: entity work.controller_rd_chnl
    port map (
      D(5 downto 0) => WrChnl_BRAM_Addr_Ld(6 downto 1),
      I1 => \n_44_GEN_ARB.I_SNG_PORT\,
      I2 => \^o3\,
      I3 => \^o4\,
      I4 => \^o5\,
      I5 => \n_8_GEN_ARB.I_SNG_PORT\,
      I6 => n_273_I_WR_CHNL,
      I7 => \n_10_GEN_ARB.I_SNG_PORT\,
      I8 => \^bram_addr_a\(0),
      I9 => \n_43_GEN_ARB.I_SNG_PORT\,
      O1 => \^o6\,
      O10 => n_269_I_RD_CHNL,
      O11 => n_270_I_RD_CHNL,
      O12 => n_271_I_RD_CHNL,
      O13 => n_272_I_RD_CHNL,
      O14 => n_273_I_RD_CHNL,
      O15(2 downto 0) => RdChnl_BRAM_Addr_Ld(9 downto 7),
      O16 => n_277_I_RD_CHNL,
      O17 => n_278_I_RD_CHNL,
      O18 => n_279_I_RD_CHNL,
      O2 => n_257_I_RD_CHNL,
      O3 => \^o1\,
      O4 => O2,
      O5 => n_264_I_RD_CHNL,
      O6 => n_265_I_RD_CHNL,
      O7 => n_266_I_RD_CHNL,
      O8 => n_267_I_RD_CHNL,
      O9 => n_268_I_RD_CHNL,
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      bram_rddata_a(255 downto 0) => bram_rddata_a(255 downto 0),
      curr_narrow_burst => curr_narrow_burst,
      p_0_out => p_0_out,
      p_7_in => p_7_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(14 downto 0) => s_axi_araddr(14 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_awaddr(0) => s_axi_awaddr(5),
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready
    );
I_WR_CHNL: entity work.controller_wr_chnl
    port map (
      D(8 downto 0) => WrChnl_BRAM_Addr_Ld(9 downto 1),
      I1 => \^o6\,
      I2 => \^o3\,
      I3 => \^o4\,
      I4 => \^o5\,
      I5 => n_257_I_RD_CHNL,
      I6 => n_277_I_RD_CHNL,
      I7 => n_265_I_RD_CHNL,
      I8 => \^bram_addr_a\(0),
      O1 => O7,
      O10 => n_277_I_WR_CHNL,
      O2 => n_260_I_WR_CHNL,
      O3 => n_261_I_WR_CHNL,
      O4 => n_262_I_WR_CHNL,
      O5 => n_263_I_WR_CHNL,
      O6 => n_273_I_WR_CHNL,
      O7 => n_274_I_WR_CHNL,
      O8 => n_275_I_WR_CHNL,
      O9 => n_276_I_WR_CHNL,
      Q(31 downto 0) => bram_we_int(31 downto 0),
      ar_active_re => ar_active_re,
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      bram_en_a => bram_en_a,
      bram_wrdata_a(255 downto 0) => bram_wrdata_a(255 downto 0),
      curr_narrow_burst_en => curr_narrow_burst_en,
      p_0_out => p_0_out,
      p_1_out => p_1_out,
      p_7_in => p_7_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(13 downto 5) => s_axi_awaddr(14 downto 6),
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(4 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller_axi_bram_ctrl_top is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O7 : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of controller_axi_bram_ctrl_top : entity is "axi_bram_ctrl_top";
end controller_axi_bram_ctrl_top;

architecture STRUCTURE of controller_axi_bram_ctrl_top is
begin
\GEN_AXI4.I_FULL_AXI\: entity work.controller_full_axi
    port map (
      O1 => O1,
      O2 => O2,
      O3 => O3,
      O4 => O4,
      O5 => O5,
      O6 => O6,
      O7 => O7,
      bram_addr_a(6 downto 0) => bram_addr_a(6 downto 0),
      bram_en_a => bram_en_a,
      bram_rddata_a(255 downto 0) => bram_rddata_a(255 downto 0),
      bram_we_a(31 downto 0) => bram_we_a(31 downto 0),
      bram_wrdata_a(255 downto 0) => bram_wrdata_a(255 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(14 downto 0) => s_axi_araddr(14 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(14 downto 0) => s_axi_awaddr(14 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \controller_axi_bram_ctrl__parameterized0\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \controller_axi_bram_ctrl__parameterized0\ : entity is "axi_bram_ctrl";
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of \controller_axi_bram_ctrl__parameterized0\ : entity is "EXTERNAL";
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of \controller_axi_bram_ctrl__parameterized0\ : entity is 1024;
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of \controller_axi_bram_ctrl__parameterized0\ : entity is 10;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of \controller_axi_bram_ctrl__parameterized0\ : entity is 15;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of \controller_axi_bram_ctrl__parameterized0\ : entity is 256;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of \controller_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of \controller_axi_bram_ctrl__parameterized0\ : entity is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of \controller_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of \controller_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \controller_axi_bram_ctrl__parameterized0\ : entity is "virtex7";
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of \controller_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of \controller_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_ECC : integer;
  attribute C_ECC of \controller_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of \controller_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of \controller_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of \controller_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \controller_axi_bram_ctrl__parameterized0\ : entity is "yes";
end \controller_axi_bram_ctrl__parameterized0\;

architecture STRUCTURE of \controller_axi_bram_ctrl__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 14 downto 5 );
  signal \^s_axi_aclk\ : STD_LOGIC;
begin
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr_a(14 downto 5) <= \^bram_addr_a\(14 downto 5);
  bram_addr_a(4) <= \<const0>\;
  bram_addr_a(3) <= \<const0>\;
  bram_addr_a(2) <= \<const0>\;
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(14) <= \<const0>\;
  bram_addr_b(13) <= \<const0>\;
  bram_addr_b(12) <= \<const0>\;
  bram_addr_b(11) <= \<const0>\;
  bram_addr_b(10) <= \<const0>\;
  bram_addr_b(9) <= \<const0>\;
  bram_addr_b(8) <= \<const0>\;
  bram_addr_b(7) <= \<const0>\;
  bram_addr_b(6) <= \<const0>\;
  bram_addr_b(5) <= \<const0>\;
  bram_addr_b(4) <= \<const0>\;
  bram_addr_b(3) <= \<const0>\;
  bram_addr_b(2) <= \<const0>\;
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  bram_clk_b <= \<const0>\;
  bram_en_b <= \<const0>\;
  bram_rst_b <= \<const0>\;
  bram_we_b(31) <= \<const0>\;
  bram_we_b(30) <= \<const0>\;
  bram_we_b(29) <= \<const0>\;
  bram_we_b(28) <= \<const0>\;
  bram_we_b(27) <= \<const0>\;
  bram_we_b(26) <= \<const0>\;
  bram_we_b(25) <= \<const0>\;
  bram_we_b(24) <= \<const0>\;
  bram_we_b(23) <= \<const0>\;
  bram_we_b(22) <= \<const0>\;
  bram_we_b(21) <= \<const0>\;
  bram_we_b(20) <= \<const0>\;
  bram_we_b(19) <= \<const0>\;
  bram_we_b(18) <= \<const0>\;
  bram_we_b(17) <= \<const0>\;
  bram_we_b(16) <= \<const0>\;
  bram_we_b(15) <= \<const0>\;
  bram_we_b(14) <= \<const0>\;
  bram_we_b(13) <= \<const0>\;
  bram_we_b(12) <= \<const0>\;
  bram_we_b(11) <= \<const0>\;
  bram_we_b(10) <= \<const0>\;
  bram_we_b(9) <= \<const0>\;
  bram_we_b(8) <= \<const0>\;
  bram_we_b(7) <= \<const0>\;
  bram_we_b(6) <= \<const0>\;
  bram_we_b(5) <= \<const0>\;
  bram_we_b(4) <= \<const0>\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_b(255) <= \<const0>\;
  bram_wrdata_b(254) <= \<const0>\;
  bram_wrdata_b(253) <= \<const0>\;
  bram_wrdata_b(252) <= \<const0>\;
  bram_wrdata_b(251) <= \<const0>\;
  bram_wrdata_b(250) <= \<const0>\;
  bram_wrdata_b(249) <= \<const0>\;
  bram_wrdata_b(248) <= \<const0>\;
  bram_wrdata_b(247) <= \<const0>\;
  bram_wrdata_b(246) <= \<const0>\;
  bram_wrdata_b(245) <= \<const0>\;
  bram_wrdata_b(244) <= \<const0>\;
  bram_wrdata_b(243) <= \<const0>\;
  bram_wrdata_b(242) <= \<const0>\;
  bram_wrdata_b(241) <= \<const0>\;
  bram_wrdata_b(240) <= \<const0>\;
  bram_wrdata_b(239) <= \<const0>\;
  bram_wrdata_b(238) <= \<const0>\;
  bram_wrdata_b(237) <= \<const0>\;
  bram_wrdata_b(236) <= \<const0>\;
  bram_wrdata_b(235) <= \<const0>\;
  bram_wrdata_b(234) <= \<const0>\;
  bram_wrdata_b(233) <= \<const0>\;
  bram_wrdata_b(232) <= \<const0>\;
  bram_wrdata_b(231) <= \<const0>\;
  bram_wrdata_b(230) <= \<const0>\;
  bram_wrdata_b(229) <= \<const0>\;
  bram_wrdata_b(228) <= \<const0>\;
  bram_wrdata_b(227) <= \<const0>\;
  bram_wrdata_b(226) <= \<const0>\;
  bram_wrdata_b(225) <= \<const0>\;
  bram_wrdata_b(224) <= \<const0>\;
  bram_wrdata_b(223) <= \<const0>\;
  bram_wrdata_b(222) <= \<const0>\;
  bram_wrdata_b(221) <= \<const0>\;
  bram_wrdata_b(220) <= \<const0>\;
  bram_wrdata_b(219) <= \<const0>\;
  bram_wrdata_b(218) <= \<const0>\;
  bram_wrdata_b(217) <= \<const0>\;
  bram_wrdata_b(216) <= \<const0>\;
  bram_wrdata_b(215) <= \<const0>\;
  bram_wrdata_b(214) <= \<const0>\;
  bram_wrdata_b(213) <= \<const0>\;
  bram_wrdata_b(212) <= \<const0>\;
  bram_wrdata_b(211) <= \<const0>\;
  bram_wrdata_b(210) <= \<const0>\;
  bram_wrdata_b(209) <= \<const0>\;
  bram_wrdata_b(208) <= \<const0>\;
  bram_wrdata_b(207) <= \<const0>\;
  bram_wrdata_b(206) <= \<const0>\;
  bram_wrdata_b(205) <= \<const0>\;
  bram_wrdata_b(204) <= \<const0>\;
  bram_wrdata_b(203) <= \<const0>\;
  bram_wrdata_b(202) <= \<const0>\;
  bram_wrdata_b(201) <= \<const0>\;
  bram_wrdata_b(200) <= \<const0>\;
  bram_wrdata_b(199) <= \<const0>\;
  bram_wrdata_b(198) <= \<const0>\;
  bram_wrdata_b(197) <= \<const0>\;
  bram_wrdata_b(196) <= \<const0>\;
  bram_wrdata_b(195) <= \<const0>\;
  bram_wrdata_b(194) <= \<const0>\;
  bram_wrdata_b(193) <= \<const0>\;
  bram_wrdata_b(192) <= \<const0>\;
  bram_wrdata_b(191) <= \<const0>\;
  bram_wrdata_b(190) <= \<const0>\;
  bram_wrdata_b(189) <= \<const0>\;
  bram_wrdata_b(188) <= \<const0>\;
  bram_wrdata_b(187) <= \<const0>\;
  bram_wrdata_b(186) <= \<const0>\;
  bram_wrdata_b(185) <= \<const0>\;
  bram_wrdata_b(184) <= \<const0>\;
  bram_wrdata_b(183) <= \<const0>\;
  bram_wrdata_b(182) <= \<const0>\;
  bram_wrdata_b(181) <= \<const0>\;
  bram_wrdata_b(180) <= \<const0>\;
  bram_wrdata_b(179) <= \<const0>\;
  bram_wrdata_b(178) <= \<const0>\;
  bram_wrdata_b(177) <= \<const0>\;
  bram_wrdata_b(176) <= \<const0>\;
  bram_wrdata_b(175) <= \<const0>\;
  bram_wrdata_b(174) <= \<const0>\;
  bram_wrdata_b(173) <= \<const0>\;
  bram_wrdata_b(172) <= \<const0>\;
  bram_wrdata_b(171) <= \<const0>\;
  bram_wrdata_b(170) <= \<const0>\;
  bram_wrdata_b(169) <= \<const0>\;
  bram_wrdata_b(168) <= \<const0>\;
  bram_wrdata_b(167) <= \<const0>\;
  bram_wrdata_b(166) <= \<const0>\;
  bram_wrdata_b(165) <= \<const0>\;
  bram_wrdata_b(164) <= \<const0>\;
  bram_wrdata_b(163) <= \<const0>\;
  bram_wrdata_b(162) <= \<const0>\;
  bram_wrdata_b(161) <= \<const0>\;
  bram_wrdata_b(160) <= \<const0>\;
  bram_wrdata_b(159) <= \<const0>\;
  bram_wrdata_b(158) <= \<const0>\;
  bram_wrdata_b(157) <= \<const0>\;
  bram_wrdata_b(156) <= \<const0>\;
  bram_wrdata_b(155) <= \<const0>\;
  bram_wrdata_b(154) <= \<const0>\;
  bram_wrdata_b(153) <= \<const0>\;
  bram_wrdata_b(152) <= \<const0>\;
  bram_wrdata_b(151) <= \<const0>\;
  bram_wrdata_b(150) <= \<const0>\;
  bram_wrdata_b(149) <= \<const0>\;
  bram_wrdata_b(148) <= \<const0>\;
  bram_wrdata_b(147) <= \<const0>\;
  bram_wrdata_b(146) <= \<const0>\;
  bram_wrdata_b(145) <= \<const0>\;
  bram_wrdata_b(144) <= \<const0>\;
  bram_wrdata_b(143) <= \<const0>\;
  bram_wrdata_b(142) <= \<const0>\;
  bram_wrdata_b(141) <= \<const0>\;
  bram_wrdata_b(140) <= \<const0>\;
  bram_wrdata_b(139) <= \<const0>\;
  bram_wrdata_b(138) <= \<const0>\;
  bram_wrdata_b(137) <= \<const0>\;
  bram_wrdata_b(136) <= \<const0>\;
  bram_wrdata_b(135) <= \<const0>\;
  bram_wrdata_b(134) <= \<const0>\;
  bram_wrdata_b(133) <= \<const0>\;
  bram_wrdata_b(132) <= \<const0>\;
  bram_wrdata_b(131) <= \<const0>\;
  bram_wrdata_b(130) <= \<const0>\;
  bram_wrdata_b(129) <= \<const0>\;
  bram_wrdata_b(128) <= \<const0>\;
  bram_wrdata_b(127) <= \<const0>\;
  bram_wrdata_b(126) <= \<const0>\;
  bram_wrdata_b(125) <= \<const0>\;
  bram_wrdata_b(124) <= \<const0>\;
  bram_wrdata_b(123) <= \<const0>\;
  bram_wrdata_b(122) <= \<const0>\;
  bram_wrdata_b(121) <= \<const0>\;
  bram_wrdata_b(120) <= \<const0>\;
  bram_wrdata_b(119) <= \<const0>\;
  bram_wrdata_b(118) <= \<const0>\;
  bram_wrdata_b(117) <= \<const0>\;
  bram_wrdata_b(116) <= \<const0>\;
  bram_wrdata_b(115) <= \<const0>\;
  bram_wrdata_b(114) <= \<const0>\;
  bram_wrdata_b(113) <= \<const0>\;
  bram_wrdata_b(112) <= \<const0>\;
  bram_wrdata_b(111) <= \<const0>\;
  bram_wrdata_b(110) <= \<const0>\;
  bram_wrdata_b(109) <= \<const0>\;
  bram_wrdata_b(108) <= \<const0>\;
  bram_wrdata_b(107) <= \<const0>\;
  bram_wrdata_b(106) <= \<const0>\;
  bram_wrdata_b(105) <= \<const0>\;
  bram_wrdata_b(104) <= \<const0>\;
  bram_wrdata_b(103) <= \<const0>\;
  bram_wrdata_b(102) <= \<const0>\;
  bram_wrdata_b(101) <= \<const0>\;
  bram_wrdata_b(100) <= \<const0>\;
  bram_wrdata_b(99) <= \<const0>\;
  bram_wrdata_b(98) <= \<const0>\;
  bram_wrdata_b(97) <= \<const0>\;
  bram_wrdata_b(96) <= \<const0>\;
  bram_wrdata_b(95) <= \<const0>\;
  bram_wrdata_b(94) <= \<const0>\;
  bram_wrdata_b(93) <= \<const0>\;
  bram_wrdata_b(92) <= \<const0>\;
  bram_wrdata_b(91) <= \<const0>\;
  bram_wrdata_b(90) <= \<const0>\;
  bram_wrdata_b(89) <= \<const0>\;
  bram_wrdata_b(88) <= \<const0>\;
  bram_wrdata_b(87) <= \<const0>\;
  bram_wrdata_b(86) <= \<const0>\;
  bram_wrdata_b(85) <= \<const0>\;
  bram_wrdata_b(84) <= \<const0>\;
  bram_wrdata_b(83) <= \<const0>\;
  bram_wrdata_b(82) <= \<const0>\;
  bram_wrdata_b(81) <= \<const0>\;
  bram_wrdata_b(80) <= \<const0>\;
  bram_wrdata_b(79) <= \<const0>\;
  bram_wrdata_b(78) <= \<const0>\;
  bram_wrdata_b(77) <= \<const0>\;
  bram_wrdata_b(76) <= \<const0>\;
  bram_wrdata_b(75) <= \<const0>\;
  bram_wrdata_b(74) <= \<const0>\;
  bram_wrdata_b(73) <= \<const0>\;
  bram_wrdata_b(72) <= \<const0>\;
  bram_wrdata_b(71) <= \<const0>\;
  bram_wrdata_b(70) <= \<const0>\;
  bram_wrdata_b(69) <= \<const0>\;
  bram_wrdata_b(68) <= \<const0>\;
  bram_wrdata_b(67) <= \<const0>\;
  bram_wrdata_b(66) <= \<const0>\;
  bram_wrdata_b(65) <= \<const0>\;
  bram_wrdata_b(64) <= \<const0>\;
  bram_wrdata_b(63) <= \<const0>\;
  bram_wrdata_b(62) <= \<const0>\;
  bram_wrdata_b(61) <= \<const0>\;
  bram_wrdata_b(60) <= \<const0>\;
  bram_wrdata_b(59) <= \<const0>\;
  bram_wrdata_b(58) <= \<const0>\;
  bram_wrdata_b(57) <= \<const0>\;
  bram_wrdata_b(56) <= \<const0>\;
  bram_wrdata_b(55) <= \<const0>\;
  bram_wrdata_b(54) <= \<const0>\;
  bram_wrdata_b(53) <= \<const0>\;
  bram_wrdata_b(52) <= \<const0>\;
  bram_wrdata_b(51) <= \<const0>\;
  bram_wrdata_b(50) <= \<const0>\;
  bram_wrdata_b(49) <= \<const0>\;
  bram_wrdata_b(48) <= \<const0>\;
  bram_wrdata_b(47) <= \<const0>\;
  bram_wrdata_b(46) <= \<const0>\;
  bram_wrdata_b(45) <= \<const0>\;
  bram_wrdata_b(44) <= \<const0>\;
  bram_wrdata_b(43) <= \<const0>\;
  bram_wrdata_b(42) <= \<const0>\;
  bram_wrdata_b(41) <= \<const0>\;
  bram_wrdata_b(40) <= \<const0>\;
  bram_wrdata_b(39) <= \<const0>\;
  bram_wrdata_b(38) <= \<const0>\;
  bram_wrdata_b(37) <= \<const0>\;
  bram_wrdata_b(36) <= \<const0>\;
  bram_wrdata_b(35) <= \<const0>\;
  bram_wrdata_b(34) <= \<const0>\;
  bram_wrdata_b(33) <= \<const0>\;
  bram_wrdata_b(32) <= \<const0>\;
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  ecc_interrupt <= \<const0>\;
  ecc_ue <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\gext_inst.abcv4_0_ext_inst\: entity work.controller_axi_bram_ctrl_top
    port map (
      O1 => s_axi_rlast,
      O2 => s_axi_rvalid,
      O3 => \^bram_addr_a\(5),
      O4 => \^bram_addr_a\(7),
      O5 => \^bram_addr_a\(6),
      O6 => bram_rst_a,
      O7 => s_axi_bvalid,
      bram_addr_a(6 downto 0) => \^bram_addr_a\(14 downto 8),
      bram_en_a => bram_en_a,
      bram_rddata_a(255 downto 0) => bram_rddata_a(255 downto 0),
      bram_we_a(31 downto 0) => bram_we_a(31 downto 0),
      bram_wrdata_a(255 downto 0) => bram_wrdata_a(255 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(14 downto 0) => s_axi_araddr(14 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(14 downto 0) => s_axi_awaddr(14 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of controller : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of controller : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of controller : entity is "axi_bram_ctrl,Vivado 2014.3.1";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of controller : entity is "controller,axi_bram_ctrl,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of controller : entity is "controller,axi_bram_ctrl,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_bram_ctrl,x_ipVersion=4.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_BRAM_INST_MODE=EXTERNAL,C_MEMORY_DEPTH=1024,C_BRAM_ADDR_WIDTH=10,C_S_AXI_ADDR_WIDTH=15,C_S_AXI_DATA_WIDTH=256,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4,C_S_AXI_SUPPORTS_NARROW_BURST=1,C_SINGLE_PORT_BRAM=1,C_FAMILY=virtex7,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32,C_ECC=0,C_ECC_TYPE=0,C_FAULT_INJECT=0,C_ECC_ONOFF_RESET_VALUE=0}";
end controller;

architecture STRUCTURE of controller is
  signal NLW_U0_bram_clk_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_en_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_rst_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_ue_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_addr_b_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_U0_bram_we_b_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_bram_wrdata_b_UNCONNECTED : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 10;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex7";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 1024;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 15;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 256;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 1;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is std.standard.true;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.\controller_axi_bram_ctrl__parameterized0\
    port map (
      bram_addr_a(14 downto 0) => bram_addr_a(14 downto 0),
      bram_addr_b(14 downto 0) => NLW_U0_bram_addr_b_UNCONNECTED(14 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => NLW_U0_bram_clk_b_UNCONNECTED,
      bram_en_a => bram_en_a,
      bram_en_b => NLW_U0_bram_en_b_UNCONNECTED,
      bram_rddata_a(255 downto 0) => bram_rddata_a(255 downto 0),
      bram_rddata_b(255) => '0',
      bram_rddata_b(254) => '0',
      bram_rddata_b(253) => '0',
      bram_rddata_b(252) => '0',
      bram_rddata_b(251) => '0',
      bram_rddata_b(250) => '0',
      bram_rddata_b(249) => '0',
      bram_rddata_b(248) => '0',
      bram_rddata_b(247) => '0',
      bram_rddata_b(246) => '0',
      bram_rddata_b(245) => '0',
      bram_rddata_b(244) => '0',
      bram_rddata_b(243) => '0',
      bram_rddata_b(242) => '0',
      bram_rddata_b(241) => '0',
      bram_rddata_b(240) => '0',
      bram_rddata_b(239) => '0',
      bram_rddata_b(238) => '0',
      bram_rddata_b(237) => '0',
      bram_rddata_b(236) => '0',
      bram_rddata_b(235) => '0',
      bram_rddata_b(234) => '0',
      bram_rddata_b(233) => '0',
      bram_rddata_b(232) => '0',
      bram_rddata_b(231) => '0',
      bram_rddata_b(230) => '0',
      bram_rddata_b(229) => '0',
      bram_rddata_b(228) => '0',
      bram_rddata_b(227) => '0',
      bram_rddata_b(226) => '0',
      bram_rddata_b(225) => '0',
      bram_rddata_b(224) => '0',
      bram_rddata_b(223) => '0',
      bram_rddata_b(222) => '0',
      bram_rddata_b(221) => '0',
      bram_rddata_b(220) => '0',
      bram_rddata_b(219) => '0',
      bram_rddata_b(218) => '0',
      bram_rddata_b(217) => '0',
      bram_rddata_b(216) => '0',
      bram_rddata_b(215) => '0',
      bram_rddata_b(214) => '0',
      bram_rddata_b(213) => '0',
      bram_rddata_b(212) => '0',
      bram_rddata_b(211) => '0',
      bram_rddata_b(210) => '0',
      bram_rddata_b(209) => '0',
      bram_rddata_b(208) => '0',
      bram_rddata_b(207) => '0',
      bram_rddata_b(206) => '0',
      bram_rddata_b(205) => '0',
      bram_rddata_b(204) => '0',
      bram_rddata_b(203) => '0',
      bram_rddata_b(202) => '0',
      bram_rddata_b(201) => '0',
      bram_rddata_b(200) => '0',
      bram_rddata_b(199) => '0',
      bram_rddata_b(198) => '0',
      bram_rddata_b(197) => '0',
      bram_rddata_b(196) => '0',
      bram_rddata_b(195) => '0',
      bram_rddata_b(194) => '0',
      bram_rddata_b(193) => '0',
      bram_rddata_b(192) => '0',
      bram_rddata_b(191) => '0',
      bram_rddata_b(190) => '0',
      bram_rddata_b(189) => '0',
      bram_rddata_b(188) => '0',
      bram_rddata_b(187) => '0',
      bram_rddata_b(186) => '0',
      bram_rddata_b(185) => '0',
      bram_rddata_b(184) => '0',
      bram_rddata_b(183) => '0',
      bram_rddata_b(182) => '0',
      bram_rddata_b(181) => '0',
      bram_rddata_b(180) => '0',
      bram_rddata_b(179) => '0',
      bram_rddata_b(178) => '0',
      bram_rddata_b(177) => '0',
      bram_rddata_b(176) => '0',
      bram_rddata_b(175) => '0',
      bram_rddata_b(174) => '0',
      bram_rddata_b(173) => '0',
      bram_rddata_b(172) => '0',
      bram_rddata_b(171) => '0',
      bram_rddata_b(170) => '0',
      bram_rddata_b(169) => '0',
      bram_rddata_b(168) => '0',
      bram_rddata_b(167) => '0',
      bram_rddata_b(166) => '0',
      bram_rddata_b(165) => '0',
      bram_rddata_b(164) => '0',
      bram_rddata_b(163) => '0',
      bram_rddata_b(162) => '0',
      bram_rddata_b(161) => '0',
      bram_rddata_b(160) => '0',
      bram_rddata_b(159) => '0',
      bram_rddata_b(158) => '0',
      bram_rddata_b(157) => '0',
      bram_rddata_b(156) => '0',
      bram_rddata_b(155) => '0',
      bram_rddata_b(154) => '0',
      bram_rddata_b(153) => '0',
      bram_rddata_b(152) => '0',
      bram_rddata_b(151) => '0',
      bram_rddata_b(150) => '0',
      bram_rddata_b(149) => '0',
      bram_rddata_b(148) => '0',
      bram_rddata_b(147) => '0',
      bram_rddata_b(146) => '0',
      bram_rddata_b(145) => '0',
      bram_rddata_b(144) => '0',
      bram_rddata_b(143) => '0',
      bram_rddata_b(142) => '0',
      bram_rddata_b(141) => '0',
      bram_rddata_b(140) => '0',
      bram_rddata_b(139) => '0',
      bram_rddata_b(138) => '0',
      bram_rddata_b(137) => '0',
      bram_rddata_b(136) => '0',
      bram_rddata_b(135) => '0',
      bram_rddata_b(134) => '0',
      bram_rddata_b(133) => '0',
      bram_rddata_b(132) => '0',
      bram_rddata_b(131) => '0',
      bram_rddata_b(130) => '0',
      bram_rddata_b(129) => '0',
      bram_rddata_b(128) => '0',
      bram_rddata_b(127) => '0',
      bram_rddata_b(126) => '0',
      bram_rddata_b(125) => '0',
      bram_rddata_b(124) => '0',
      bram_rddata_b(123) => '0',
      bram_rddata_b(122) => '0',
      bram_rddata_b(121) => '0',
      bram_rddata_b(120) => '0',
      bram_rddata_b(119) => '0',
      bram_rddata_b(118) => '0',
      bram_rddata_b(117) => '0',
      bram_rddata_b(116) => '0',
      bram_rddata_b(115) => '0',
      bram_rddata_b(114) => '0',
      bram_rddata_b(113) => '0',
      bram_rddata_b(112) => '0',
      bram_rddata_b(111) => '0',
      bram_rddata_b(110) => '0',
      bram_rddata_b(109) => '0',
      bram_rddata_b(108) => '0',
      bram_rddata_b(107) => '0',
      bram_rddata_b(106) => '0',
      bram_rddata_b(105) => '0',
      bram_rddata_b(104) => '0',
      bram_rddata_b(103) => '0',
      bram_rddata_b(102) => '0',
      bram_rddata_b(101) => '0',
      bram_rddata_b(100) => '0',
      bram_rddata_b(99) => '0',
      bram_rddata_b(98) => '0',
      bram_rddata_b(97) => '0',
      bram_rddata_b(96) => '0',
      bram_rddata_b(95) => '0',
      bram_rddata_b(94) => '0',
      bram_rddata_b(93) => '0',
      bram_rddata_b(92) => '0',
      bram_rddata_b(91) => '0',
      bram_rddata_b(90) => '0',
      bram_rddata_b(89) => '0',
      bram_rddata_b(88) => '0',
      bram_rddata_b(87) => '0',
      bram_rddata_b(86) => '0',
      bram_rddata_b(85) => '0',
      bram_rddata_b(84) => '0',
      bram_rddata_b(83) => '0',
      bram_rddata_b(82) => '0',
      bram_rddata_b(81) => '0',
      bram_rddata_b(80) => '0',
      bram_rddata_b(79) => '0',
      bram_rddata_b(78) => '0',
      bram_rddata_b(77) => '0',
      bram_rddata_b(76) => '0',
      bram_rddata_b(75) => '0',
      bram_rddata_b(74) => '0',
      bram_rddata_b(73) => '0',
      bram_rddata_b(72) => '0',
      bram_rddata_b(71) => '0',
      bram_rddata_b(70) => '0',
      bram_rddata_b(69) => '0',
      bram_rddata_b(68) => '0',
      bram_rddata_b(67) => '0',
      bram_rddata_b(66) => '0',
      bram_rddata_b(65) => '0',
      bram_rddata_b(64) => '0',
      bram_rddata_b(63) => '0',
      bram_rddata_b(62) => '0',
      bram_rddata_b(61) => '0',
      bram_rddata_b(60) => '0',
      bram_rddata_b(59) => '0',
      bram_rddata_b(58) => '0',
      bram_rddata_b(57) => '0',
      bram_rddata_b(56) => '0',
      bram_rddata_b(55) => '0',
      bram_rddata_b(54) => '0',
      bram_rddata_b(53) => '0',
      bram_rddata_b(52) => '0',
      bram_rddata_b(51) => '0',
      bram_rddata_b(50) => '0',
      bram_rddata_b(49) => '0',
      bram_rddata_b(48) => '0',
      bram_rddata_b(47) => '0',
      bram_rddata_b(46) => '0',
      bram_rddata_b(45) => '0',
      bram_rddata_b(44) => '0',
      bram_rddata_b(43) => '0',
      bram_rddata_b(42) => '0',
      bram_rddata_b(41) => '0',
      bram_rddata_b(40) => '0',
      bram_rddata_b(39) => '0',
      bram_rddata_b(38) => '0',
      bram_rddata_b(37) => '0',
      bram_rddata_b(36) => '0',
      bram_rddata_b(35) => '0',
      bram_rddata_b(34) => '0',
      bram_rddata_b(33) => '0',
      bram_rddata_b(32) => '0',
      bram_rddata_b(31) => '0',
      bram_rddata_b(30) => '0',
      bram_rddata_b(29) => '0',
      bram_rddata_b(28) => '0',
      bram_rddata_b(27) => '0',
      bram_rddata_b(26) => '0',
      bram_rddata_b(25) => '0',
      bram_rddata_b(24) => '0',
      bram_rddata_b(23) => '0',
      bram_rddata_b(22) => '0',
      bram_rddata_b(21) => '0',
      bram_rddata_b(20) => '0',
      bram_rddata_b(19) => '0',
      bram_rddata_b(18) => '0',
      bram_rddata_b(17) => '0',
      bram_rddata_b(16) => '0',
      bram_rddata_b(15) => '0',
      bram_rddata_b(14) => '0',
      bram_rddata_b(13) => '0',
      bram_rddata_b(12) => '0',
      bram_rddata_b(11) => '0',
      bram_rddata_b(10) => '0',
      bram_rddata_b(9) => '0',
      bram_rddata_b(8) => '0',
      bram_rddata_b(7) => '0',
      bram_rddata_b(6) => '0',
      bram_rddata_b(5) => '0',
      bram_rddata_b(4) => '0',
      bram_rddata_b(3) => '0',
      bram_rddata_b(2) => '0',
      bram_rddata_b(1) => '0',
      bram_rddata_b(0) => '0',
      bram_rst_a => bram_rst_a,
      bram_rst_b => NLW_U0_bram_rst_b_UNCONNECTED,
      bram_we_a(31 downto 0) => bram_we_a(31 downto 0),
      bram_we_b(31 downto 0) => NLW_U0_bram_we_b_UNCONNECTED(31 downto 0),
      bram_wrdata_a(255 downto 0) => bram_wrdata_a(255 downto 0),
      bram_wrdata_b(255 downto 0) => NLW_U0_bram_wrdata_b_UNCONNECTED(255 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(14 downto 0) => s_axi_araddr(14 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => s_axi_arlock,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(14 downto 0) => s_axi_awaddr(14 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => s_axi_awlock,
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31) => '0',
      s_axi_ctrl_araddr(30) => '0',
      s_axi_ctrl_araddr(29) => '0',
      s_axi_ctrl_araddr(28) => '0',
      s_axi_ctrl_araddr(27) => '0',
      s_axi_ctrl_araddr(26) => '0',
      s_axi_ctrl_araddr(25) => '0',
      s_axi_ctrl_araddr(24) => '0',
      s_axi_ctrl_araddr(23) => '0',
      s_axi_ctrl_araddr(22) => '0',
      s_axi_ctrl_araddr(21) => '0',
      s_axi_ctrl_araddr(20) => '0',
      s_axi_ctrl_araddr(19) => '0',
      s_axi_ctrl_araddr(18) => '0',
      s_axi_ctrl_araddr(17) => '0',
      s_axi_ctrl_araddr(16) => '0',
      s_axi_ctrl_araddr(15) => '0',
      s_axi_ctrl_araddr(14) => '0',
      s_axi_ctrl_araddr(13) => '0',
      s_axi_ctrl_araddr(12) => '0',
      s_axi_ctrl_araddr(11) => '0',
      s_axi_ctrl_araddr(10) => '0',
      s_axi_ctrl_araddr(9) => '0',
      s_axi_ctrl_araddr(8) => '0',
      s_axi_ctrl_araddr(7) => '0',
      s_axi_ctrl_araddr(6) => '0',
      s_axi_ctrl_araddr(5) => '0',
      s_axi_ctrl_araddr(4) => '0',
      s_axi_ctrl_araddr(3) => '0',
      s_axi_ctrl_araddr(2) => '0',
      s_axi_ctrl_araddr(1) => '0',
      s_axi_ctrl_araddr(0) => '0',
      s_axi_ctrl_arready => NLW_U0_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(31) => '0',
      s_axi_ctrl_awaddr(30) => '0',
      s_axi_ctrl_awaddr(29) => '0',
      s_axi_ctrl_awaddr(28) => '0',
      s_axi_ctrl_awaddr(27) => '0',
      s_axi_ctrl_awaddr(26) => '0',
      s_axi_ctrl_awaddr(25) => '0',
      s_axi_ctrl_awaddr(24) => '0',
      s_axi_ctrl_awaddr(23) => '0',
      s_axi_ctrl_awaddr(22) => '0',
      s_axi_ctrl_awaddr(21) => '0',
      s_axi_ctrl_awaddr(20) => '0',
      s_axi_ctrl_awaddr(19) => '0',
      s_axi_ctrl_awaddr(18) => '0',
      s_axi_ctrl_awaddr(17) => '0',
      s_axi_ctrl_awaddr(16) => '0',
      s_axi_ctrl_awaddr(15) => '0',
      s_axi_ctrl_awaddr(14) => '0',
      s_axi_ctrl_awaddr(13) => '0',
      s_axi_ctrl_awaddr(12) => '0',
      s_axi_ctrl_awaddr(11) => '0',
      s_axi_ctrl_awaddr(10) => '0',
      s_axi_ctrl_awaddr(9) => '0',
      s_axi_ctrl_awaddr(8) => '0',
      s_axi_ctrl_awaddr(7) => '0',
      s_axi_ctrl_awaddr(6) => '0',
      s_axi_ctrl_awaddr(5) => '0',
      s_axi_ctrl_awaddr(4) => '0',
      s_axi_ctrl_awaddr(3) => '0',
      s_axi_ctrl_awaddr(2) => '0',
      s_axi_ctrl_awaddr(1) => '0',
      s_axi_ctrl_awaddr(0) => '0',
      s_axi_ctrl_awready => NLW_U0_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_U0_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31) => '0',
      s_axi_ctrl_wdata(30) => '0',
      s_axi_ctrl_wdata(29) => '0',
      s_axi_ctrl_wdata(28) => '0',
      s_axi_ctrl_wdata(27) => '0',
      s_axi_ctrl_wdata(26) => '0',
      s_axi_ctrl_wdata(25) => '0',
      s_axi_ctrl_wdata(24) => '0',
      s_axi_ctrl_wdata(23) => '0',
      s_axi_ctrl_wdata(22) => '0',
      s_axi_ctrl_wdata(21) => '0',
      s_axi_ctrl_wdata(20) => '0',
      s_axi_ctrl_wdata(19) => '0',
      s_axi_ctrl_wdata(18) => '0',
      s_axi_ctrl_wdata(17) => '0',
      s_axi_ctrl_wdata(16) => '0',
      s_axi_ctrl_wdata(15) => '0',
      s_axi_ctrl_wdata(14) => '0',
      s_axi_ctrl_wdata(13) => '0',
      s_axi_ctrl_wdata(12) => '0',
      s_axi_ctrl_wdata(11) => '0',
      s_axi_ctrl_wdata(10) => '0',
      s_axi_ctrl_wdata(9) => '0',
      s_axi_ctrl_wdata(8) => '0',
      s_axi_ctrl_wdata(7) => '0',
      s_axi_ctrl_wdata(6) => '0',
      s_axi_ctrl_wdata(5) => '0',
      s_axi_ctrl_wdata(4) => '0',
      s_axi_ctrl_wdata(3) => '0',
      s_axi_ctrl_wdata(2) => '0',
      s_axi_ctrl_wdata(1) => '0',
      s_axi_ctrl_wdata(0) => '0',
      s_axi_ctrl_wready => NLW_U0_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
