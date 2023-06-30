-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Jun 28 21:00:05 2023
-- Host        : ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pdi_0_0_sim_netlist.vhdl
-- Design      : design_1_pdi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay is
  port (
    ram_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    pixel_addr_reg : in STD_LOGIC_VECTOR ( 14 downto 0 );
    clk : in STD_LOGIC;
    ram_we : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay is
  signal \int[0][14]_i_1_n_0\ : STD_LOGIC;
begin
\int[0][14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_we,
      O => \int[0][14]_i_1_n_0\
    );
\int_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(0),
      Q => ram_addr(0),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(10),
      Q => ram_addr(10),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(11),
      Q => ram_addr(11),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(12),
      Q => ram_addr(12),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(13),
      Q => ram_addr(13),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(14),
      Q => ram_addr(14),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(1),
      Q => ram_addr(1),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(2),
      Q => ram_addr(2),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(3),
      Q => ram_addr(3),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(4),
      Q => ram_addr(4),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(5),
      Q => ram_addr(5),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(6),
      Q => ram_addr(6),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(7),
      Q => ram_addr(7),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(8),
      Q => ram_addr(8),
      R => \int[0][14]_i_1_n_0\
    );
\int_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_addr_reg(9),
      Q => ram_addr(9),
      R => \int[0][14]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pdi is
  port (
    ram_we : out STD_LOGIC;
    ram_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rom_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    start : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pdi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pdi is
  signal \FSM_sequential_current_s[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_s[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_s[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_s[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_s[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_s[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_s[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_s_reg_n_0_[1]\ : STD_LOGIC;
  signal current_s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal next_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pixel_addr[0]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_addr[0]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_addr[0]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_addr[0]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_addr[0]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_addr[12]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_addr[12]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_addr[12]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_addr[4]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_addr[4]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_addr[8]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_addr[8]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_addr[8]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_addr[8]_i_5_n_0\ : STD_LOGIC;
  signal pixel_addr_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \pixel_addr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_addr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_addr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_addr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_addr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_addr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_addr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_addr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_addr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_addr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_addr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_addr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_addr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_addr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_addr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_addr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_addr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_addr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_addr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_addr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_addr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_addr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_addr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_addr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_addr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^ram_we\ : STD_LOGIC;
  signal ram_we_reg_i_1_n_0 : STD_LOGIC;
  signal \NLW_pixel_addr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pixel_addr_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_s[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_current_s[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_current_s[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_current_s[1]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_s[1]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_current_s[1]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_current_s[1]_i_7\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_s_reg[0]\ : label is "wait_1:01,wait_0:10,exec:11,init:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_s_reg[1]\ : label is "wait_1:01,wait_0:10,exec:11,init:00";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pixel_addr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pixel_addr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pixel_addr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pixel_addr_reg[8]_i_1\ : label is 11;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ram_we_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ram_we_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of ram_we_reg_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rom_addr[10]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rom_addr[11]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rom_addr[12]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rom_addr[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rom_addr[14]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rom_addr[1]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rom_addr[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rom_addr[3]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rom_addr[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rom_addr[5]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rom_addr[6]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rom_addr[7]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rom_addr[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rom_addr[9]_INST_0\ : label is "soft_lutpair0";
begin
  ram_we <= \^ram_we\;
\FSM_sequential_current_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFB"
    )
        port map (
      I0 => \FSM_sequential_current_s[1]_i_2_n_0\,
      I1 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_6_n_0\,
      I5 => \FSM_sequential_current_s[0]_i_2_n_0\,
      O => next_s(0)
    );
\FSM_sequential_current_s[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => start,
      I1 => current_s(0),
      I2 => \FSM_sequential_current_s_reg_n_0_[1]\,
      O => \FSM_sequential_current_s[0]_i_2_n_0\
    );
\FSM_sequential_current_s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFB"
    )
        port map (
      I0 => \FSM_sequential_current_s[1]_i_2_n_0\,
      I1 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_6_n_0\,
      I5 => \FSM_sequential_current_s[1]_i_7_n_0\,
      O => next_s(1)
    );
\FSM_sequential_current_s[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pixel_addr_reg(2),
      I1 => pixel_addr_reg(0),
      I2 => pixel_addr_reg(13),
      I3 => pixel_addr_reg(10),
      O => \FSM_sequential_current_s[1]_i_2_n_0\
    );
\FSM_sequential_current_s[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => pixel_addr_reg(12),
      I1 => pixel_addr_reg(1),
      I2 => pixel_addr_reg(11),
      I3 => pixel_addr_reg(7),
      O => \FSM_sequential_current_s[1]_i_3_n_0\
    );
\FSM_sequential_current_s[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pixel_addr_reg(9),
      I1 => pixel_addr_reg(6),
      I2 => pixel_addr_reg(14),
      I3 => pixel_addr_reg(8),
      O => \FSM_sequential_current_s[1]_i_4_n_0\
    );
\FSM_sequential_current_s[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => pixel_addr_reg(4),
      I1 => pixel_addr_reg(5),
      I2 => pixel_addr_reg(3),
      O => \FSM_sequential_current_s[1]_i_5_n_0\
    );
\FSM_sequential_current_s[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^ram_we\,
      I1 => current_s(0),
      I2 => \FSM_sequential_current_s_reg_n_0_[1]\,
      O => \FSM_sequential_current_s[1]_i_6_n_0\
    );
\FSM_sequential_current_s[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \FSM_sequential_current_s_reg_n_0_[1]\,
      I1 => start,
      I2 => current_s(0),
      O => \FSM_sequential_current_s[1]_i_7_n_0\
    );
\FSM_sequential_current_s_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => next_s(0),
      Q => current_s(0)
    );
\FSM_sequential_current_s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => next_s(1),
      Q => \FSM_sequential_current_s_reg_n_0_[1]\
    );
addr_dly: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay
     port map (
      clk => clk,
      pixel_addr_reg(14 downto 0) => pixel_addr_reg(14 downto 0),
      ram_addr(14 downto 0) => ram_addr(14 downto 0),
      ram_we => \^ram_we\
    );
\dout[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC88C"
    )
        port map (
      I0 => op(3),
      I1 => din(0),
      I2 => op(0),
      I3 => op(1),
      I4 => op(2),
      O => dout(0)
    );
\dout[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(0),
      I2 => op(1),
      I3 => din(10),
      I4 => op(2),
      O => dout(10)
    );
\dout[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(0),
      I2 => op(1),
      I3 => din(11),
      I4 => op(2),
      O => dout(11)
    );
\dout[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(0),
      I2 => op(1),
      I3 => din(12),
      I4 => op(2),
      O => dout(12)
    );
\dout[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(0),
      I2 => op(1),
      I3 => din(13),
      I4 => op(2),
      O => dout(13)
    );
\dout[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(0),
      I2 => op(1),
      I3 => din(14),
      I4 => op(2),
      O => dout(14)
    );
\dout[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(0),
      I2 => op(1),
      I3 => din(15),
      I4 => op(2),
      O => dout(15)
    );
\dout[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(1),
      I2 => op(0),
      I3 => din(16),
      I4 => op(2),
      O => dout(16)
    );
\dout[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(1),
      I2 => op(0),
      I3 => din(17),
      I4 => op(2),
      O => dout(17)
    );
\dout[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(1),
      I2 => op(0),
      I3 => din(18),
      I4 => op(2),
      O => dout(18)
    );
\dout[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(1),
      I2 => op(0),
      I3 => din(19),
      I4 => op(2),
      O => dout(19)
    );
\dout[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC88C"
    )
        port map (
      I0 => op(3),
      I1 => din(1),
      I2 => op(0),
      I3 => op(1),
      I4 => op(2),
      O => dout(1)
    );
\dout[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(1),
      I2 => op(0),
      I3 => din(20),
      I4 => op(2),
      O => dout(20)
    );
\dout[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(1),
      I2 => op(0),
      I3 => din(21),
      I4 => op(2),
      O => dout(21)
    );
\dout[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(1),
      I2 => op(0),
      I3 => din(22),
      I4 => op(2),
      O => dout(22)
    );
\dout[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(1),
      I2 => op(0),
      I3 => din(23),
      I4 => op(2),
      O => dout(23)
    );
\dout[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC88C"
    )
        port map (
      I0 => op(3),
      I1 => din(2),
      I2 => op(0),
      I3 => op(1),
      I4 => op(2),
      O => dout(2)
    );
\dout[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC88C"
    )
        port map (
      I0 => op(3),
      I1 => din(3),
      I2 => op(0),
      I3 => op(1),
      I4 => op(2),
      O => dout(3)
    );
\dout[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC88C"
    )
        port map (
      I0 => op(3),
      I1 => din(4),
      I2 => op(0),
      I3 => op(1),
      I4 => op(2),
      O => dout(4)
    );
\dout[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC88C"
    )
        port map (
      I0 => op(3),
      I1 => din(5),
      I2 => op(0),
      I3 => op(1),
      I4 => op(2),
      O => dout(5)
    );
\dout[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC88C"
    )
        port map (
      I0 => op(3),
      I1 => din(6),
      I2 => op(0),
      I3 => op(1),
      I4 => op(2),
      O => dout(6)
    );
\dout[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC88C"
    )
        port map (
      I0 => op(3),
      I1 => din(7),
      I2 => op(0),
      I3 => op(1),
      I4 => op(2),
      O => dout(7)
    );
\dout[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(0),
      I2 => op(1),
      I3 => din(8),
      I4 => op(2),
      O => dout(8)
    );
\dout[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FB00"
    )
        port map (
      I0 => op(3),
      I1 => op(0),
      I2 => op(1),
      I3 => din(9),
      I4 => op(2),
      O => dout(9)
    );
\pixel_addr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(0),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[0]_i_2_n_0\
    );
\pixel_addr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAAAA"
    )
        port map (
      I0 => pixel_addr_reg(3),
      I1 => pixel_addr_reg(5),
      I2 => pixel_addr_reg(4),
      I3 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I5 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[0]_i_3_n_0\
    );
\pixel_addr[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(2),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[0]_i_4_n_0\
    );
\pixel_addr[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(1),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[0]_i_5_n_0\
    );
\pixel_addr[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555455"
    )
        port map (
      I0 => pixel_addr_reg(0),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[0]_i_6_n_0\
    );
\pixel_addr[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(14),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[12]_i_2_n_0\
    );
\pixel_addr[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(13),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[12]_i_3_n_0\
    );
\pixel_addr[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(12),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[12]_i_4_n_0\
    );
\pixel_addr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(7),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[4]_i_2_n_0\
    );
\pixel_addr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(6),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[4]_i_3_n_0\
    );
\pixel_addr[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCC4CCCCC"
    )
        port map (
      I0 => pixel_addr_reg(3),
      I1 => pixel_addr_reg(5),
      I2 => pixel_addr_reg(4),
      I3 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I5 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[4]_i_4_n_0\
    );
\pixel_addr[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F070F0F0"
    )
        port map (
      I0 => pixel_addr_reg(3),
      I1 => pixel_addr_reg(5),
      I2 => pixel_addr_reg(4),
      I3 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I5 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[4]_i_5_n_0\
    );
\pixel_addr[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(11),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[8]_i_2_n_0\
    );
\pixel_addr[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(10),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[8]_i_3_n_0\
    );
\pixel_addr[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(9),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[8]_i_4_n_0\
    );
\pixel_addr[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => pixel_addr_reg(8),
      I1 => \FSM_sequential_current_s[1]_i_5_n_0\,
      I2 => \FSM_sequential_current_s[1]_i_4_n_0\,
      I3 => \FSM_sequential_current_s[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_s[1]_i_2_n_0\,
      O => \pixel_addr[8]_i_5_n_0\
    );
\pixel_addr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[0]_i_1_n_7\,
      Q => pixel_addr_reg(0)
    );
\pixel_addr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pixel_addr_reg[0]_i_1_n_0\,
      CO(2) => \pixel_addr_reg[0]_i_1_n_1\,
      CO(1) => \pixel_addr_reg[0]_i_1_n_2\,
      CO(0) => \pixel_addr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pixel_addr[0]_i_2_n_0\,
      O(3) => \pixel_addr_reg[0]_i_1_n_4\,
      O(2) => \pixel_addr_reg[0]_i_1_n_5\,
      O(1) => \pixel_addr_reg[0]_i_1_n_6\,
      O(0) => \pixel_addr_reg[0]_i_1_n_7\,
      S(3) => \pixel_addr[0]_i_3_n_0\,
      S(2) => \pixel_addr[0]_i_4_n_0\,
      S(1) => \pixel_addr[0]_i_5_n_0\,
      S(0) => \pixel_addr[0]_i_6_n_0\
    );
\pixel_addr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[8]_i_1_n_5\,
      Q => pixel_addr_reg(10)
    );
\pixel_addr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[8]_i_1_n_4\,
      Q => pixel_addr_reg(11)
    );
