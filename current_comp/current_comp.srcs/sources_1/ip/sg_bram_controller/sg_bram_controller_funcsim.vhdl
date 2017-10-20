-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:32:04 MDT 2014
-- Date        : Thu Aug 31 11:45:23 2017
-- Host        : ubuntu running 64-bit Ubuntu 14.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/frankqz/c35fb864-558a-4c20-ae81-7faa0c86f8e4/Xilinx/projects/small_data_compression/small_data_compression.srcs/sources_1/ip/sg_bram_controller/sg_bram_controller_funcsim.vhdl
-- Design      : sg_bram_controller
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sg_bram_controller_SRL_FIFO is
  port (
    bid_gets_fifo_load : out STD_LOGIC;
    O1 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    axi_wdata_full_reg : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    I3 : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    I4 : in STD_LOGIC;
    AW2Arb_BVALID_Cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I5 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    I6 : in STD_LOGIC;
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sg_bram_controller_SRL_FIFO : entity is "SRL_FIFO";
end sg_bram_controller_SRL_FIFO;

architecture STRUCTURE of sg_bram_controller_SRL_FIFO is
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC;
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_2\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_3\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_4\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].MUXCY_L_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].XORCY_I\ : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_1 : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_2 : STD_LOGIC;
  signal \n_0_axi_bid_int[0]_i_2\ : STD_LOGIC;
  signal \n_0_axi_bid_int[0]_i_3\ : STD_LOGIC;
  signal \n_0_axi_bid_int[0]_i_4\ : STD_LOGIC;
  signal n_0_bid_gets_fifo_load_d1_i_2 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_4\ : label is "soft_lutpair52";
  attribute BOX_TYPE of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of Data_Exists_DFF : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_2 : label is "soft_lutpair52";
  attribute BOX_TYPE of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
begin
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
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C40"
    )
    port map (
      I0 => \n_0_axi_bid_int[0]_i_2\,
      I1 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I2 => bid_fifo_not_empty,
      I3 => \n_0_Addr_Counters[0].FDRE_I\,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10003030"
    )
    port map (
      I0 => \n_0_axi_bid_int[0]_i_2\,
      I1 => I2,
      I2 => p_1_out,
      I3 => bid_fifo_not_empty,
      I4 => \n_0_Addr_Counters[0].MUXCY_L_I_i_4\,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\
    );
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
    port map (
      I0 => I2,
      I1 => p_1_out,
      I2 => \n_0_Addr_Counters[0].FDRE_I\,
      I3 => \n_0_Addr_Counters[1].FDRE_I\,
      I4 => \n_0_Addr_Counters[3].FDRE_I\,
      I5 => \n_0_Addr_Counters[2].FDRE_I\,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\
    );
\Addr_Counters[0].MUXCY_L_I_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \n_0_Addr_Counters[2].FDRE_I\,
      I1 => \n_0_Addr_Counters[3].FDRE_I\,
      I2 => \n_0_Addr_Counters[1].FDRE_I\,
      I3 => \n_0_Addr_Counters[0].FDRE_I\,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_4\
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
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C40"
    )
    port map (
      I0 => \n_0_axi_bid_int[0]_i_2\,
      I1 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I2 => bid_fifo_not_empty,
      I3 => \n_0_Addr_Counters[1].FDRE_I\,
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
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C40"
    )
    port map (
      I0 => \n_0_axi_bid_int[0]_i_2\,
      I1 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I2 => bid_fifo_not_empty,
      I3 => \n_0_Addr_Counters[2].FDRE_I\,
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
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I1 => bid_fifo_not_empty,
      I2 => \n_0_axi_bid_int[0]_i_2\,
      I3 => \n_0_Addr_Counters[3].FDRE_I\,
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
      I4 => \n_0_axi_bid_int[0]_i_2\,
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
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
    port map (
      I0 => s_axi_awid(0),
      I1 => bid_fifo_rd,
      I2 => \n_0_axi_bid_int[0]_i_2\,
      I3 => bid_fifo_not_empty,
      I4 => \^bid_gets_fifo_load\,
      I5 => s_axi_bid(0),
      O => O1
    );
\axi_bid_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
    port map (
      I0 => I4,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => \n_0_axi_bid_int[0]_i_3\,
      I5 => \n_0_axi_bid_int[0]_i_4\,
      O => \n_0_axi_bid_int[0]_i_2\
    );
\axi_bid_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC40CCE0000000A0"
    )
    port map (
      I0 => axi_wdata_full_reg,
      I1 => s_axi_wvalid,
      I2 => p_1_out,
      I3 => I3,
      I4 => axi_wr_burst,
      I5 => s_axi_wlast,
      O => \n_0_axi_bid_int[0]_i_3\
    );
\axi_bid_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAEAEAAA"
    )
    port map (
      I0 => bid_gets_fifo_load_d1,
      I1 => I6,
      I2 => s_axi_bready,
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => AW2Arb_BVALID_Cnt(1),
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \n_0_axi_bid_int[0]_i_4\
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => I5,
      I1 => p_1_out,
      I2 => I2,
      I3 => n_0_bid_gets_fifo_load_d1_i_2,
      O => \^bid_gets_fifo_load\
    );
bid_gets_fifo_load_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000040FF"
    )
    port map (
      I0 => bid_fifo_not_empty,
      I1 => s_axi_bready,
      I2 => I6,
      I3 => AW2Arb_BVALID_Cnt(0),
      I4 => AW2Arb_BVALID_Cnt(1),
      I5 => AW2Arb_BVALID_Cnt(2),
      O => n_0_bid_gets_fifo_load_d1_i_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sg_bram_controller_sng_port_arb is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    p_1_out : out STD_LOGIC;
    O1 : out STD_LOGIC;
    p_2_out : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    p_1_out_0 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_3_out : out STD_LOGIC;
    aw_active_re : out STD_LOGIC;
    p_2_out_1 : out STD_LOGIC;
    ar_active_re : out STD_LOGIC;
    curr_narrow_burst_en : out STD_LOGIC;
    O8 : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O9 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    narrow_burst_cnt_ld_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I8 : in STD_LOGIC;
    narrow_burst_cnt_ld_mod : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I14 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    I15 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I16 : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aw_active_d1 : in STD_LOGIC;
    axi_rd_burst0 : in STD_LOGIC;
    ar_active_d1 : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : in STD_LOGIC;
    wr_data_sng_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    I18 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sg_bram_controller_sng_port_arb : entity is "sng_port_arb";
end sg_bram_controller_sng_port_arb;

architecture STRUCTURE of sg_bram_controller_sng_port_arb is
  signal \^o3\ : STD_LOGIC;
  signal \^o6\ : STD_LOGIC;
  signal \^o7\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ar_active_cmb : STD_LOGIC;
  signal \^ar_active_re\ : STD_LOGIC;
  signal arb_sm_cs : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aw_active_re\ : STD_LOGIC;
  signal axi_arready_cmb : STD_LOGIC;
  signal last_arb_won : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15\ : STD_LOGIC;
  signal n_0_ar_active_i_1 : STD_LOGIC;
  signal \n_0_arb_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_arb_sm_cs[0]_i_2\ : STD_LOGIC;
  signal \n_0_arb_sm_cs[0]_i_3\ : STD_LOGIC;
  signal \n_0_arb_sm_cs[1]_i_1\ : STD_LOGIC;
  signal \n_0_arb_sm_cs[1]_i_2\ : STD_LOGIC;
  signal n_0_aw_active_i_1 : STD_LOGIC;
  signal n_0_aw_active_i_2 : STD_LOGIC;
  signal n_0_aw_active_i_3 : STD_LOGIC;
  signal n_0_axi_arready_int_i_2 : STD_LOGIC;
  signal n_0_axi_arready_int_i_3 : STD_LOGIC;
  signal n_0_axi_awready_int_i_1 : STD_LOGIC;
  signal n_0_axi_awready_int_i_3 : STD_LOGIC;
  signal n_0_last_arb_won_i_1 : STD_LOGIC;
  signal n_0_last_arb_won_i_2 : STD_LOGIC;
  signal n_0_last_arb_won_i_3 : STD_LOGIC;
  signal n_0_last_arb_won_i_4 : STD_LOGIC;
  signal \^p_0_out\ : STD_LOGIC;
  signal \^p_1_out\ : STD_LOGIC;
  signal \^p_1_out_0\ : STD_LOGIC;
  signal \^p_2_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of act_rd_burst_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of aw_active_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_arready_int_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_int_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bram_we_a[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bram_we_a[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_we_a[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of last_arb_won_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1__0\ : label is "soft_lutpair2";
begin
  O3 <= \^o3\;
  O6 <= \^o6\;
  O7(0) <= \^o7\(0);
  ar_active_re <= \^ar_active_re\;
  aw_active_re <= \^aw_active_re\;
  p_0_out <= \^p_0_out\;
  p_1_out <= \^p_1_out\;
  p_1_out_0 <= \^p_1_out_0\;
  p_2_out <= \^p_2_out\;
\GEN_AR_SNG.ar_active_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => \^p_0_out\,
      I1 => s_axi_aresetn,
      I2 => s_axi_rready,
      I3 => I15,
      O => O9
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF04FF04FFFFFF"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => \^aw_active_re\,
      I4 => s_axi_awaddr(0),
      I5 => s_axi_awaddr(1),
      O => \^o3\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF04FF04FFFFFF"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \^ar_active_re\,
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \^o6\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
    port map (
      I0 => I2,
      I1 => \^p_2_out\,
      I2 => narrow_burst_cnt_ld_reg(0),
      I3 => I3,
      I4 => I4,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9\,
      O => O1
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
    port map (
      I0 => I8,
      I1 => \^p_1_out_0\,
      I2 => narrow_burst_cnt_ld_mod(0),
      I3 => I9,
      I4 => I10,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0\,
      O => O4
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1F1FF00010100"
    )
    port map (
      I0 => I6,
      I1 => I7,
      I2 => \^o3\,
      I3 => s_axi_awburst(0),
      I4 => s_axi_awburst(1),
      I5 => narrow_burst_cnt_ld_reg(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1F1FF00010100"
    )
    port map (
      I0 => I12,
      I1 => I13,
      I2 => \^o6\,
      I3 => s_axi_arburst(0),
      I4 => s_axi_arburst(1),
      I5 => narrow_burst_cnt_ld_mod(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888AFFFFBBBA"
    )
    port map (
      I0 => narrow_burst_cnt_ld_reg(1),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12\,
      I2 => I4,
      I3 => I3,
      I4 => \^p_2_out\,
      I5 => I5,
      O => O2
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888AFFFFBBBA"
    )
    port map (
      I0 => narrow_burst_cnt_ld_mod(1),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15\,
      I2 => I10,
      I3 => I9,
      I4 => \^p_1_out_0\,
      I5 => I11,
      O => O5
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1FFFFFFFFF"
    )
    port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(0),
      I2 => \^aw_active_re\,
      I3 => I7,
      I4 => s_axi_awburst(0),
      I5 => s_axi_awburst(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1FFFFFFFFF"
    )
    port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => \^ar_active_re\,
      I3 => I13,
      I4 => s_axi_arburst(0),
      I5 => s_axi_arburst(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => I3,
      I1 => I4,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12\,
      O => p_3_out
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => I9,
      I1 => I10,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15\,
      O => p_2_out_1
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044400000"
    )
    port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => \^aw_active_re\,
      I5 => I7,
      O => \^p_2_out\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044400000"
    )
    port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      I4 => \^ar_active_re\,
      I5 => I13,
      O => \^p_1_out_0\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FD00FD000000"
    )
    port map (
      I0 => I16,
      I1 => s_axi_awlen(0),
      I2 => s_axi_awlen(1),
      I3 => \^aw_active_re\,
      I4 => s_axi_awburst(1),
      I5 => s_axi_awburst(0),
      O => curr_narrow_burst_en
    );
act_rd_burst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => axi_rd_burst0,
      I1 => \^p_0_out\,
      I2 => ar_active_d1,
      I3 => s_axi_arlen(0),
      O => O8
    );
ar_active_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \^p_0_out\,
      I1 => n_0_axi_arready_int_i_2,
      I2 => ar_active_cmb,
      O => n_0_ar_active_i_1
    );
ar_active_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FB00BB00FB00"
    )
    port map (
      I0 => \^o7\(0),
      I1 => arb_sm_cs(0),
      I2 => I14,
      I3 => s_axi_arvalid,
      I4 => s_axi_awvalid,
      I5 => last_arb_won,
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
      INIT => X"AAFFEA00"
    )
    port map (
      I0 => \n_0_arb_sm_cs[0]_i_2\,
      I1 => s_axi_arvalid,
      I2 => \^o7\(0),
      I3 => \n_0_arb_sm_cs[0]_i_3\,
      I4 => arb_sm_cs(0),
      O => \n_0_arb_sm_cs[0]_i_1\
    );
\arb_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030007070"
    )
    port map (
      I0 => last_arb_won,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => I14,
      I4 => arb_sm_cs(0),
      I5 => \^o7\(0),
      O => \n_0_arb_sm_cs[0]_i_2\
    );
\arb_sm_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAFFEAEEEAEEEA"
    )
    port map (
      I0 => n_0_last_arb_won_i_3,
      I1 => arb_sm_cs(0),
      I2 => I17,
      I3 => \^o7\(0),
      I4 => wr_data_sng_sm_cs(1),
      I5 => wr_data_sng_sm_cs(0),
      O => \n_0_arb_sm_cs[0]_i_3\
    );
\arb_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000035350F0F3101"
    )
    port map (
      I0 => \n_0_arb_sm_cs[1]_i_2\,
      I1 => I14,
      I2 => arb_sm_cs(0),
      I3 => I17,
      I4 => \^o7\(0),
      I5 => I18,
      O => \n_0_arb_sm_cs[1]_i_1\
    );
\arb_sm_cs[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => last_arb_won,
      I2 => s_axi_awvalid,
      O => \n_0_arb_sm_cs[1]_i_2\
    );
\arb_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_arb_sm_cs[0]_i_1\,
      Q => arb_sm_cs(0),
      R => I1
    );
\arb_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_arb_sm_cs[1]_i_1\,
      Q => \^o7\(0),
      R => I1
    );
aw_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333555700005554"
    )
    port map (
      I0 => \^o7\(0),
      I1 => n_0_aw_active_i_2,
      I2 => n_0_aw_active_i_3,
      I3 => n_0_axi_awready_int_i_3,
      I4 => I14,
      I5 => \^p_1_out\,
      O => n_0_aw_active_i_1
    );
aw_active_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => \^o7\(0),
      I1 => wr_data_sng_sm_cs(0),
      I2 => wr_data_sng_sm_cs(1),
      I3 => arb_sm_cs(0),
      O => n_0_aw_active_i_2
    );
aw_active_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o7\(0),
      I1 => s_axi_rready,
      I2 => I15,
      I3 => arb_sm_cs(0),
      O => n_0_aw_active_i_3
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
      INIT => X"000040FF"
    )
    port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_arvalid,
      I2 => I14,
      I3 => arb_sm_cs(0),
      I4 => n_0_axi_arready_int_i_2,
      O => axi_arready_cmb
    );
axi_arready_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF7F"
    )
    port map (
      I0 => arb_sm_cs(0),
      I1 => I15,
      I2 => s_axi_rready,
      I3 => \^o7\(0),
      I4 => n_0_axi_arready_int_i_3,
      I5 => n_0_last_arb_won_i_4,
      O => n_0_axi_arready_int_i_2
    );
axi_arready_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01110000"
    )
    port map (
      I0 => arb_sm_cs(0),
      I1 => \^o7\(0),
      I2 => s_axi_awvalid,
      I3 => last_arb_won,
      I4 => s_axi_arvalid,
      O => n_0_axi_arready_int_i_3
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
      INIT => X"4544444444444444"
    )
    port map (
      I0 => I14,
      I1 => n_0_axi_awready_int_i_3,
      I2 => \^o7\(0),
      I3 => s_axi_rready,
      I4 => I15,
      I5 => arb_sm_cs(0),
      O => n_0_axi_awready_int_i_1
    );
axi_awready_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10001111"
    )
    port map (
      I0 => arb_sm_cs(0),
      I1 => \^o7\(0),
      I2 => s_axi_awvalid,
      I3 => last_arb_won,
      I4 => s_axi_arvalid,
      O => n_0_axi_awready_int_i_3
    );
axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_awready_int_i_1,
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
\bram_we_a[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(1),
      O => bram_we_a(1)
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
\bram_we_a[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => Q(3),
      O => bram_we_a(3)
    );
last_arb_won_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => ar_active_cmb,
      I1 => n_0_last_arb_won_i_2,
      I2 => n_0_last_arb_won_i_3,
      I3 => n_0_last_arb_won_i_4,
      I4 => last_arb_won,
      O => n_0_last_arb_won_i_1
    );
last_arb_won_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080008080808"
    )
    port map (
      I0 => arb_sm_cs(0),
      I1 => I17,
      I2 => \^o7\(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_awvalid,
      I5 => I14,
      O => n_0_last_arb_won_i_2
    );
last_arb_won_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005DDD"
    )
    port map (
      I0 => I14,
      I1 => s_axi_arvalid,
      I2 => last_arb_won,
      I3 => s_axi_awvalid,
      I4 => \^o7\(0),
      I5 => arb_sm_cs(0),
      O => n_0_last_arb_won_i_3
    );
last_arb_won_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => arb_sm_cs(0),
      I2 => wr_data_sng_sm_cs(1),
      I3 => wr_data_sng_sm_cs(0),
      I4 => \^o7\(0),
      O => n_0_last_arb_won_i_4
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
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^p_1_out\,
      I1 => aw_active_d1,
      O => \^aw_active_re\
    );