\pixel_addr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[12]_i_1_n_7\,
      Q => pixel_addr_reg(12)
    );
\pixel_addr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_addr_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_pixel_addr_reg[12]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pixel_addr_reg[12]_i_1_n_2\,
      CO(0) => \pixel_addr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_pixel_addr_reg[12]_i_1_O_UNCONNECTED\(3),
      O(2) => \pixel_addr_reg[12]_i_1_n_5\,
      O(1) => \pixel_addr_reg[12]_i_1_n_6\,
      O(0) => \pixel_addr_reg[12]_i_1_n_7\,
      S(3) => '0',
      S(2) => \pixel_addr[12]_i_2_n_0\,
      S(1) => \pixel_addr[12]_i_3_n_0\,
      S(0) => \pixel_addr[12]_i_4_n_0\
    );
\pixel_addr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[12]_i_1_n_6\,
      Q => pixel_addr_reg(13)
    );
\pixel_addr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[12]_i_1_n_5\,
      Q => pixel_addr_reg(14)
    );
\pixel_addr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[0]_i_1_n_6\,
      Q => pixel_addr_reg(1)
    );
\pixel_addr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[0]_i_1_n_5\,
      Q => pixel_addr_reg(2)
    );
\pixel_addr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[0]_i_1_n_4\,
      Q => pixel_addr_reg(3)
    );