\save_init_bram_addr_ld[11]_i_1__0\: unisim.vcomponents.LUT2
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
entity sg_bram_controller_wrap_brst is
  port (
    O1 : out STD_LOGIC;
    O12 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O2 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    axi_byte_div_curr_awsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I3 : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    curr_narrow_burst : in STD_LOGIC;
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    narrow_bram_addr_inc : in STD_LOGIC;
    I11 : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    narrow_addr_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    curr_wrap_burst_reg : in STD_LOGIC;
    I12 : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I4 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sg_bram_controller_wrap_brst : entity is "wrap_brst";
end sg_bram_controller_wrap_brst;

architecture STRUCTURE of sg_bram_controller_wrap_brst is
  signal \^o1\ : STD_LOGIC;
  signal \^o12\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o16\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^axi_byte_div_curr_awsize\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_10\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_3__0\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_5__0\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[3]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[4]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[5]_i_2\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[0]_i_2\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[1]_i_2\ : STD_LOGIC;
  signal save_init_bram_addr_ld : STD_LOGIC_VECTOR ( 11 downto 3 );
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[3]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[5]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_2\ : label is "soft_lutpair53";
begin
  O1 <= \^o1\;
  O12(8 downto 0) <= \^o12\(8 downto 0);
  O16 <= \^o16\;
  O2 <= \^o2\;
  axi_byte_div_curr_awsize(0) <= \^axi_byte_div_curr_awsize\(0);
\ADDR_SNG_PORT.bram_addr_int[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA2"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => \^o1\,
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(0),
      I4 => narrow_bram_addr_inc_d1,
      I5 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_10\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000DD0D"
    )
    port map (
      I0 => \^o1\,
      I1 => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_10\,
      I2 => p_1_out,
      I3 => I3,
      I4 => I11,
      I5 => ar_active_re,
      O => O14
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => I1,
      I1 => I2,
      I2 => s_axi_wvalid,
      O => \^o1\
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4FFF4FFF4"
    )
    port map (
      I0 => I3,
      I1 => p_1_out,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I3 => curr_narrow_burst,
      I4 => narrow_bram_addr_inc_d1,
      I5 => narrow_bram_addr_inc,
      O => O13
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I12,
      I1 => I7,
      I2 => I5,
      I3 => I6,
      O => \^o16\
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
    port map (
      I0 => s_axi_awaddr(7),
      I1 => I3,
      I2 => p_1_out,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I4 => \^o2\,
      I5 => save_init_bram_addr_ld(10),
      O => \^o12\(7)
    );
\save_init_bram_addr_ld[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
    port map (
      I0 => s_axi_awaddr(8),
      I1 => I3,
      I2 => p_1_out,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I4 => \^o2\,
      I5 => save_init_bram_addr_ld(11),
      O => \^o12\(8)
    );
\save_init_bram_addr_ld[11]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7775777F777F77"
    )
    port map (
      I0 => curr_wrap_burst_reg,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_5__0\,
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(2),
      I4 => wrap_burst_total(0),
      I5 => \^o16\,
      O => \n_0_save_init_bram_addr_ld[11]_i_3__0\
    );
\save_init_bram_addr_ld[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0000"
    )
    port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => \^o1\,
      I4 => curr_narrow_burst,
      O => \^o2\
    );
\save_init_bram_addr_ld[11]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44C004C000C000C0"
    )
    port map (
      I0 => wrap_burst_total(2),
      I1 => I5,
      I2 => wrap_burst_total(0),
      I3 => wrap_burst_total(1),
      I4 => I6,
      I5 => I7,
      O => \n_0_save_init_bram_addr_ld[11]_i_5__0\
    );
\save_init_bram_addr_ld[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
    port map (
      I0 => s_axi_awaddr(0),
      I1 => I3,
      I2 => p_1_out,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I4 => \^o2\,
      I5 => \n_0_save_init_bram_addr_ld[3]_i_2\,
      O => \^o12\(0)
    );
\save_init_bram_addr_ld[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0B0"
    )
    port map (
      I0 => wrap_burst_total(0),
      I1 => wrap_burst_total(2),
      I2 => save_init_bram_addr_ld(3),
      I3 => wrap_burst_total(1),
      O => \n_0_save_init_bram_addr_ld[3]_i_2\
    );
\save_init_bram_addr_ld[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
    port map (
      I0 => s_axi_awaddr(1),
      I1 => I3,
      I2 => p_1_out,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I4 => \^o2\,
      I5 => \n_0_save_init_bram_addr_ld[4]_i_2\,
      O => \^o12\(1)
    );
\save_init_bram_addr_ld[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD00"
    )
    port map (
      I0 => wrap_burst_total(2),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(1),
      I3 => save_init_bram_addr_ld(4),
      O => \n_0_save_init_bram_addr_ld[4]_i_2\
    );
\save_init_bram_addr_ld[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
    port map (
      I0 => s_axi_awaddr(2),
      I1 => I3,
      I2 => p_1_out,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I4 => \^o2\,
      I5 => \n_0_save_init_bram_addr_ld[5]_i_2\,
      O => \^o12\(2)
    );
\save_init_bram_addr_ld[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
    port map (
      I0 => wrap_burst_total(0),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(1),
      I3 => save_init_bram_addr_ld(5),
      O => \n_0_save_init_bram_addr_ld[5]_i_2\
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
    port map (
      I0 => s_axi_awaddr(3),
      I1 => I3,
      I2 => p_1_out,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I4 => \^o2\,
      I5 => save_init_bram_addr_ld(6),
      O => \^o12\(3)
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
    port map (
      I0 => s_axi_awaddr(4),
      I1 => I3,
      I2 => p_1_out,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I4 => \^o2\,
      I5 => save_init_bram_addr_ld(7),
      O => \^o12\(4)
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
    port map (
      I0 => s_axi_awaddr(5),
      I1 => I3,
      I2 => p_1_out,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I4 => \^o2\,
      I5 => save_init_bram_addr_ld(8),
      O => \^o12\(5)
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
    port map (
      I0 => s_axi_awaddr(6),
      I1 => I3,
      I2 => p_1_out,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_3__0\,
      I4 => \^o2\,
      I5 => save_init_bram_addr_ld(9),
      O => \^o12\(6)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^o12\(7),
      Q => save_init_bram_addr_ld(10),
      R => I4
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^o12\(8),
      Q => save_init_bram_addr_ld(11),
      R => I4
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^o12\(0),
      Q => save_init_bram_addr_ld(3),
      R => I4
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^o12\(1),
      Q => save_init_bram_addr_ld(4),
      R => I4
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^o12\(2),
      Q => save_init_bram_addr_ld(5),
      R => I4
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^o12\(3),
      Q => save_init_bram_addr_ld(6),
      R => I4
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^o12\(4),
      Q => save_init_bram_addr_ld(7),
      R => I4
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^o12\(5),
      Q => save_init_bram_addr_ld(8),
      R => I4
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^o12\(6),
      Q => save_init_bram_addr_ld(9),
      R => I4
    );
\wrap_burst_total[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040344037"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(2),
      I3 => s_axi_awlen(3),
      I4 => s_axi_awlen(1),
      I5 => \n_0_wrap_burst_total[0]_i_2\,
      O => wrap_burst_total_cmb(0)
    );
\wrap_burst_total[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF45FF"
    )
    port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awsize(2),
      O => \n_0_wrap_burst_total[0]_i_2\
    );
\wrap_burst_total[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001015400"
    )
    port map (
      I0 => \n_0_wrap_burst_total[1]_i_2\,
      I1 => s_axi_awlen(3),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(2),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awlen(1),
      O => \n_0_wrap_burst_total[1]_i_2\
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \^axi_byte_div_curr_awsize\(0),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awlen(3),
      I4 => s_axi_awlen(2),
      O => wrap_burst_total_cmb(2)
    );
\wrap_burst_total[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      O => \^axi_byte_div_curr_awsize\(0)
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wrap_burst_total_cmb(0),
      Q => wrap_burst_total(0),
      R => I4
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wrap_burst_total_cmb(1),
      Q => wrap_burst_total(1),
      R => I4
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wrap_burst_total_cmb(2),
      Q => wrap_burst_total(2),
      R => I4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sg_bram_controller_wrap_brst_0 is
  port (
    O1 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    O18 : out STD_LOGIC;
    O19 : out STD_LOGIC;
    O20 : out STD_LOGIC;
    O21 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    bram_addr_inc10_out : out STD_LOGIC;
    O4 : out STD_LOGIC;
    axi_byte_div_curr_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    curr_narrow_burst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    narrow_addr_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_0_out : in STD_LOGIC;
    I5 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    I6 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    axi_rd_burst : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    I2 : in STD_LOGIC;
    brst_zero : in STD_LOGIC;
    end_brst_rd : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sg_bram_controller_wrap_brst_0 : entity is "wrap_brst";
end sg_bram_controller_wrap_brst_0;

architecture STRUCTURE of sg_bram_controller_wrap_brst_0 is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal RdChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \^axi_byte_div_curr_arsize\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bram_addr_inc10_out\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_3\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_3\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_4\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_5\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_6\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_7\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[10]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[11]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[3]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[4]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[5]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[6]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[7]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[8]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[9]\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[1]_i_2__0\ : STD_LOGIC;
  signal \n_0_wrap_burst_total_reg[0]\ : STD_LOGIC;
  signal \n_0_wrap_burst_total_reg[1]\ : STD_LOGIC;
  signal \n_0_wrap_burst_total_reg[2]\ : STD_LOGIC;
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[10]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[4]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[5]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[9]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[10]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[6]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[7]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_2__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_2__0\ : label is "soft_lutpair12";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  axi_byte_div_curr_arsize(0) <= \^axi_byte_div_curr_arsize\(0);
  bram_addr_inc10_out <= \^bram_addr_inc10_out\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[10]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(8),
      I3 => p_0_out,
      I4 => I6(7),
      O => O20
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[11]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(9),
      I3 => p_0_out,
      I4 => I6(8),
      O => O21
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F202020"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => \^o2\,
      I2 => p_0_out,
      I3 => I5,
      I4 => s_axi_awaddr(0),
      O => O11
    );
\ADDR_SNG_PORT.bram_addr_int[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_3\,
      I1 => \^o2\,
      I2 => s_axi_araddr(1),
      I3 => p_0_out,
      I4 => I6(0),
      O => O13
    );
\ADDR_SNG_PORT.bram_addr_int[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0B0"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_save_init_bram_addr_ld_reg[3]\,
      I3 => \n_0_wrap_burst_total_reg[1]\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_3\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_3\,
      I1 => \^o2\,
      I2 => s_axi_araddr(2),
      I3 => p_0_out,
      I4 => I6(1),
      O => O14
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD00"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[2]\,
      I1 => \n_0_wrap_burst_total_reg[0]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[4]\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_3\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_4\,
      I1 => \^o2\,
      I2 => s_axi_araddr(3),
      I3 => p_0_out,
      I4 => I6(2),
      O => O15
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[5]\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_4\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[6]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(4),
      I3 => p_0_out,
      I4 => I6(3),
      O => O16
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[7]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(5),
      I3 => p_0_out,
      I4 => I6(4),
      O => O17
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[8]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(6),
      I3 => p_0_out,
      I4 => I6(5),
      O => O18
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[9]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(7),
      I3 => p_0_out,
      I4 => I6(6),
      O => O19
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5120512051644064"
    )
    port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^bram_addr_inc10_out\,
      I3 => Q(0),
      I4 => axi_rd_burst,
      I5 => I1,
      O => \^o3\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => s_axi_rready,
      I1 => I2,
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
      I1 => \^o2\,
      I2 => s_axi_araddr(8),
      O => RdChnl_BRAM_Addr_Ld(8)
    );
\save_init_bram_addr_ld[11]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[11]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(9),
      O => RdChnl_BRAM_Addr_Ld(9)
    );
\save_init_bram_addr_ld[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000020202AA"
    )
    port map (
      I0 => \^o3\,
      I1 => narrow_bram_addr_inc_d1,
      I2 => \^o1\,
      I3 => curr_narrow_burst,
      I4 => Q(3),
      I5 => \n_0_save_init_bram_addr_ld[11]_i_5\,
      O => \^o2\
    );
\save_init_bram_addr_ld[11]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => Q(3),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(1),
      O => \^o1\
    );
\save_init_bram_addr_ld[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3100FFFFFFFFFFFF"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld[11]_i_6\,
      I1 => \n_0_wrap_burst_total_reg[1]\,
      I2 => \n_0_wrap_burst_total_reg[0]\,
      I3 => \n_0_wrap_burst_total_reg[2]\,
      I4 => \n_0_save_init_bram_addr_ld[11]_i_7\,
      I5 => curr_wrap_burst_reg,
      O => \n_0_save_init_bram_addr_ld[11]_i_5\
    );
\save_init_bram_addr_ld[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I8,
      I1 => I9,
      I2 => I10,
      I3 => I11,
      O => \n_0_save_init_bram_addr_ld[11]_i_6\
    );
\save_init_bram_addr_ld[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF8A00F000"
    )
    port map (
      I0 => I9,
      I1 => I11,
      I2 => \n_0_wrap_burst_total_reg[0]\,
      I3 => I10,
      I4 => \n_0_wrap_burst_total_reg[1]\,
      I5 => \n_0_wrap_burst_total_reg[2]\,
      O => \n_0_save_init_bram_addr_ld[11]_i_7\
    );
\save_init_bram_addr_ld[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0B0FFFFC0B00000"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_save_init_bram_addr_ld_reg[3]\,
      I3 => \n_0_wrap_burst_total_reg[1]\,
      I4 => \^o2\,
      I5 => s_axi_araddr(1),
      O => RdChnl_BRAM_Addr_Ld(1)
    );
\save_init_bram_addr_ld[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD00FFFFBD000000"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[2]\,
      I1 => \n_0_wrap_burst_total_reg[0]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[4]\,
      I4 => \^o2\,
      I5 => s_axi_araddr(2),
      O => RdChnl_BRAM_Addr_Ld(2)
    );
\save_init_bram_addr_ld[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FFFFFB000000"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[5]\,
      I4 => \^o2\,
      I5 => s_axi_araddr(3),
      O => RdChnl_BRAM_Addr_Ld(3)
    );
\save_init_bram_addr_ld[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[6]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(4),
      O => RdChnl_BRAM_Addr_Ld(4)
    );
\save_init_bram_addr_ld[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[7]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(5),
      O => RdChnl_BRAM_Addr_Ld(5)
    );
\save_init_bram_addr_ld[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[8]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(6),
      O => RdChnl_BRAM_Addr_Ld(6)
    );
\save_init_bram_addr_ld[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[9]\,
      I1 => \^o2\,
      I2 => s_axi_araddr(7),
      O => RdChnl_BRAM_Addr_Ld(7)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(8),
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
      D => RdChnl_BRAM_Addr_Ld(9),
      Q => \n_0_save_init_bram_addr_ld_reg[11]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(1),
      Q => \n_0_save_init_bram_addr_ld_reg[3]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(2),
      Q => \n_0_save_init_bram_addr_ld_reg[4]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(3),
      Q => \n_0_save_init_bram_addr_ld_reg[5]\,
      R => \^o4\
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(4),
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
      D => RdChnl_BRAM_Addr_Ld(5),
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
      D => RdChnl_BRAM_Addr_Ld(6),
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
      D => RdChnl_BRAM_Addr_Ld(7),
      Q => \n_0_save_init_bram_addr_ld_reg[9]\,
      R => \^o4\
    );
\wrap_burst_total[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100411000010000"
    )
    port map (
      I0 => \n_0_wrap_burst_total[0]_i_2__0\,
      I1 => s_axi_arlen(3),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arlen(1),
      O => wrap_burst_total_cmb(0)
    );
\wrap_burst_total[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arlen(0),
      O => \n_0_wrap_burst_total[0]_i_2__0\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000098000000"
    )
    port map (
      I0 => \n_0_wrap_burst_total[1]_i_2__0\,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(0),
      I5 => s_axi_arsize(2),
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arsize(0),
      O => \n_0_wrap_burst_total[1]_i_2__0\
    );
\wrap_burst_total[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \^axi_byte_div_curr_arsize\(0),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      O => wrap_burst_total_cmb(2)
    );
\wrap_burst_total[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      O => \^axi_byte_div_curr_arsize\(0)
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
entity sg_bram_controller_rd_chnl is
  port (
    O1 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    O2 : out STD_LOGIC;
    ar_active_d1 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_7_in : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    O18 : out STD_LOGIC;
    O19 : out STD_LOGIC;
    O20 : out STD_LOGIC;
    O21 : out STD_LOGIC;
    O22 : out STD_LOGIC;
    O23 : out STD_LOGIC;
    axi_rd_burst0 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    p_2_out : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    p_0_out : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I5 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    I6 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sg_bram_controller_rd_chnl : entity is "rd_chnl";
end sg_bram_controller_rd_chnl;

architecture STRUCTURE of sg_bram_controller_rd_chnl is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o1\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \^o9\ : STD_LOGIC;
  signal act_rd_burst : STD_LOGIC;
  signal act_rd_burst_set : STD_LOGIC;
  signal act_rd_burst_two : STD_LOGIC;
  signal \^ar_active_d1\ : STD_LOGIC;
  signal axi_byte_div_curr_arsize : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_rd_burst : STD_LOGIC;
  signal \^axi_rd_burst0\ : STD_LOGIC;
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
  signal curr_narrow_burst : STD_LOGIC;
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
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_12__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_22__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_24__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_26__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_27__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_28__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_10\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RID_SNG.axi_rid_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RID_SNG.axi_rid_int[0]_i_2\ : STD_LOGIC;
  signal n_0_I_WRAP_BRST : STD_LOGIC;
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
  signal n_0_brst_one_i_4 : STD_LOGIC;
  signal n_0_brst_zero_i_1 : STD_LOGIC;
  signal n_0_brst_zero_i_2 : STD_LOGIC;
  signal n_0_brst_zero_i_3 : STD_LOGIC;
  signal n_0_brst_zero_i_4 : STD_LOGIC;
  signal n_0_brst_zero_i_5 : STD_LOGIC;
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
  signal n_12_I_WRAP_BRST : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\ : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^p_7_in\ : STD_LOGIC;
  signal pend_rd_op : STD_LOGIC;
  signal rd_adv_buf29_out : STD_LOGIC;
  signal rd_data_sm_cs : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_skid_buf : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd_skid_buf_ld : STD_LOGIC;
  signal rd_skid_buf_ld_cmb : STD_LOGIC;
  signal rd_skid_buf_ld_reg : STD_LOGIC;
  signal rddata_mux_sel : STD_LOGIC;
  signal rddata_mux_sel_cmb : STD_LOGIC;
  signal rlast_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_16__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_20__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_21__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_22__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_23__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_24__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_25__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_13\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_14\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_16__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_17__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_RID_SNG.axi_rid_int[0]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \arb_sm_cs[1]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of axi_rd_burst_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of axi_rlast_int_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of axi_rvalid_set_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of bram_en_int_i_5 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of bram_en_int_i_7 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of bram_en_int_i_8 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \brst_cnt[4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \brst_cnt[5]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \brst_cnt[7]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of brst_one_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of brst_one_i_3 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of brst_one_i_4 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of brst_zero_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of brst_zero_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of brst_zero_i_5 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of curr_fixed_burst_reg_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of curr_wrap_burst_reg_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of disable_b2b_brst_i_5 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of last_bram_addr_i_2 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of last_bram_addr_i_4 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of last_bram_addr_i_5 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of pend_rd_op_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of pend_rd_op_i_4 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[1]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[2]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[3]_i_5\ : label is "soft_lutpair26";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  O1 <= \^o1\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  O5 <= \^o5\;
  O9 <= \^o9\;
  ar_active_d1 <= \^ar_active_d1\;
  axi_rd_burst0 <= \^axi_rd_burst0\;
  p_7_in <= \^p_7_in\;
  s_axi_rid(0) <= \^s_axi_rid\(0);
\ADDR_SNG_PORT.bram_addr_int[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FEF0FFFFFFFF"
    )
    port map (
      I0 => narrow_addr_int(1),
      I1 => narrow_addr_int(0),
      I2 => rd_data_sm_cs(3),
      I3 => curr_narrow_burst,
      I4 => narrow_bram_addr_inc_d1,
      I5 => n_12_I_WRAP_BRST,
      O => O22
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
      I4 => \^o9\,
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
      I4 => \^o9\,
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
      I4 => \^o9\,
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
      I4 => \^o9\,
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
      I0 => curr_narrow_burst,
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
\GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => n_12_I_WRAP_BRST,
      I1 => narrow_bram_addr_inc_d1,
      I2 => curr_narrow_burst,
      I3 => rd_data_sm_cs(3),
      I4 => narrow_addr_int(0),
      I5 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5030503F5F305F3F"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_22__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23__0\,
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_24__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_12__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B2228"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18__0\,
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_26__0\,
      I1 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_22__0\,
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_27__0\,
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_17__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"550F33FF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_24__0\,
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_18__0\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_19__0\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFB8B8FF00B8B8"
    )
    port map (
      I0 => I2,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\,
      I5 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_1__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_20__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FEA00"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_27__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_28__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_21__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
    port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_araddr(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      O => O7
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_22__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_23__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_24__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_24__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_25__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_26__0\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_26__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_27__0\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_27__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_28__0\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_28__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F00010F0"
    )
    port map (
      I0 => \^o4\,
      I1 => \^o5\,
      I2 => \^d\(0),
      I3 => s_axi_arburst(1),
      I4 => s_axi_arburst(0),
      I5 => I3,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => n_12_I_WRAP_BRST,
      I1 => curr_narrow_burst,
      I2 => rd_data_sm_cs(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF02FF"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => p_0_out,
      I4 => \^ar_active_d1\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF035"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      O => O6
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_12__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17__0\,
      O => \^o4\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABFCA800"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18__0\,
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20__0\,
      O => \^o5\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF404040F0"
    )
    port map (
      I0 => rd_data_sm_cs(3),
      I1 => curr_narrow_burst,
      I2 => n_12_I_WRAP_BRST,
      I3 => narrow_bram_addr_inc_d1,
      I4 => n_0_I_WRAP_BRST,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_10\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404444"
    )
    port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rd_data_sm_cs(3),
      I1 => curr_narrow_burst,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => O8
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1312"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_araddr(1),
      O => O10
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_araddr(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000033A8"
    )
    port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_araddr(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888A88"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\,
      I3 => \^d\(1),
      I4 => p_2_out,
      I5 => p_1_out,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C6EEC644"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_10\,
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\,
      I4 => I4,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_10\,
      I1 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F090F080F0F0F0F"
    )
    port map (
      I0 => narrow_addr_int(1),
      I1 => narrow_addr_int(0),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14\,
      I4 => narrow_bram_addr_inc_d1,
      I5 => n_12_I_WRAP_BRST,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_1__0\,
      Q => narrow_addr_int(0),
      R => \^o1\
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
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0\,
      DI(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20\,
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_18_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21\,
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_12\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => n_12_I_WRAP_BRST,
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(0),
      I3 => rd_data_sm_cs(3),
      I4 => curr_narrow_burst,
      O => narrow_bram_addr_inc
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
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => p_0_out,
      I3 => \^ar_active_d1\,
      I4 => narrow_burst_cnt_ld_reg(0),
      O => \^d\(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FF00000100"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => p_0_out,
      I4 => \^ar_active_d1\,
      I5 => narrow_burst_cnt_ld_reg(1),
      O => \^d\(1)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(0),
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
      D => \^d\(1),
      Q => narrow_burst_cnt_ld_reg(1),
      R => \^o1\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002AAFEAA"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => s_axi_arburst(1),
      I2 => s_axi_arburst(0),
      I3 => n_0_brst_zero_i_3,
      I4 => axi_byte_div_curr_arsize(0),
      I5 => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0\,
      O => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4500FFFF"
    )
    port map (
      I0 => pend_rd_op,
      I1 => \^ar_active_d1\,
      I2 => p_0_out,
      I3 => n_0_axi_rlast_int_i_2,
      I4 => s_axi_aresetn,
      O => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0\
    );
\GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1\,
      Q => curr_narrow_burst,
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => \^o3\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0302330030003030"
    )
    port map (
      I0 => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(1),
      I3 => rd_adv_buf29_out,
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(2),
      O => axi_rdata_en
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(31),
      I1 => bram_rddata_a(31),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o9\,
      I1 => s_axi_rready,
      O => rd_adv_buf29_out
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\,
      Q => s_axi_rdata(31),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
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
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf[31]_i_1\: unisim.vcomponents.LUT6
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
I_WRAP_BRST: entity work.sg_bram_controller_wrap_brst_0
    port map (
      I1 => n_0_axi_rd_burst_two_reg,
      I10 => I10,
      I11 => I11,
      I2 => \^o9\,
      I5 => I5,
      I6(8 downto 0) => I6(8 downto 0),
      I8 => I8,
      I9 => I9,
      O1 => n_0_I_WRAP_BRST,
      O11 => O11,
      O13 => O13,
      O14 => O14,
      O15 => O15,
      O16 => O16,
      O17 => O17,
      O18 => O18,
      O19 => O19,
      O2 => O12,
      O20 => O20,
      O21 => O21,
      O3 => n_12_I_WRAP_BRST,
      O4 => \^o1\,
      Q(3 downto 0) => rd_data_sm_cs(3 downto 0),
      ar_active_re => ar_active_re,
      axi_byte_div_curr_arsize(0) => axi_byte_div_curr_arsize(0),
      axi_rd_burst => axi_rd_burst,
      bram_addr_inc10_out => bram_addr_inc10_out,
      brst_zero => brst_zero,
      curr_narrow_burst => curr_narrow_burst,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      end_brst_rd => end_brst_rd,
      narrow_addr_int(1 downto 0) => narrow_addr_int(1 downto 0),
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      p_0_out => p_0_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(9 downto 0) => s_axi_araddr(11 downto 2),
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
      I0 => n_0_brst_zero_i_3,
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
      O => O23
    );
axi_rd_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0C0C000A000A0"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => \^axi_rd_burst0\,
      I2 => s_axi_aresetn,
      I3 => brst_zero,
      I4 => \^ar_active_d1\,
      I5 => p_0_out,
      O => n_0_axi_rd_burst_i_1
    );
axi_rd_burst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(1),
      I3 => n_0_brst_one_i_4,
      O => \^axi_rd_burst0\
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
      INIT => X"300030000000AA00"
    )
    port map (
      I0 => n_0_axi_rd_burst_two_reg,
      I1 => \^axi_rd_burst0\,
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
      I4 => \^o9\,
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
      I0 => \^o9\,
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
      Q => \^o9\,
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
      I0 => \^o9\,
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
      I0 => n_12_I_WRAP_BRST,
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
      INIT => X"00000020"
    )
    port map (
      I0 => n_0_brst_one_i_4,
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      O => axi_rd_burst_two
    );
brst_one_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arlen(6),
      O => n_0_brst_one_i_4
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
      I3 => n_0_brst_zero_i_3,
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
brst_zero_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => n_0_brst_zero_i_5,
      O => n_0_brst_zero_i_3
    );
brst_zero_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[2]\,
      I1 => \n_0_brst_cnt_reg[3]\,
      I2 => \n_0_brst_cnt_reg[4]\,
      I3 => \n_0_brst_cnt_reg[6]\,
      I4 => \n_0_brst_cnt_reg[5]\,
      I5 => \n_0_brst_cnt_reg[7]\,
      O => n_0_brst_zero_i_4
    );
brst_zero_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => n_0_brst_one_i_4,
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      O => n_0_brst_zero_i_5
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
      I2 => n_0_brst_zero_i_5,
      I3 => n_0_last_bram_addr_i_5,
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
      I3 => \^o9\,
      O => n_0_last_bram_addr_i_4
    );
last_bram_addr_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880080"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o9\,
      I2 => p_0_out,
      I3 => \^ar_active_d1\,
      I4 => pend_rd_op,
      O => n_0_last_bram_addr_i_5
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
      I3 => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\,
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
      I1 => \^o9\,
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
      I3 => \^o9\,
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
      I2 => \^o9\,
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
      I2 => \^o9\,
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
entity sg_bram_controller_wr_chnl is
  port (
    aw_active_d1 : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    O1 : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    wr_data_sng_sm_cs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_out : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I2 : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    p_3_out : in STD_LOGIC;
    p_2_out : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    p_0_out : in STD_LOGIC;
    I11 : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    I12 : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    curr_narrow_burst_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sg_bram_controller_wr_chnl : entity is "wr_chnl";
end sg_bram_controller_wr_chnl;

architecture STRUCTURE of sg_bram_controller_wr_chnl is
  signal AW2Arb_BVALID_Cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^aw_active_d1\ : STD_LOGIC;
  signal axi_byte_div_curr_awsize : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_12\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_22\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_24\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_26\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_27\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_28\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_17\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\ : STD_LOGIC;
  signal n_0_I_WRAP_BRST : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_1 : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_2 : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_3 : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_4 : STD_LOGIC;
  signal n_0_axi_wr_burst_i_1 : STD_LOGIC;
  signal n_0_axi_wr_burst_i_2 : STD_LOGIC;
  signal n_0_axi_wready_int_mod_i_1 : STD_LOGIC;
  signal \n_0_bvalid_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[2]_i_1\ : STD_LOGIC;
  signal \n_0_curr_fixed_burst_reg_i_1__0\ : STD_LOGIC;
  signal \n_0_curr_wrap_burst_reg_i_1__0\ : STD_LOGIC;
  signal n_10_I_WRAP_BRST : STD_LOGIC;
  signal n_1_BID_FIFO : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\ : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \^wr_data_sng_sm_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wrdata_reg_ld : STD_LOGIC;
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_13\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_14\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_16\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_20\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_21\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_22\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_23\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_24\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_25\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_6\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_13__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \GEN_NARROW_EN.axi_wlast_d1_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \arb_sm_cs[1]_i_4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of axi_wr_burst_i_1 : label is "soft_lutpair62";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  aw_active_d1 <= \^aw_active_d1\;
  s_axi_bid(0) <= \^s_axi_bid\(0);
  s_axi_wready <= \^s_axi_wready\;
  wr_data_sng_sm_cs(1 downto 0) <= \^wr_data_sng_sm_cs\(1 downto 0);
\ADDR_SNG_PORT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_3\,
      I1 => s_axi_aresetn,
      O => O7
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
    port map (
      I0 => \^wr_data_sng_sm_cs\(1),
      I1 => \^wr_data_sng_sm_cs\(0),
      I2 => p_1_out,
      I3 => \^aw_active_d1\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_3\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10101010101F1010"
    )
    port map (
      I0 => I9,
      I1 => I10,
      I2 => p_0_out,
      I3 => curr_fixed_burst_reg,
      I4 => n_0_I_WRAP_BRST,
      I5 => n_10_I_WRAP_BRST,
      O => O11
    );
BID_FIFO: entity work.sg_bram_controller_SRL_FIFO
    port map (
      AW2Arb_BVALID_Cnt(2 downto 0) => AW2Arb_BVALID_Cnt(2 downto 0),
      I1 => I1,
      I2 => \^aw_active_d1\,
      I3 => \^wr_data_sng_sm_cs\(1),
      I4 => \^wr_data_sng_sm_cs\(0),
      I5 => n_0_axi_bvalid_int_i_3,
      I6 => \^o1\,
      O1 => n_1_BID_FIFO,
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
      s_axi_wvalid => s_axi_wvalid
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFB8B8FF00B8B8"
    )
    port map (
      I0 => I2,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      I5 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_1\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404444"
    )
    port map (
      I0 => \^aw_active_d1\,
      I1 => p_1_out,
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(2),
      I4 => s_axi_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5030503F5F305F3F"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_22\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23\,
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_24\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_12\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222B2228"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_26\,
      I1 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_22\,
      I3 => s_axi_awsize(2),
      I4 => s_axi_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_27\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"550F33FF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_24\,
      I3 => s_axi_awsize(2),
      I4 => s_axi_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_18\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_19\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FEA00"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_27\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_28\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
    port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      O => O5
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_22\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_23\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_24\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_25\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_26\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_26\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_27\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_27\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_28\: unisim.vcomponents.LUT6
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
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_28\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F00010F0"
    )
    port map (
      I0 => \^o2\,
      I1 => \^o3\,
      I2 => \^d\(0),
      I3 => s_axi_awburst(1),
      I4 => s_axi_awburst(0),
      I5 => I3,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => s_axi_wvalid,
      I2 => \^wr_data_sng_sm_cs\(1),
      I3 => \^wr_data_sng_sm_cs\(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFFFFFF"
    )
    port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => n_0_I_WRAP_BRST,
      I4 => curr_narrow_burst,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF035"
    )
    port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      O => O4
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_12\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17\,
      O => \^o2\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABFCA800"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18\,
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20\,
      O => \^o3\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => O6
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1312"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awaddr(1),
      O => O10
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awaddr(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_17\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
    port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000033A8"
    )
    port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888A88"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      I3 => \^d\(1),
      I4 => p_3_out,
      I5 => p_2_out,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F078FFFFF0780000"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => n_0_I_WRAP_BRST,
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      I5 => I4,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5555D555"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      I1 => curr_narrow_burst,
      I2 => s_axi_wvalid,
      I3 => \^wr_data_sng_sm_cs\(1),
      I4 => \^wr_data_sng_sm_cs\(0),
      I5 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F77F0000"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => n_0_I_WRAP_BRST,
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_1\,
      Q => narrow_addr_int(0),
      R => I1
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
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16\,
      DI(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_17\,
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_15_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18\,
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_11\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
    port map (
      I0 => narrow_addr_int(0),
      I1 => narrow_addr_int(1),
      I2 => \^wr_data_sng_sm_cs\(0),
      I3 => \^wr_data_sng_sm_cs\(1),
      I4 => s_axi_wvalid,
      I5 => curr_narrow_burst,
      O => narrow_bram_addr_inc
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
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => p_1_out,
      I3 => \^aw_active_d1\,
      I4 => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\,
      O => \^d\(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FF00000100"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => p_1_out,
      I4 => \^aw_active_d1\,
      I5 => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\,
      O => \^d\(1)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(0),
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
      D => \^d\(1),
      Q => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\,
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
      I1 => axi_byte_div_curr_awsize(0),
      I2 => s_axi_aresetn,
      I3 => axi_wlast_d1,
      I4 => p_11_in,
      I5 => curr_narrow_burst_en,
      O => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awlen(7),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(3),
      I5 => s_axi_awlen(2),
      O => O9
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
      I0 => \^wr_data_sng_sm_cs\(1),
      I1 => axi_wdata_full_reg,
      I2 => s_axi_wvalid,
      I3 => p_1_out,
      I4 => \^wr_data_sng_sm_cs\(0),
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
      I3 => \^wr_data_sng_sm_cs\(1),
      I4 => \^wr_data_sng_sm_cs\(0),
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
      I0 => n_0_axi_bvalid_int_i_3,
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
      I3 => \^wr_data_sng_sm_cs\(1),
      I4 => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\,
      I5 => \^wr_data_sng_sm_cs\(0),
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
      I3 => \^wr_data_sng_sm_cs\(0),
      I4 => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\,
      I5 => \^wr_data_sng_sm_cs\(1),
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
      I3 => \^wr_data_sng_sm_cs\(1),
      I4 => s_axi_wvalid,
      I5 => \^wr_data_sng_sm_cs\(0),
      O => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\,
      Q => \^wr_data_sng_sm_cs\(0),
      R => I1
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\,
      Q => \^wr_data_sng_sm_cs\(1),
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
\GEN_WRDATA[31].bram_wrdata_int[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CC4"
    )
    port map (
      I0 => axi_wdata_full_reg,
      I1 => s_axi_wvalid,
      I2 => \^wr_data_sng_sm_cs\(0),
      I3 => \^wr_data_sng_sm_cs\(1),
      O => wrdata_reg_ld
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
\GEN_WR_NO_ECC.bram_we_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F33B0000FFFFFFFF"
    )
    port map (
      I0 => axi_wdata_full_reg,
      I1 => s_axi_wvalid,
      I2 => \^wr_data_sng_sm_cs\(0),
      I3 => \^wr_data_sng_sm_cs\(1),
      I4 => clr_bram_we,
      I5 => s_axi_aresetn,
      O => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
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
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
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
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
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
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
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
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
    );
I_WRAP_BRST: entity work.sg_bram_controller_wrap_brst
    port map (
      E(0) => E(0),
      I1 => \^wr_data_sng_sm_cs\(0),
      I11 => I11,
      I12 => I12,
      I2 => \^wr_data_sng_sm_cs\(1),
      I3 => \^aw_active_d1\,
      I4 => I1,
      I5 => I5,
      I6 => I6,
      I7 => I7,
      O1 => n_0_I_WRAP_BRST,
      O12(8 downto 0) => O12(8 downto 0),
      O13 => O13,
      O14 => O14,
      O16 => O16,
      O2 => n_10_I_WRAP_BRST,
      ar_active_re => ar_active_re,
      axi_byte_div_curr_awsize(0) => axi_byte_div_curr_awsize(0),
      curr_narrow_burst => curr_narrow_burst,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      narrow_addr_int(1 downto 0) => narrow_addr_int(1 downto 0),
      narrow_bram_addr_inc => narrow_bram_addr_inc,
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(10 downto 2),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
\arb_sm_cs[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => \^wr_data_sng_sm_cs\(1),
      I1 => \^wr_data_sng_sm_cs\(0),
      I2 => I8(0),
      O => O8
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
      O => O15
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_1_BID_FIFO,
      Q => \^s_axi_bid\(0),
      R => I1
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAA0A"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => n_0_axi_bvalid_int_i_2,
      I2 => n_0_axi_bvalid_int_i_3,
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => AW2Arb_BVALID_Cnt(0),
      I5 => AW2Arb_BVALID_Cnt(1),
      O => n_0_axi_bvalid_int_i_1
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
      I4 => \^o1\,
      O => n_0_axi_bvalid_int_i_2
    );
axi_bvalid_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
    port map (
      I0 => \^wr_data_sng_sm_cs\(0),
      I1 => s_axi_wlast,
      I2 => \^wr_data_sng_sm_cs\(1),
      I3 => s_axi_wvalid,
      I4 => n_0_axi_bvalid_int_i_4,
      O => n_0_axi_bvalid_int_i_3
    );
axi_bvalid_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFCFFF5FFFFFF"
    )
    port map (
      I0 => s_axi_wlast,
      I1 => axi_wr_burst,
      I2 => \^wr_data_sng_sm_cs\(1),
      I3 => p_1_out,
      I4 => s_axi_wvalid,
      I5 => axi_wdata_full_reg,
      O => n_0_axi_bvalid_int_i_4
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
      I1 => \^wr_data_sng_sm_cs\(0),
      I2 => s_axi_wvalid,
      I3 => p_1_out,
      I4 => \^wr_data_sng_sm_cs\(1),
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
      I1 => \^wr_data_sng_sm_cs\(0),
      I2 => p_1_out,
      I3 => s_axi_wvalid,
      I4 => axi_wdata_full_reg,
      I5 => \^wr_data_sng_sm_cs\(1),
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
      I0 => n_0_axi_bvalid_int_i_3,
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
      I0 => n_0_axi_bvalid_int_i_3,
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
      I0 => n_0_axi_bvalid_int_i_3,
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
      I1 => E(0),
      I2 => s_axi_awburst(0),
      I3 => s_axi_awburst(1),
      I4 => s_axi_aresetn,
      I5 => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_3\,
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
      I1 => E(0),
      I2 => s_axi_awburst(0),
      I3 => s_axi_awburst(1),
      I4 => s_axi_aresetn,
      I5 => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_3\,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sg_bram_controller_full_axi is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O7 : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sg_bram_controller_full_axi : entity is "full_axi";
end sg_bram_controller_full_axi;

architecture STRUCTURE of sg_bram_controller_full_axi is
  signal \^o1\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \^o6\ : STD_LOGIC;
  signal WrChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal ar_active_d1 : STD_LOGIC;
  signal ar_active_re : STD_LOGIC;
  signal arb_sm_cs : STD_LOGIC_VECTOR ( 1 to 1 );
  signal aw_active_d1 : STD_LOGIC;
  signal aw_active_re : STD_LOGIC;
  signal axi_rd_burst0 : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal curr_narrow_burst_en : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_2\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_4\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_2\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1\ : STD_LOGIC;
  signal \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_2\ : STD_LOGIC;
  signal \n_10_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal \n_11_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal \n_18_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal \n_23_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal n_33_I_RD_CHNL : STD_LOGIC;
  signal n_36_I_WR_CHNL : STD_LOGIC;
  signal n_37_I_WR_CHNL : STD_LOGIC;
  signal n_38_I_RD_CHNL : STD_LOGIC;
  signal n_39_I_RD_CHNL : STD_LOGIC;
  signal n_40_I_WR_CHNL : STD_LOGIC;
  signal n_41_I_WR_CHNL : STD_LOGIC;
  signal n_42_I_RD_CHNL : STD_LOGIC;
  signal n_42_I_WR_CHNL : STD_LOGIC;
  signal n_43_I_RD_CHNL : STD_LOGIC;
  signal n_44_I_RD_CHNL : STD_LOGIC;
  signal n_45_I_WR_CHNL : STD_LOGIC;
  signal n_46_I_RD_CHNL : STD_LOGIC;
  signal n_46_I_WR_CHNL : STD_LOGIC;
  signal n_47_I_RD_CHNL : STD_LOGIC;
  signal n_47_I_WR_CHNL : STD_LOGIC;
  signal n_48_I_RD_CHNL : STD_LOGIC;
  signal n_48_I_WR_CHNL : STD_LOGIC;
  signal n_49_I_RD_CHNL : STD_LOGIC;
  signal n_49_I_WR_CHNL : STD_LOGIC;
  signal \n_4_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal n_50_I_RD_CHNL : STD_LOGIC;
  signal n_51_I_RD_CHNL : STD_LOGIC;
  signal n_52_I_RD_CHNL : STD_LOGIC;
  signal n_53_I_RD_CHNL : STD_LOGIC;
  signal n_54_I_RD_CHNL : STD_LOGIC;
  signal n_55_I_RD_CHNL : STD_LOGIC;
  signal n_56_I_RD_CHNL : STD_LOGIC;
  signal n_57_I_RD_CHNL : STD_LOGIC;
  signal n_58_I_RD_CHNL : STD_LOGIC;
  signal n_59_I_RD_CHNL : STD_LOGIC;
  signal n_59_I_WR_CHNL : STD_LOGIC;
  signal n_60_I_WR_CHNL : STD_LOGIC;
  signal n_61_I_WR_CHNL : STD_LOGIC;
  signal n_62_I_WR_CHNL : STD_LOGIC;
  signal \n_6_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal \n_7_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal \n_8_GEN_ARB.I_SNG_PORT\ : STD_LOGIC;
  signal narrow_burst_cnt_ld_mod : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_1_out_0 : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_2_out_1 : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_6_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_7_in : STD_LOGIC;
  signal wr_data_sng_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[5]_i_2\ : label is "soft_lutpair64";
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
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_2\,
      I1 => \^bram_addr_a\(4),
      I2 => n_56_I_RD_CHNL,
      I3 => n_49_I_WR_CHNL,
      I4 => n_60_I_WR_CHNL,
      I5 => \^bram_addr_a\(5),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \^bram_addr_a\(3),
      I1 => \^bram_addr_a\(1),
      I2 => \^o4\,
      I3 => \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_2\,
      I4 => \^bram_addr_a\(0),
      I5 => \^bram_addr_a\(2),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_2\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_4\,
      I1 => \^bram_addr_a\(5),
      I2 => n_57_I_RD_CHNL,
      I3 => n_49_I_WR_CHNL,
      I4 => n_60_I_WR_CHNL,
      I5 => \^bram_addr_a\(6),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \^bram_addr_a\(4),
      I1 => \^bram_addr_a\(2),
      I2 => n_62_I_WR_CHNL,
      I3 => \^bram_addr_a\(1),
      I4 => \^bram_addr_a\(3),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_4\
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3ACA"
    )
    port map (
      I0 => n_47_I_RD_CHNL,
      I1 => n_49_I_WR_CHNL,
      I2 => n_60_I_WR_CHNL,
      I3 => \^o3\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FCCA0CC"
    )
    port map (
      I0 => \^o3\,
      I1 => n_49_I_RD_CHNL,
      I2 => n_49_I_WR_CHNL,
      I3 => n_60_I_WR_CHNL,
      I4 => \^o5\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \^o3\,
      I1 => \^o5\,
      I2 => n_50_I_RD_CHNL,
      I3 => n_49_I_WR_CHNL,
      I4 => n_60_I_WR_CHNL,
      I5 => \^o4\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_2\,
      I1 => \^o4\,
      I2 => n_51_I_RD_CHNL,
      I3 => n_49_I_WR_CHNL,
      I4 => n_60_I_WR_CHNL,
      I5 => \^bram_addr_a\(0),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o3\,
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_2\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FCCA0CC"
    )
    port map (
      I0 => n_62_I_WR_CHNL,
      I1 => n_52_I_RD_CHNL,
      I2 => n_49_I_WR_CHNL,
      I3 => n_60_I_WR_CHNL,
      I4 => \^bram_addr_a\(1),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => n_62_I_WR_CHNL,
      I1 => \^bram_addr_a\(1),
      I2 => n_53_I_RD_CHNL,
      I3 => n_49_I_WR_CHNL,
      I4 => n_60_I_WR_CHNL,
      I5 => \^bram_addr_a\(2),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FCCA0CC"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_2\,
      I1 => n_54_I_RD_CHNL,
      I2 => n_49_I_WR_CHNL,
      I3 => n_60_I_WR_CHNL,
      I4 => \^bram_addr_a\(3),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_2\,
      I1 => \^bram_addr_a\(3),
      I2 => n_55_I_RD_CHNL,
      I3 => n_49_I_WR_CHNL,
      I4 => n_60_I_WR_CHNL,
      I5 => \^bram_addr_a\(4),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \^bram_addr_a\(2),
      I1 => \^bram_addr_a\(0),
      I2 => \^o5\,
      I3 => \^o3\,
      I4 => \^o4\,
      I5 => \^bram_addr_a\(1),
      O => \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_2\
    );
\ADDR_SNG_PORT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1\,
      Q => \^bram_addr_a\(5),
      R => n_45_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2\,
      Q => \^bram_addr_a\(6),
      R => n_45_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[2]_i_1\,
      Q => \^o3\,
      R => n_45_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[3]_i_1\,
      Q => \^o5\,
      R => n_45_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[4]_i_1\,
      Q => \^o4\,
      R => n_45_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1\,
      Q => \^bram_addr_a\(0),
      R => n_45_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1\,
      Q => \^bram_addr_a\(1),
      R => n_45_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1\,
      Q => \^bram_addr_a\(2),
      R => n_45_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1\,
      Q => \^bram_addr_a\(3),
      R => n_45_I_WR_CHNL
    );
\ADDR_SNG_PORT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1\,
      Q => \^bram_addr_a\(4),
      R => n_45_I_WR_CHNL
    );
\GEN_ARB.I_SNG_PORT\: entity work.sg_bram_controller_sng_port_arb
    port map (
      I1 => \^o6\,
      I10 => n_39_I_RD_CHNL,
      I11 => n_46_I_RD_CHNL,
      I12 => n_43_I_RD_CHNL,
      I13 => n_44_I_RD_CHNL,
      I14 => n_61_I_WR_CHNL,
      I15 => \^o1\,
      I16 => n_47_I_WR_CHNL,
      I17 => n_59_I_RD_CHNL,
      I18 => n_46_I_WR_CHNL,
      I2 => n_40_I_WR_CHNL,
      I3 => n_36_I_WR_CHNL,
      I4 => n_37_I_WR_CHNL,
      I5 => n_48_I_WR_CHNL,
      I6 => n_41_I_WR_CHNL,
      I7 => n_42_I_WR_CHNL,
      I8 => n_42_I_RD_CHNL,
      I9 => n_38_I_RD_CHNL,
      O1 => \n_4_GEN_ARB.I_SNG_PORT\,
      O2 => \n_6_GEN_ARB.I_SNG_PORT\,
      O3 => \n_7_GEN_ARB.I_SNG_PORT\,
      O4 => \n_8_GEN_ARB.I_SNG_PORT\,
      O5 => \n_10_GEN_ARB.I_SNG_PORT\,
      O6 => \n_11_GEN_ARB.I_SNG_PORT\,
      O7(0) => arb_sm_cs(1),
      O8 => \n_18_GEN_ARB.I_SNG_PORT\,
      O9 => \n_23_GEN_ARB.I_SNG_PORT\,
      Q(3 downto 0) => p_6_in(3 downto 0),
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      axi_rd_burst0 => axi_rd_burst0,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      curr_narrow_burst_en => curr_narrow_burst_en,
      narrow_burst_cnt_ld_mod(1 downto 0) => narrow_burst_cnt_ld_mod(1 downto 0),
      narrow_burst_cnt_ld_reg(1 downto 0) => narrow_burst_cnt_ld_reg(1 downto 0),
      p_0_out => p_0_out,
      p_1_out => p_1_out,
      p_1_out_0 => p_1_out_0,
      p_2_out => p_2_out_1,
      p_2_out_1 => p_2_out,
      p_3_out => p_3_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(0) => s_axi_arlen(0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(1 downto 0) => s_axi_awlen(5 downto 4),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rready => s_axi_rready,
      wr_data_sng_sm_cs(1 downto 0) => wr_data_sng_sm_cs(1 downto 0)
    );
I_RD_CHNL: entity work.sg_bram_controller_rd_chnl
    port map (
      D(1 downto 0) => narrow_burst_cnt_ld_mod(1 downto 0),
      I1 => \n_23_GEN_ARB.I_SNG_PORT\,
      I10 => \^o3\,
      I11 => \^o4\,
      I2 => \n_8_GEN_ARB.I_SNG_PORT\,
      I3 => \n_11_GEN_ARB.I_SNG_PORT\,
      I4 => \n_10_GEN_ARB.I_SNG_PORT\,
      I5 => n_59_I_WR_CHNL,
      I6(8 downto 0) => WrChnl_BRAM_Addr_Ld(9 downto 1),
      I7 => \n_18_GEN_ARB.I_SNG_PORT\,
      I8 => \^bram_addr_a\(0),
      I9 => \^o5\,
      O1 => \^o6\,
      O10 => n_46_I_RD_CHNL,
      O11 => n_47_I_RD_CHNL,
      O12 => n_48_I_RD_CHNL,
      O13 => n_49_I_RD_CHNL,
      O14 => n_50_I_RD_CHNL,
      O15 => n_51_I_RD_CHNL,
      O16 => n_52_I_RD_CHNL,
      O17 => n_53_I_RD_CHNL,
      O18 => n_54_I_RD_CHNL,
      O19 => n_55_I_RD_CHNL,
      O2 => n_33_I_RD_CHNL,
      O20 => n_56_I_RD_CHNL,
      O21 => n_57_I_RD_CHNL,
      O22 => n_58_I_RD_CHNL,
      O23 => n_59_I_RD_CHNL,
      O3 => \^o1\,
      O4 => n_38_I_RD_CHNL,
      O5 => n_39_I_RD_CHNL,
      O6 => n_42_I_RD_CHNL,
      O7 => n_43_I_RD_CHNL,
      O8 => n_44_I_RD_CHNL,
      O9 => O2,
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      axi_rd_burst0 => axi_rd_burst0,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      p_0_out => p_0_out,
      p_1_out => p_1_out_0,
      p_2_out => p_2_out,
      p_7_in => p_7_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_awaddr(0) => s_axi_awaddr(2),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready
    );
I_WR_CHNL: entity work.sg_bram_controller_wr_chnl
    port map (
      D(1 downto 0) => narrow_burst_cnt_ld_reg(1 downto 0),
      E(0) => aw_active_re,
      I1 => \^o6\,
      I10 => n_58_I_RD_CHNL,
      I11 => n_48_I_RD_CHNL,
      I12 => \^bram_addr_a\(0),
      I2 => \n_4_GEN_ARB.I_SNG_PORT\,
      I3 => \n_7_GEN_ARB.I_SNG_PORT\,
      I4 => \n_6_GEN_ARB.I_SNG_PORT\,
      I5 => \^o3\,
      I6 => \^o4\,
      I7 => \^o5\,
      I8(0) => arb_sm_cs(1),
      I9 => n_33_I_RD_CHNL,
      O1 => O7,
      O10 => n_48_I_WR_CHNL,
      O11 => n_49_I_WR_CHNL,
      O12(8 downto 0) => WrChnl_BRAM_Addr_Ld(9 downto 1),
      O13 => n_59_I_WR_CHNL,
      O14 => n_60_I_WR_CHNL,
      O15 => n_61_I_WR_CHNL,
      O16 => n_62_I_WR_CHNL,
      O2 => n_36_I_WR_CHNL,
      O3 => n_37_I_WR_CHNL,
      O4 => n_40_I_WR_CHNL,
      O5 => n_41_I_WR_CHNL,
      O6 => n_42_I_WR_CHNL,
      O7 => n_45_I_WR_CHNL,
      O8 => n_46_I_WR_CHNL,
      O9 => n_47_I_WR_CHNL,
      Q(3 downto 0) => p_6_in(3 downto 0),
      ar_active_re => ar_active_re,
      aw_active_d1 => aw_active_d1,
      bram_en_a => bram_en_a,
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      curr_narrow_burst_en => curr_narrow_burst_en,
      p_0_out => p_0_out,
      p_1_out => p_1_out,
      p_2_out => p_2_out_1,
      p_3_out => p_3_out,
      p_7_in => p_7_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(10 downto 2) => s_axi_awaddr(11 downto 3),
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      wr_data_sng_sm_cs(1 downto 0) => wr_data_sng_sm_cs(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sg_bram_controller_axi_bram_ctrl_top is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O7 : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sg_bram_controller_axi_bram_ctrl_top : entity is "axi_bram_ctrl_top";
end sg_bram_controller_axi_bram_ctrl_top;

architecture STRUCTURE of sg_bram_controller_axi_bram_ctrl_top is
begin
\GEN_AXI4.I_FULL_AXI\: entity work.sg_bram_controller_full_axi
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
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sg_bram_controller_axi_bram_ctrl__parameterized0\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is "axi_bram_ctrl";
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is "EXTERNAL";
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 1024;
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 10;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 12;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is "virtex7";
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_ECC : integer;
  attribute C_ECC of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \sg_bram_controller_axi_bram_ctrl__parameterized0\ : entity is "yes";
end \sg_bram_controller_axi_bram_ctrl__parameterized0\;

architecture STRUCTURE of \sg_bram_controller_axi_bram_ctrl__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal \^s_axi_aclk\ : STD_LOGIC;
begin
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr_a(11 downto 2) <= \^bram_addr_a\(11 downto 2);
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
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
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
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
\gext_inst.abcv4_0_ext_inst\: entity work.sg_bram_controller_axi_bram_ctrl_top
    port map (
      O1 => s_axi_rlast,
      O2 => s_axi_rvalid,
      O3 => \^bram_addr_a\(2),
      O4 => \^bram_addr_a\(4),
      O5 => \^bram_addr_a\(3),
      O6 => bram_rst_a,
      O7 => s_axi_bvalid,
      bram_addr_a(6 downto 0) => \^bram_addr_a\(11 downto 5),
      bram_en_a => bram_en_a,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sg_bram_controller is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sg_bram_controller : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of sg_bram_controller : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of sg_bram_controller : entity is "axi_bram_ctrl,Vivado 2014.3.1";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of sg_bram_controller : entity is "sg_bram_controller,axi_bram_ctrl,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of sg_bram_controller : entity is "sg_bram_controller,axi_bram_ctrl,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_bram_ctrl,x_ipVersion=4.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_BRAM_INST_MODE=EXTERNAL,C_MEMORY_DEPTH=1024,C_BRAM_ADDR_WIDTH=10,C_S_AXI_ADDR_WIDTH=12,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4,C_S_AXI_SUPPORTS_NARROW_BURST=1,C_SINGLE_PORT_BRAM=1,C_FAMILY=virtex7,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32,C_ECC=0,C_ECC_TYPE=0,C_FAULT_INJECT=0,C_ECC_ONOFF_RESET_VALUE=0}";
end sg_bram_controller;

architecture STRUCTURE of sg_bram_controller is
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
  signal NLW_U0_bram_addr_b_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_bram_we_b_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_bram_wrdata_b_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 12;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
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
U0: entity work.\sg_bram_controller_axi_bram_ctrl__parameterized0\
    port map (
      bram_addr_a(11 downto 0) => bram_addr_a(11 downto 0),
      bram_addr_b(11 downto 0) => NLW_U0_bram_addr_b_UNCONNECTED(11 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => NLW_U0_bram_clk_b_UNCONNECTED,
      bram_en_a => bram_en_a,
      bram_en_b => NLW_U0_bram_en_b_UNCONNECTED,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
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
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_we_b(3 downto 0) => NLW_U0_bram_we_b_UNCONNECTED(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      bram_wrdata_b(31 downto 0) => NLW_U0_bram_wrdata_b_UNCONNECTED(31 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
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
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
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
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