\pixel_addr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[4]_i_1_n_7\,
      Q => pixel_addr_reg(4)
    );
\pixel_addr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_addr_reg[0]_i_1_n_0\,
      CO(3) => \pixel_addr_reg[4]_i_1_n_0\,
      CO(2) => \pixel_addr_reg[4]_i_1_n_1\,
      CO(1) => \pixel_addr_reg[4]_i_1_n_2\,
      CO(0) => \pixel_addr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_addr_reg[4]_i_1_n_4\,
      O(2) => \pixel_addr_reg[4]_i_1_n_5\,
      O(1) => \pixel_addr_reg[4]_i_1_n_6\,
      O(0) => \pixel_addr_reg[4]_i_1_n_7\,
      S(3) => \pixel_addr[4]_i_2_n_0\,
      S(2) => \pixel_addr[4]_i_3_n_0\,
      S(1) => \pixel_addr[4]_i_4_n_0\,
      S(0) => \pixel_addr[4]_i_5_n_0\
    );
\pixel_addr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[4]_i_1_n_6\,
      Q => pixel_addr_reg(5)
    );
\pixel_addr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[4]_i_1_n_5\,
      Q => pixel_addr_reg(6)
    );
\pixel_addr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[4]_i_1_n_4\,
      Q => pixel_addr_reg(7)
    );
\pixel_addr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[8]_i_1_n_7\,
      Q => pixel_addr_reg(8)
    );
\pixel_addr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_addr_reg[4]_i_1_n_0\,
      CO(3) => \pixel_addr_reg[8]_i_1_n_0\,
      CO(2) => \pixel_addr_reg[8]_i_1_n_1\,
      CO(1) => \pixel_addr_reg[8]_i_1_n_2\,
      CO(0) => \pixel_addr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_addr_reg[8]_i_1_n_4\,
      O(2) => \pixel_addr_reg[8]_i_1_n_5\,
      O(1) => \pixel_addr_reg[8]_i_1_n_6\,
      O(0) => \pixel_addr_reg[8]_i_1_n_7\,
      S(3) => \pixel_addr[8]_i_2_n_0\,
      S(2) => \pixel_addr[8]_i_3_n_0\,
      S(1) => \pixel_addr[8]_i_4_n_0\,
      S(0) => \pixel_addr[8]_i_5_n_0\
    );
\pixel_addr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^ram_we\,
      CLR => rst,
      D => \pixel_addr_reg[8]_i_1_n_6\,
      Q => pixel_addr_reg(9)
    );
ram_we_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_current_s_reg_n_0_[1]\,
      G => ram_we_reg_i_1_n_0,
      GE => '1',
      Q => \^ram_we\
    );
ram_we_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_s(0),
      I1 => \FSM_sequential_current_s_reg_n_0_[1]\,
      O => ram_we_reg_i_1_n_0
    );
\rom_addr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(0),
      O => rom_addr(0)
    );
\rom_addr[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(10),
      O => rom_addr(10)
    );
\rom_addr[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(11),
      O => rom_addr(11)
    );
\rom_addr[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(12),
      O => rom_addr(12)
    );
\rom_addr[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(13),
      O => rom_addr(13)
    );
\rom_addr[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(14),
      O => rom_addr(14)
    );
\rom_addr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(1),
      O => rom_addr(1)
    );
\rom_addr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(2),
      O => rom_addr(2)
    );
\rom_addr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(3),
      O => rom_addr(3)
    );
\rom_addr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(4),
      O => rom_addr(4)
    );
\rom_addr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(5),
      O => rom_addr(5)
    );
\rom_addr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(6),
      O => rom_addr(6)
    );
\rom_addr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(7),
      O => rom_addr(7)
    );
\rom_addr[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(8),
      O => rom_addr(8)
    );
\rom_addr[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ram_we\,
      I1 => pixel_addr_reg(9),
      O => rom_addr(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rom_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ram_we : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ram_addr : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_pdi_0_0,pdi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pdi,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pdi
     port map (
      clk => clk,
      din(23 downto 0) => din(23 downto 0),
      dout(23 downto 0) => dout(23 downto 0),
      op(3 downto 0) => op(3 downto 0),
      ram_addr(14 downto 0) => ram_addr(14 downto 0),
      ram_we => ram_we,
      rom_addr(14 downto 0) => rom_addr(14 downto 0),
      rst => rst,
      start => start
    );
end STRUCTURE;
