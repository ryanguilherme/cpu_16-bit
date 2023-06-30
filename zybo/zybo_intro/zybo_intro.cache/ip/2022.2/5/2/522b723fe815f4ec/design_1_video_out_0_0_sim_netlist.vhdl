-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Jun 28 20:58:49 2023
-- Host        : ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_video_out_0_0_sim_netlist.vhdl
-- Design      : design_1_video_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register is
  port (
    tmds_b_shift : out STD_LOGIC;
    clk250 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register is
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_bits : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \data_bits[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout_i_1__1_n_0\ : STD_LOGIC;
  signal \dout_i_2__1_n_0\ : STD_LOGIC;
  signal \dout_i_3__1_n_0\ : STD_LOGIC;
  signal \dout_i_4__1_n_0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[1]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[3]_i_1__1\ : label is "soft_lutpair0";
begin
\count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \p_0_in__1\(0)
    );
\count[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF0"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(1),
      I3 => count_reg(0),
      O => \p_0_in__1\(1)
    );
\count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \p_0_in__1\(2)
    );
\count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A8A"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \p_0_in__1\(3)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \p_0_in__1\(0),
      Q => count_reg(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => count_reg(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \p_0_in__1\(2),
      Q => count_reg(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \p_0_in__1\(3),
      Q => count_reg(3),
      R => '0'
    );
\data_bits[9]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => \data_bits[9]_i_1__1_n_0\
    );
\data_bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(0),
      Q => data_bits(0),
      R => '0'
    );
\data_bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(1),
      Q => data_bits(1),
      R => '0'
    );
\data_bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(2),
      Q => data_bits(2),
      R => '0'
    );
\data_bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(3),
      Q => data_bits(3),
      R => '0'
    );
\data_bits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(4),
      Q => data_bits(4),
      R => '0'
    );
\data_bits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(5),
      Q => data_bits(5),
      R => '0'
    );
\data_bits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(6),
      Q => data_bits(6),
      R => '0'
    );
\data_bits_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(7),
      Q => data_bits(7),
      R => '0'
    );
\data_bits_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(8),
      Q => data_bits(8),
      R => '0'
    );
\data_bits_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__1_n_0\,
      D => D(9),
      Q => data_bits(9),
      R => '0'
    );
\dout_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \dout_i_2__1_n_0\,
      I1 => count_reg(3),
      I2 => \dout_i_3__1_n_0\,
      I3 => count_reg(2),
      I4 => \dout_i_4__1_n_0\,
      O => \dout_i_1__1_n_0\
    );
\dout_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => count_reg(2),
      I1 => data_bits(8),
      I2 => count_reg(1),
      I3 => data_bits(0),
      I4 => count_reg(0),
      I5 => data_bits(9),
      O => \dout_i_2__1_n_0\
    );
\dout_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_bits(8),
      I1 => data_bits(7),
      I2 => count_reg(1),
      I3 => data_bits(6),
      I4 => count_reg(0),
      I5 => data_bits(5),
      O => \dout_i_3__1_n_0\
    );
\dout_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_bits(4),
      I1 => data_bits(3),
      I2 => count_reg(1),
      I3 => data_bits(2),
      I4 => count_reg(0),
      I5 => data_bits(1),
      O => \dout_i_4__1_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => '1',
      D => \dout_i_1__1_n_0\,
      Q => tmds_b_shift,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0 is
  port (
    tmds_g_shift : out STD_LOGIC;
    clk250 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0 : entity is "shift_register";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0 is
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_bits : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \data_bits[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout_i_1__0_n_0\ : STD_LOGIC;
  signal \dout_i_2__0_n_0\ : STD_LOGIC;
  signal \dout_i_3__0_n_0\ : STD_LOGIC;
  signal \dout_i_4__0_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair2";
begin
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \p_0_in__0\(0)
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF0"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(1),
      I3 => count_reg(0),
      O => \p_0_in__0\(1)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \p_0_in__0\(2)
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A8A"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \p_0_in__0\(3)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => count_reg(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => count_reg(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => count_reg(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => count_reg(3),
      R => '0'
    );
\data_bits[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => \data_bits[9]_i_1__0_n_0\
    );
\data_bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(0),
      Q => data_bits(0),
      R => '0'
    );
\data_bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(1),
      Q => data_bits(1),
      R => '0'
    );
\data_bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(2),
      Q => data_bits(2),
      R => '0'
    );
\data_bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(3),
      Q => data_bits(3),
      R => '0'
    );
\data_bits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(4),
      Q => data_bits(4),
      R => '0'
    );
\data_bits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(5),
      Q => data_bits(5),
      R => '0'
    );
\data_bits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(6),
      Q => data_bits(6),
      R => '0'
    );
\data_bits_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(7),
      Q => data_bits(7),
      R => '0'
    );
\data_bits_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(8),
      Q => data_bits(8),
      R => '0'
    );
\data_bits_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1__0_n_0\,
      D => D(9),
      Q => data_bits(9),
      R => '0'
    );
\dout_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \dout_i_2__0_n_0\,
      I1 => count_reg(3),
      I2 => \dout_i_3__0_n_0\,
      I3 => count_reg(2),
      I4 => \dout_i_4__0_n_0\,
      O => \dout_i_1__0_n_0\
    );
\dout_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => count_reg(2),
      I1 => data_bits(8),
      I2 => count_reg(1),
      I3 => data_bits(0),
      I4 => count_reg(0),
      I5 => data_bits(9),
      O => \dout_i_2__0_n_0\
    );
\dout_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_bits(8),
      I1 => data_bits(7),
      I2 => count_reg(1),
      I3 => data_bits(6),
      I4 => count_reg(0),
      I5 => data_bits(5),
      O => \dout_i_3__0_n_0\
    );
\dout_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_bits(4),
      I1 => data_bits(3),
      I2 => count_reg(1),
      I3 => data_bits(2),
      I4 => count_reg(0),
      I5 => data_bits(1),
      O => \dout_i_4__0_n_0\
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => '1',
      D => \dout_i_1__0_n_0\,
      Q => tmds_g_shift,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_1 is
  port (
    tmds_r_shift : out STD_LOGIC;
    clk250 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_1 : entity is "shift_register";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_1 is
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_bits : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \data_bits[9]_i_1_n_0\ : STD_LOGIC;
  signal dout_i_1_n_0 : STD_LOGIC;
  signal dout_i_2_n_0 : STD_LOGIC;
  signal dout_i_3_n_0 : STD_LOGIC;
  signal dout_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair4";
begin
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF0"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(1),
      I3 => count_reg(0),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A8A"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => p_0_in(3)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => p_0_in(0),
      Q => count_reg(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => p_0_in(1),
      Q => count_reg(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => p_0_in(2),
      Q => count_reg(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => p_0_in(3),
      Q => count_reg(3),
      R => '0'
    );
\data_bits[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => \data_bits[9]_i_1_n_0\
    );
\data_bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(0),
      Q => data_bits(0),
      R => '0'
    );
\data_bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(1),
      Q => data_bits(1),
      R => '0'
    );
\data_bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(2),
      Q => data_bits(2),
      R => '0'
    );
\data_bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(3),
      Q => data_bits(3),
      R => '0'
    );
\data_bits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(4),
      Q => data_bits(4),
      R => '0'
    );
\data_bits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(5),
      Q => data_bits(5),
      R => '0'
    );
\data_bits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(6),
      Q => data_bits(6),
      R => '0'
    );
\data_bits_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(7),
      Q => data_bits(7),
      R => '0'
    );
\data_bits_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(8),
      Q => data_bits(8),
      R => '0'
    );
\data_bits_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => \data_bits[9]_i_1_n_0\,
      D => D(9),
      Q => data_bits(9),
      R => '0'
    );
dout_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => dout_i_2_n_0,
      I1 => count_reg(3),
      I2 => dout_i_3_n_0,
      I3 => count_reg(2),
      I4 => dout_i_4_n_0,
      O => dout_i_1_n_0
    );
dout_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => count_reg(2),
      I1 => data_bits(8),
      I2 => count_reg(1),
      I3 => data_bits(0),
      I4 => count_reg(0),
      I5 => data_bits(9),
      O => dout_i_2_n_0
    );
dout_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_bits(8),
      I1 => data_bits(7),
      I2 => count_reg(1),
      I3 => data_bits(6),
      I4 => count_reg(0),
      I5 => data_bits(5),
      O => dout_i_3_n_0
    );
dout_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_bits(4),
      I1 => data_bits(3),
      I2 => count_reg(1),
      I3 => data_bits(2),
      I4 => count_reg(0),
      I5 => data_bits(1),
      O => dout_i_4_n_0
    );
dout_reg: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => '1',
      D => dout_i_1_n_0,
      Q => tmds_r_shift,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    B_0_sp_1 : out STD_LOGIC;
    \disparity_reg[4]_0\ : out STD_LOGIC;
    \B[0]_0\ : out STD_LOGIC;
    \disparity_reg[4]_1\ : out STD_LOGIC;
    \B[0]_1\ : out STD_LOGIC;
    \B[0]_2\ : out STD_LOGIC;
    B_4_sp_1 : out STD_LOGIC;
    B_3_sp_1 : out STD_LOGIC;
    \q_out_reg[8]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \q_out_reg[7]_0\ : in STD_LOGIC;
    \q_out_reg[6]_0\ : in STD_LOGIC;
    \q_out_reg[5]_0\ : in STD_LOGIC;
    \q_out_reg[4]_0\ : in STD_LOGIC;
    \q_out_reg[3]_0\ : in STD_LOGIC;
    \q_out_reg[2]_0\ : in STD_LOGIC;
    \q_out_reg[1]_0\ : in STD_LOGIC;
    \q_out_reg[0]_0\ : in STD_LOGIC;
    \q_out_reg[9]_0\ : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \disparity_reg[4]_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder is
  signal \^b[0]_0\ : STD_LOGIC;
  signal B_0_sn_1 : STD_LOGIC;
  signal B_3_sn_1 : STD_LOGIC;
  signal B_4_sn_1 : STD_LOGIC;
  signal \disparity[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_5__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_7__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_8__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_10__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_11__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_12__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_13__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_15__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_16__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_17__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_18__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_19__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_20__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_21__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_22__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_23__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_24_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_25_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_26_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \^disparity_reg[4]_0\ : STD_LOGIC;
  signal \disparity_reg_n_0_[1]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[2]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[3]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disparity[1]_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \disparity[2]_i_3__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \disparity[2]_i_4__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \disparity[2]_i_5__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \disparity[2]_i_7__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \disparity[3]_i_5__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \disparity[4]_i_10__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \disparity[4]_i_12__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \disparity[4]_i_13__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \disparity[4]_i_14__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \disparity[4]_i_15__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \disparity[4]_i_16__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \disparity[4]_i_19__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \disparity[4]_i_20__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \disparity[4]_i_21__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \disparity[4]_i_22__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \disparity[4]_i_23__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \disparity[4]_i_7__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \disparity[4]_i_8__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \disparity[4]_i_9__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q_out[5]_i_2__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q_out[7]_i_2__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q_out[7]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q_out[7]_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q_out[7]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \q_out[9]_i_2\ : label is "soft_lutpair30";
begin
  \B[0]_0\ <= \^b[0]_0\;
  B_0_sp_1 <= B_0_sn_1;
  B_3_sp_1 <= B_3_sn_1;
  B_4_sp_1 <= B_4_sn_1;
  \disparity_reg[4]_0\ <= \^disparity_reg[4]_0\;
\disparity[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69696696"
    )
        port map (
      I0 => \disparity[2]_i_3__0_n_0\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \^disparity_reg[4]_0\,
      I3 => \disparity[4]_i_5__1_n_0\,
      I4 => \^b[0]_0\,
      O => \disparity[1]_i_1__1_n_0\
    );
\disparity[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FF4EFFBE00B1004"
    )
        port map (
      I0 => \disparity[4]_i_5__1_n_0\,
      I1 => \^disparity_reg[4]_0\,
      I2 => \^b[0]_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[2]_i_3__0_n_0\,
      I5 => \disparity[2]_i_4__1_n_0\,
      O => \disparity[2]_i_1__1_n_0\
    );
\disparity[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80004800B3B3FBFB"
    )
        port map (
      I0 => \disparity[2]_i_5__1_n_0\,
      I1 => \disparity[2]_i_6__0_n_0\,
      I2 => \disparity[2]_i_7__1_n_0\,
      I3 => B(0),
      I4 => B(7),
      I5 => \disparity[2]_i_8__1_n_0\,
      O => \^b[0]_0\
    );
\disparity[2]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(1),
      I1 => B(3),
      I2 => B(7),
      I3 => B(5),
      O => \disparity[2]_i_3__0_n_0\
    );
\disparity[2]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity[3]_i_5__1_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      O => \disparity[2]_i_4__1_n_0\
    );
\disparity[2]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(3),
      I1 => B(2),
      I2 => B(1),
      O => \disparity[2]_i_5__1_n_0\
    );
\disparity[2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => B(3),
      I1 => B(2),
      I2 => B(1),
      I3 => B(6),
      I4 => B(5),
      I5 => B(4),
      O => \disparity[2]_i_6__0_n_0\
    );
\disparity[2]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(6),
      I1 => B(5),
      I2 => B(4),
      O => \disparity[2]_i_7__1_n_0\
    );
\disparity[2]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E800E8000000"
    )
        port map (
      I0 => B(3),
      I1 => B(2),
      I2 => B(1),
      I3 => B(6),
      I4 => B(5),
      I5 => B(4),
      O => \disparity[2]_i_8__1_n_0\
    );
\disparity[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \disparity[3]_i_2__1_n_0\,
      I1 => \disparity[4]_i_5__1_n_0\,
      I2 => \disparity[3]_i_3__1_n_0\,
      I3 => \^disparity_reg[4]_0\,
      I4 => \disparity[3]_i_4__1_n_0\,
      O => \disparity[3]_i_1__1_n_0\
    );
\disparity[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C93C63696339633"
    )
        port map (
      I0 => \^b[0]_0\,
      I1 => \disparity[4]_i_22__0_n_0\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity[3]_i_5__1_n_0\,
      I4 => \disparity_reg_n_0_[1]\,
      I5 => \disparity[2]_i_3__0_n_0\,
      O => \disparity[3]_i_2__1_n_0\
    );
\disparity[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE808001017F7FFE"
    )
        port map (
      I0 => \^b[0]_0\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[2]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[2]\,
      I4 => \disparity[3]_i_5__1_n_0\,
      I5 => \disparity[4]_i_22__0_n_0\,
      O => \disparity[3]_i_3__1_n_0\
    );
\disparity[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C336C3636933C33"
    )
        port map (
      I0 => \^b[0]_0\,
      I1 => \disparity[4]_i_22__0_n_0\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity[3]_i_5__1_n_0\,
      I4 => \disparity_reg_n_0_[1]\,
      I5 => \disparity[2]_i_3__0_n_0\,
      O => \disparity[3]_i_4__1_n_0\
    );
\disparity[3]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \disparity[4]_i_16__0_n_0\,
      I1 => \disparity[4]_i_19__0_n_0\,
      I2 => \disparity[4]_i_18__0_n_0\,
      I3 => \disparity[4]_i_17__1_n_0\,
      O => \disparity[3]_i_5__1_n_0\
    );
\disparity[4]_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D442"
    )
        port map (
      I0 => \disparity[4]_i_16__0_n_0\,
      I1 => \disparity[4]_i_17__1_n_0\,
      I2 => \disparity[4]_i_18__0_n_0\,
      I3 => \disparity[4]_i_19__0_n_0\,
      O => \disparity[4]_i_10__1_n_0\
    );
\disparity[4]_i_11__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001777F777F0001"
    )
        port map (
      I0 => \disparity[3]_i_5__1_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity[2]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity_reg_n_0_[3]\,
      I5 => \disparity[4]_i_10__1_n_0\,
      O => \disparity[4]_i_11__1_n_0\
    );
\disparity[4]_i_12__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA566A"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => \disparity[4]_i_19__0_n_0\,
      I2 => \disparity[4]_i_18__0_n_0\,
      I3 => \disparity[4]_i_17__1_n_0\,
      I4 => \disparity[4]_i_16__0_n_0\,
      O => \disparity[4]_i_12__1_n_0\
    );
\disparity[4]_i_13__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2BBF"
    )
        port map (
      I0 => \disparity[4]_i_16__0_n_0\,
      I1 => \disparity[4]_i_17__1_n_0\,
      I2 => \disparity[4]_i_18__0_n_0\,
      I3 => \disparity[4]_i_19__0_n_0\,
      O => \disparity[4]_i_13__1_n_0\
    );
\disparity[4]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => \disparity[3]_i_5__1_n_0\,
      I1 => \disparity[2]_i_3__0_n_0\,
      I2 => \disparity[4]_i_24_n_0\,
      I3 => \disparity[4]_i_25_n_0\,
      O => \disparity[4]_i_14__0_n_0\
    );
\disparity[4]_i_15__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity_reg_n_0_[3]\,
      I3 => \disparity_reg_n_0_[4]\,
      O => \disparity[4]_i_15__1_n_0\
    );
\disparity[4]_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060690"
    )
        port map (
      I0 => B(1),
      I1 => B(3),
      I2 => B(0),
      I3 => B(7),
      I4 => B(5),
      O => \disparity[4]_i_16__0_n_0\
    );
\disparity[4]_i_17__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"741D1D74"
    )
        port map (
      I0 => B(0),
      I1 => \disparity[4]_i_26_n_0\,
      I2 => \^b[0]_0\,
      I3 => B(5),
      I4 => B_4_sn_1,
      O => \disparity[4]_i_17__1_n_0\
    );
\disparity[4]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699696699696696"
    )
        port map (
      I0 => B(3),
      I1 => B_0_sn_1,
      I2 => B(6),
      I3 => B(5),
      I4 => B(4),
      I5 => \^b[0]_0\,
      O => \disparity[4]_i_18__0_n_0\
    );
\disparity[4]_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9C6339C6"
    )
        port map (
      I0 => \^b[0]_0\,
      I1 => B(1),
      I2 => B(2),
      I3 => B(0),
      I4 => B(3),
      O => \disparity[4]_i_19__0_n_0\
    );
\disparity[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C05FCF"
    )
        port map (
      I0 => \disparity[4]_i_2__1_n_0\,
      I1 => \disparity[4]_i_3__1_n_0\,
      I2 => \^disparity_reg[4]_0\,
      I3 => \disparity[4]_i_5__1_n_0\,
      I4 => \disparity[4]_i_6__1_n_0\,
      O => \disparity[4]_i_1__1_n_0\
    );
\disparity[4]_i_20__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2022"
    )
        port map (
      I0 => \disparity[3]_i_5__1_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity[2]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      O => \disparity[4]_i_20__0_n_0\
    );
\disparity[4]_i_21__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \disparity[3]_i_5__1_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity[2]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      O => \disparity[4]_i_21__0_n_0\
    );
\disparity[4]_i_22__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => \disparity[4]_i_10__1_n_0\,
      O => \disparity[4]_i_22__0_n_0\
    );
\disparity[4]_i_23__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \disparity[4]_i_10__1_n_0\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity_reg_n_0_[4]\,
      I3 => \disparity[4]_i_13__1_n_0\,
      O => \disparity[4]_i_23__0_n_0\
    );
\disparity[4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000639CC639"
    )
        port map (
      I0 => B(3),
      I1 => B(0),
      I2 => B(2),
      I3 => B(1),
      I4 => \^b[0]_0\,
      I5 => \disparity[4]_i_18__0_n_0\,
      O => \disparity[4]_i_24_n_0\
    );
\disparity[4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEFFFFEBFFEBBEFF"
    )
        port map (
      I0 => \disparity[4]_i_17__1_n_0\,
      I1 => B(5),
      I2 => B(7),
      I3 => B(0),
      I4 => B(3),
      I5 => B(1),
      O => \disparity[4]_i_25_n_0\
    );
\disparity[4]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => B(1),
      I1 => B(2),
      I2 => B(3),
      I3 => B(0),
      I4 => B(7),
      I5 => \disparity[2]_i_7__1_n_0\,
      O => \disparity[4]_i_26_n_0\
    );
\disparity[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FC8877BB44CF30"
    )
        port map (
      I0 => \disparity[4]_i_7__1_n_0\,
      I1 => \^b[0]_0\,
      I2 => \disparity[4]_i_8__1_n_0\,
      I3 => \disparity[4]_i_9__1_n_0\,
      I4 => \disparity_reg_n_0_[3]\,
      I5 => \disparity[4]_i_10__1_n_0\,
      O => \disparity[4]_i_2__1_n_0\
    );
\disparity[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30CFB847B847CF30"
    )
        port map (
      I0 => \disparity[4]_i_7__1_n_0\,
      I1 => \^b[0]_0\,
      I2 => \disparity[4]_i_11__1_n_0\,
      I3 => \disparity[4]_i_12__1_n_0\,
      I4 => \disparity_reg_n_0_[3]\,
      I5 => \disparity[4]_i_10__1_n_0\,
      O => \disparity[4]_i_3__1_n_0\
    );
\disparity[4]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999BBBBBBBBB"
    )
        port map (
      I0 => \disparity[4]_i_13__1_n_0\,
      I1 => \disparity_reg_n_0_[4]\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity_reg_n_0_[3]\,
      I5 => \disparity[4]_i_14__0_n_0\,
      O => \^disparity_reg[4]_0\
    );
\disparity[4]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEEBEBBA"
    )
        port map (
      I0 => \disparity[4]_i_15__1_n_0\,
      I1 => \disparity[4]_i_16__0_n_0\,
      I2 => \disparity[4]_i_17__1_n_0\,
      I3 => \disparity[4]_i_18__0_n_0\,
      I4 => \disparity[4]_i_19__0_n_0\,
      I5 => \disparity[2]_i_3__0_n_0\,
      O => \disparity[4]_i_5__1_n_0\
    );
\disparity[4]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"707F30308F80CFCF"
    )
        port map (
      I0 => \disparity[4]_i_20__0_n_0\,
      I1 => \disparity[4]_i_21__0_n_0\,
      I2 => \^b[0]_0\,
      I3 => \disparity[4]_i_8__1_n_0\,
      I4 => \disparity[4]_i_22__0_n_0\,
      I5 => \disparity[4]_i_23__0_n_0\,
      O => \disparity[4]_i_6__1_n_0\
    );
\disparity[4]_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity[3]_i_5__1_n_0\,
      I2 => \disparity[2]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      O => \disparity[4]_i_7__1_n_0\
    );
\disparity[4]_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \disparity[2]_i_3__0_n_0\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[3]_i_5__1_n_0\,
      I3 => \disparity_reg_n_0_[2]\,
      O => \disparity[4]_i_8__1_n_0\
    );
\disparity[4]_i_9__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity[4]_i_13__1_n_0\,
      I1 => \disparity_reg_n_0_[4]\,
      O => \disparity[4]_i_9__1_n_0\
    );
\disparity_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[1]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[1]\,
      R => \disparity_reg[4]_2\
    );
\disparity_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[2]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[2]\,
      R => \disparity_reg[4]_2\
    );
\disparity_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[3]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[3]\,
      R => \disparity_reg[4]_2\
    );
\disparity_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[4]_i_1__1_n_0\,
      Q => \disparity_reg_n_0_[4]\,
      R => \disparity_reg[4]_2\
    );
\q_out[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(0),
      I1 => B(2),
      I2 => B(1),
      O => B_0_sn_1
    );
\q_out[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \^b[0]_0\,
      I1 => B(0),
      I2 => B(2),
      I3 => B(1),
      I4 => B(3),
      O => \B[0]_2\
    );
\q_out[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => B(4),
      I1 => B(5),
      I2 => B(6),
      I3 => B_0_sn_1,
      I4 => B(3),
      O => B_4_sn_1
    );
\q_out[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \q_out[7]_i_4_n_0\,
      I1 => B(3),
      I2 => B(2),
      I3 => B(1),
      I4 => \^b[0]_0\,
      O => B_3_sn_1
    );
\q_out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EC23AA23"
    )
        port map (
      I0 => \^b[0]_0\,
      I1 => \disparity_reg_n_0_[4]\,
      I2 => \q_out[7]_i_5_n_0\,
      I3 => \disparity[4]_i_13__1_n_0\,
      I4 => \disparity[4]_i_14__0_n_0\,
      O => \disparity_reg[4]_1\
    );
\q_out[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => B(4),
      I1 => B(5),
      I2 => B(6),
      I3 => B(7),
      I4 => B(0),
      O => \q_out[7]_i_4_n_0\
    );
\q_out[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity_reg_n_0_[2]\,
      O => \q_out[7]_i_5_n_0\
    );
\q_out[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \disparity[4]_i_5__1_n_0\,
      I1 => \^b[0]_0\,
      O => \B[0]_1\
    );
\q_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[0]_0\,
      Q => D(0),
      R => '0'
    );
\q_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[1]_0\,
      Q => D(1),
      R => '0'
    );
\q_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[2]_0\,
      Q => D(2),
      R => '0'
    );
\q_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[3]_0\,
      Q => D(3),
      R => '0'
    );
\q_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[4]_0\,
      Q => D(4),
      R => '0'
    );
\q_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[5]_0\,
      Q => D(5),
      R => '0'
    );
\q_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[6]_0\,
      Q => D(6),
      R => '0'
    );
\q_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[7]_0\,
      Q => D(7),
      R => '0'
    );
\q_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[8]_0\,
      Q => D(8),
      R => '0'
    );
\q_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out_reg[9]_0\,
      Q => D(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC;
    \disparity_reg[1]_0\ : in STD_LOGIC;
    G : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_out_reg[5]_0\ : in STD_LOGIC;
    v_active : in STD_LOGIC;
    h_active : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_2 : entity is "tmds_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_2 is
  signal \disparity[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_10_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_11_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_6__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_8__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_9_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_13__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_14__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_15__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_16_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_17__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_18__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_19__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_20__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \disparity_reg_n_0_[1]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[2]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[3]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_out[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disparity[2]_i_11\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \disparity[2]_i_5\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \disparity[2]_i_7__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \disparity[3]_i_2__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \disparity[4]_i_10__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \disparity[4]_i_11__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \disparity[4]_i_12__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \disparity[4]_i_16\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \disparity[4]_i_17__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \disparity[4]_i_18__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \disparity[4]_i_19__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \disparity[4]_i_20__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \disparity[4]_i_7__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \disparity[4]_i_9__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q_out[3]_i_2__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q_out[4]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q_out[5]_i_2__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q_out[9]_i_1__1\ : label is "soft_lutpair46";
begin
\disparity[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21D1DE2"
    )
        port map (
      I0 => \disparity[2]_i_4__0_n_0\,
      I1 => \disparity[2]_i_3_n_0\,
      I2 => \disparity[2]_i_2__0_n_0\,
      I3 => \disparity[2]_i_5_n_0\,
      I4 => \disparity_reg_n_0_[1]\,
      O => \disparity[1]_i_1__0_n_0\
    );
\disparity[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => G(1),
      I1 => G(3),
      I2 => G(2),
      I3 => G(4),
      I4 => G(6),
      I5 => G(5),
      O => \disparity[2]_i_10_n_0\
    );
\disparity[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => G(6),
      I1 => \disparity[2]_i_3_n_0\,
      I2 => \q_out[5]_i_2__1_n_0\,
      I3 => \q_out[7]_i_2__1_n_0\,
      I4 => G(0),
      O => \disparity[2]_i_11_n_0\
    );
\disparity[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03304488FCCFBB77"
    )
        port map (
      I0 => \disparity[2]_i_2__0_n_0\,
      I1 => \disparity[2]_i_3_n_0\,
      I2 => \disparity[2]_i_4__0_n_0\,
      I3 => \disparity[2]_i_5_n_0\,
      I4 => \disparity_reg_n_0_[1]\,
      I5 => \disparity[2]_i_6__1_n_0\,
      O => \disparity[2]_i_1__0_n_0\
    );
\disparity[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity_reg_n_0_[3]\,
      I4 => \disparity[4]_i_14__1_n_0\,
      I5 => \disparity[4]_i_3__0_n_0\,
      O => \disparity[2]_i_2__0_n_0\
    );
\disparity[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC444400FF7F7FBF"
    )
        port map (
      I0 => \disparity[2]_i_7__0_n_0\,
      I1 => \disparity[2]_i_8__0_n_0\,
      I2 => G(0),
      I3 => G(7),
      I4 => \disparity[2]_i_9_n_0\,
      I5 => \disparity[2]_i_10_n_0\,
      O => \disparity[2]_i_3_n_0\
    );
\disparity[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity_reg_n_0_[3]\,
      I4 => \disparity[4]_i_14__1_n_0\,
      I5 => \disparity[4]_i_3__0_n_0\,
      O => \disparity[2]_i_4__0_n_0\
    );
\disparity[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \disparity[2]_i_11_n_0\,
      I1 => G(0),
      I2 => G(1),
      I3 => G(3),
      O => \disparity[2]_i_5_n_0\
    );
\disparity[2]_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity[3]_i_5_n_0\,
      O => \disparity[2]_i_6__1_n_0\
    );
\disparity[2]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => G(3),
      I1 => G(2),
      I2 => G(1),
      O => \disparity[2]_i_7__0_n_0\
    );
\disparity[2]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => G(1),
      I1 => G(3),
      I2 => G(2),
      I3 => G(4),
      I4 => G(6),
      I5 => G(5),
      O => \disparity[2]_i_8__0_n_0\
    );
\disparity[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => G(4),
      I1 => G(6),
      I2 => G(5),
      O => \disparity[2]_i_9_n_0\
    );
\disparity[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \disparity[3]_i_2__0_n_0\,
      I1 => \disparity[3]_i_3__0_n_0\,
      I2 => \disparity[3]_i_4__0_n_0\,
      O => \disparity[3]_i_1__0_n_0\
    );
\disparity[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => \disparity[4]_i_8__0_n_0\,
      O => \disparity[3]_i_2__0_n_0\
    );
\disparity[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444015145155555"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[2]_i_4__0_n_0\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity[2]_i_5_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[3]_i_5_n_0\,
      O => \disparity[3]_i_3__0_n_0\
    );
\disparity[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D755D755F757575D"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[2]_i_2__0_n_0\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity[3]_i_5_n_0\,
      I4 => \disparity[2]_i_5_n_0\,
      I5 => \disparity_reg_n_0_[1]\,
      O => \disparity[3]_i_4__0_n_0\
    );
\disparity[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2244DDB4DDBB224"
    )
        port map (
      I0 => \disparity[4]_i_19__1_n_0\,
      I1 => G(0),
      I2 => \disparity[4]_i_20__1_n_0\,
      I3 => \q_out[7]_i_2__1_n_0\,
      I4 => \disparity[4]_i_10__0_n_0\,
      I5 => \disparity[4]_i_11__0_n_0\,
      O => \disparity[3]_i_5_n_0\
    );
\disparity[4]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => G(5),
      I2 => G(6),
      I3 => \q_out[5]_i_2__1_n_0\,
      O => \disparity[4]_i_10__0_n_0\
    );
\disparity[4]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB4D22D"
    )
        port map (
      I0 => G(2),
      I1 => G(3),
      I2 => G(1),
      I3 => G(0),
      I4 => \disparity[2]_i_3_n_0\,
      O => \disparity[4]_i_11__0_n_0\
    );
\disparity[4]_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8228EBBE"
    )
        port map (
      I0 => G(0),
      I1 => \q_out[5]_i_2__1_n_0\,
      I2 => \disparity[2]_i_3_n_0\,
      I3 => G(6),
      I4 => \q_out[7]_i_2__1_n_0\,
      O => \disparity[4]_i_12__0_n_0\
    );
\disparity[4]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000069969669"
    )
        port map (
      I0 => G(0),
      I1 => \q_out[7]_i_2__1_n_0\,
      I2 => G(6),
      I3 => \disparity[2]_i_3_n_0\,
      I4 => \q_out[5]_i_2__1_n_0\,
      I5 => \disparity[4]_i_19__1_n_0\,
      O => \disparity[4]_i_13__0_n_0\
    );
\disparity[4]_i_14__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F66FBFF66FFDF66F"
    )
        port map (
      I0 => \disparity[4]_i_11__0_n_0\,
      I1 => \disparity[4]_i_10__0_n_0\,
      I2 => \q_out[7]_i_2__1_n_0\,
      I3 => \disparity[4]_i_20__1_n_0\,
      I4 => G(0),
      I5 => \disparity[4]_i_19__1_n_0\,
      O => \disparity[4]_i_14__1_n_0\
    );
\disparity[4]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE88808880FFFE"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity[3]_i_5_n_0\,
      I2 => \disparity[2]_i_5_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity_reg_n_0_[3]\,
      I5 => \disparity[4]_i_8__0_n_0\,
      O => \disparity[4]_i_15__0_n_0\
    );
\disparity[4]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \disparity[4]_i_3__0_n_0\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity[4]_i_8__0_n_0\,
      O => \disparity[4]_i_16_n_0\
    );
\disparity[4]_i_17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity[2]_i_5_n_0\,
      O => \disparity[4]_i_17__0_n_0\
    );
\disparity[4]_i_18__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDFD"
    )
        port map (
      I0 => \disparity[3]_i_5_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity[2]_i_5_n_0\,
      O => \disparity[4]_i_18__1_n_0\
    );
\disparity[4]_i_19__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => G(3),
      I1 => G(1),
      I2 => G(0),
      O => \disparity[4]_i_19__1_n_0\
    );
\disparity[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0535C5F5"
    )
        port map (
      I0 => \disparity[4]_i_2__0_n_0\,
      I1 => \disparity[4]_i_3__0_n_0\,
      I2 => \disparity[4]_i_4__0_n_0\,
      I3 => \disparity[4]_i_5__0_n_0\,
      I4 => \disparity[4]_i_6__0_n_0\,
      O => \disparity[4]_i_1__0_n_0\
    );
\disparity[4]_i_20__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => G(6),
      I1 => \disparity[2]_i_3_n_0\,
      I2 => \q_out[5]_i_2__1_n_0\,
      O => \disparity[4]_i_20__1_n_0\
    );
\disparity[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B3CF0784B0FC378"
    )
        port map (
      I0 => \disparity[4]_i_7__0_n_0\,
      I1 => \disparity[2]_i_3_n_0\,
      I2 => \disparity[4]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[3]\,
      I4 => \disparity[4]_i_8__0_n_0\,
      I5 => \disparity[4]_i_9__0_n_0\,
      O => \disparity[4]_i_2__0_n_0\
    );
\disparity[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556565A6"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => \disparity[4]_i_10__0_n_0\,
      I2 => \disparity[4]_i_11__0_n_0\,
      I3 => \disparity[4]_i_12__0_n_0\,
      I4 => \disparity[4]_i_13__0_n_0\,
      O => \disparity[4]_i_3__0_n_0\
    );
\disparity[4]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \disparity[4]_i_14__1_n_0\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity_reg_n_0_[1]\,
      I3 => \disparity_reg_n_0_[2]\,
      I4 => \disparity_reg_n_0_[4]\,
      O => \disparity[4]_i_4__0_n_0\
    );
\disparity[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7878B44B4B4BB4"
    )
        port map (
      I0 => \disparity[4]_i_15__0_n_0\,
      I1 => \disparity[2]_i_3_n_0\,
      I2 => \disparity[4]_i_3__0_n_0\,
      I3 => \disparity_reg_n_0_[3]\,
      I4 => \disparity[4]_i_8__0_n_0\,
      I5 => \disparity[4]_i_9__0_n_0\,
      O => \disparity[4]_i_5__0_n_0\
    );
\disparity[4]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C387F087F0B4F0B4"
    )
        port map (
      I0 => \disparity[4]_i_7__0_n_0\,
      I1 => \disparity[2]_i_3_n_0\,
      I2 => \disparity[4]_i_16_n_0\,
      I3 => \disparity[3]_i_2__0_n_0\,
      I4 => \disparity[4]_i_17__0_n_0\,
      I5 => \disparity[4]_i_18__1_n_0\,
      O => \disparity[4]_i_6__0_n_0\
    );
\disparity[4]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[2]_i_5_n_0\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity[3]_i_5_n_0\,
      O => \disparity[4]_i_7__0_n_0\
    );
\disparity[4]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80E80100FEFF80E8"
    )
        port map (
      I0 => \disparity[4]_i_19__1_n_0\,
      I1 => \q_out[7]_i_2__1_n_0\,
      I2 => \disparity[4]_i_20__1_n_0\,
      I3 => G(0),
      I4 => \disparity[4]_i_11__0_n_0\,
      I5 => \disparity[4]_i_10__0_n_0\,
      O => \disparity[4]_i_8__0_n_0\
    );
\disparity[4]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => \disparity_reg_n_0_[1]\,
      I1 => \disparity[2]_i_5_n_0\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity[3]_i_5_n_0\,
      O => \disparity[4]_i_9__0_n_0\
    );
\disparity_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[1]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[1]\,
      R => \disparity_reg[1]_0\
    );
\disparity_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[2]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[2]\,
      R => \disparity_reg[1]_0\
    );
\disparity_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[3]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[3]\,
      R => \disparity_reg[1]_0\
    );
\disparity_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[4]_i_1__0_n_0\,
      Q => \disparity_reg_n_0_[4]\,
      R => \disparity_reg[1]_0\
    );
\q_out[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00000001000E000"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[2]_i_4__0_n_0\,
      I2 => v_active,
      I3 => h_active,
      I4 => G(0),
      I5 => \disparity[2]_i_2__0_n_0\,
      O => \q_out[0]_i_1__1_n_0\
    );
\q_out[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A55A4BB4"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[2]_i_4__0_n_0\,
      I2 => G(0),
      I3 => G(1),
      I4 => \disparity[2]_i_2__0_n_0\,
      O => \q_out[1]_i_1__1_n_0\
    );
\q_out[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00F0FF01EE1E11E"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[2]_i_4__0_n_0\,
      I2 => G(0),
      I3 => G(1),
      I4 => G(2),
      I5 => \disparity[2]_i_2__0_n_0\,
      O => \q_out[2]_i_1__1_n_0\
    );
\q_out[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5995"
    )
        port map (
      I0 => \q_out[3]_i_2__0_n_0\,
      I1 => \disparity[4]_i_4__0_n_0\,
      I2 => \disparity[2]_i_4__0_n_0\,
      I3 => \disparity[2]_i_3_n_0\,
      O => \q_out[3]_i_1__1_n_0\
    );
\q_out[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => G(3),
      I1 => G(0),
      I2 => G(1),
      I3 => G(2),
      O => \q_out[3]_i_2__0_n_0\
    );
\q_out[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F01E"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[2]_i_4__0_n_0\,
      I2 => \q_out[5]_i_2__1_n_0\,
      I3 => \disparity[2]_i_2__0_n_0\,
      O => \q_out[4]_i_1__1_n_0\
    );
\q_out[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696966600000000"
    )
        port map (
      I0 => \q_out[5]_i_2__1_n_0\,
      I1 => G(5),
      I2 => \disparity[4]_i_4__0_n_0\,
      I3 => \disparity[2]_i_4__0_n_0\,
      I4 => \disparity[2]_i_3_n_0\,
      I5 => \q_out_reg[5]_0\,
      O => \q_out[5]_i_1__1_n_0\
    );
\q_out[5]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => G(4),
      I1 => G(2),
      I2 => G(1),
      I3 => G(0),
      I4 => G(3),
      O => \q_out[5]_i_2__1_n_0\
    );
\q_out[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00F0FF01EE1E11E"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[2]_i_4__0_n_0\,
      I2 => G(5),
      I3 => G(6),
      I4 => \q_out[5]_i_2__1_n_0\,
      I5 => \disparity[2]_i_2__0_n_0\,
      O => \q_out[6]_i_1__1_n_0\
    );
\q_out[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F000E0001000"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[2]_i_4__0_n_0\,
      I2 => v_active,
      I3 => h_active,
      I4 => \q_out[7]_i_2__1_n_0\,
      I5 => \disparity[2]_i_2__0_n_0\,
      O => \q_out[7]_i_1__1_n_0\
    );
\q_out[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD1669963FC19669"
    )
        port map (
      I0 => \disparity[2]_i_10_n_0\,
      I1 => \disparity[2]_i_9_n_0\,
      I2 => G(7),
      I3 => G(0),
      I4 => \disparity[2]_i_8__0_n_0\,
      I5 => \disparity[2]_i_7__0_n_0\,
      O => \q_out[7]_i_2__1_n_0\
    );
\q_out[8]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      O => \q_out[8]_i_1__1_n_0\
    );
\q_out[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \disparity[2]_i_3_n_0\,
      I1 => \disparity[2]_i_4__0_n_0\,
      I2 => \disparity[2]_i_2__0_n_0\,
      O => \q_out[9]_i_1__1_n_0\
    );
\q_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[0]_i_1__1_n_0\,
      Q => D(0),
      R => '0'
    );
\q_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[1]_i_1__1_n_0\,
      Q => D(1),
      R => \disparity_reg[1]_0\
    );
\q_out_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[2]_i_1__1_n_0\,
      Q => D(2),
      S => \disparity_reg[1]_0\
    );
\q_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[3]_i_1__1_n_0\,
      Q => D(3),
      R => \disparity_reg[1]_0\
    );
\q_out_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[4]_i_1__1_n_0\,
      Q => D(4),
      S => \disparity_reg[1]_0\
    );
\q_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[5]_i_1__1_n_0\,
      Q => D(5),
      R => '0'
    );
\q_out_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[6]_i_1__1_n_0\,
      Q => D(6),
      S => \disparity_reg[1]_0\
    );
\q_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[7]_i_1__1_n_0\,
      Q => D(7),
      R => '0'
    );
\q_out_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[8]_i_1__1_n_0\,
      Q => D(8),
      S => \disparity_reg[1]_0\
    );
\q_out_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[9]_i_1__1_n_0\,
      Q => D(9),
      S => \disparity_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \disparity_reg[4]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    R : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_3 : entity is "tmds_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_3 is
  signal \disparity[1]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_7_n_0\ : STD_LOGIC;
  signal \disparity[2]_i_8_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_1_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_10_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_11_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_12_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_13_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_14_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_15_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_16__1_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_17_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_18_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_19_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_20_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_21_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_22_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_23_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_2_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_7_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_8_n_0\ : STD_LOGIC;
  signal \disparity[4]_i_9_n_0\ : STD_LOGIC;
  signal \disparity_reg_n_0_[1]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[2]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[3]\ : STD_LOGIC;
  signal \disparity_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_out[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \disparity[2]_i_4\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \disparity[2]_i_5__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \disparity[2]_i_7\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \disparity[3]_i_5__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \disparity[4]_i_10\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \disparity[4]_i_11\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \disparity[4]_i_12\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \disparity[4]_i_15\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \disparity[4]_i_16__1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \disparity[4]_i_17\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \disparity[4]_i_18\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \disparity[4]_i_19\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \disparity[4]_i_20\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \disparity[4]_i_21\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \disparity[4]_i_22\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \disparity[4]_i_23\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \disparity[4]_i_8\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \disparity[4]_i_9\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \q_out[0]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q_out[3]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q_out[3]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q_out[5]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \q_out[5]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q_out[6]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q_out[8]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q_out[9]_i_1__0\ : label is "soft_lutpair51";
begin
\disparity[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69666669"
    )
        port map (
      I0 => \disparity[2]_i_4_n_0\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[4]_i_4_n_0\,
      I3 => \disparity[2]_i_2_n_0\,
      I4 => \disparity[4]_i_5_n_0\,
      O => \disparity[1]_i_1_n_0\
    );
\disparity[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EF101FEB04F40BF"
    )
        port map (
      I0 => \disparity[4]_i_4_n_0\,
      I1 => \disparity[4]_i_5_n_0\,
      I2 => \disparity[2]_i_2_n_0\,
      I3 => \disparity[2]_i_3__1_n_0\,
      I4 => \disparity[2]_i_4_n_0\,
      I5 => \disparity_reg_n_0_[1]\,
      O => \disparity[2]_i_1_n_0\
    );
\disparity[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFB7FF4C4C0404"
    )
        port map (
      I0 => \disparity[2]_i_5__0_n_0\,
      I1 => \disparity[2]_i_6_n_0\,
      I2 => \disparity[2]_i_7_n_0\,
      I3 => R(0),
      I4 => R(7),
      I5 => \disparity[2]_i_8_n_0\,
      O => \disparity[2]_i_2_n_0\
    );
\disparity[2]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \disparity[3]_i_5__0_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      O => \disparity[2]_i_3__1_n_0\
    );
\disparity[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => R(1),
      I1 => R(3),
      I2 => R(7),
      I3 => R(5),
      O => \disparity[2]_i_4_n_0\
    );
\disparity[2]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => R(3),
      I1 => R(2),
      I2 => R(1),
      O => \disparity[2]_i_5__0_n_0\
    );
\disparity[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => R(3),
      I1 => R(2),
      I2 => R(1),
      I3 => R(6),
      I4 => R(5),
      I5 => R(4),
      O => \disparity[2]_i_6_n_0\
    );
\disparity[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => R(6),
      I1 => R(5),
      I2 => R(4),
      O => \disparity[2]_i_7_n_0\
    );
\disparity[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E800E8000000"
    )
        port map (
      I0 => R(3),
      I1 => R(2),
      I2 => R(1),
      I3 => R(6),
      I4 => R(5),
      I5 => R(4),
      O => \disparity[2]_i_8_n_0\
    );
\disparity[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \disparity[3]_i_2_n_0\,
      I1 => \disparity[4]_i_4_n_0\,
      I2 => \disparity[3]_i_3_n_0\,
      I3 => \disparity[4]_i_5_n_0\,
      I4 => \disparity[3]_i_4_n_0\,
      O => \disparity[3]_i_1_n_0\
    );
\disparity[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65A66565A9959595"
    )
        port map (
      I0 => \disparity[4]_i_16__1_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity[3]_i_5__0_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity[2]_i_4_n_0\,
      I5 => \disparity[2]_i_2_n_0\,
      O => \disparity[3]_i_2_n_0\
    );
\disparity[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9555556AA959555"
    )
        port map (
      I0 => \disparity[4]_i_16__1_n_0\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[2]_i_4_n_0\,
      I3 => \disparity[3]_i_5__0_n_0\,
      I4 => \disparity_reg_n_0_[2]\,
      I5 => \disparity[2]_i_2_n_0\,
      O => \disparity[3]_i_3_n_0\
    );
\disparity[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33C3369393C933C3"
    )
        port map (
      I0 => \disparity[2]_i_2_n_0\,
      I1 => \disparity[4]_i_16__1_n_0\,
      I2 => \disparity[3]_i_5__0_n_0\,
      I3 => \disparity_reg_n_0_[2]\,
      I4 => \disparity[2]_i_4_n_0\,
      I5 => \disparity_reg_n_0_[1]\,
      O => \disparity[3]_i_4_n_0\
    );
\disparity[3]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \disparity[4]_i_22_n_0\,
      I1 => \disparity[4]_i_19_n_0\,
      I2 => \disparity[4]_i_20_n_0\,
      I3 => \disparity[4]_i_21_n_0\,
      O => \disparity[3]_i_5__0_n_0\
    );
\disparity[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \disparity_reg_n_0_[2]\,
      I1 => \disparity[3]_i_5__0_n_0\,
      I2 => \disparity[2]_i_4_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      O => \disparity[4]_i_10_n_0\
    );
\disparity[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D442"
    )
        port map (
      I0 => \disparity[4]_i_22_n_0\,
      I1 => \disparity[4]_i_21_n_0\,
      I2 => \disparity[4]_i_20_n_0\,
      I3 => \disparity[4]_i_19_n_0\,
      O => \disparity[4]_i_11_n_0\
    );
\disparity[4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBEBFEB"
    )
        port map (
      I0 => \disparity[2]_i_4_n_0\,
      I1 => \disparity[4]_i_20_n_0\,
      I2 => \disparity[4]_i_19_n_0\,
      I3 => \disparity[4]_i_22_n_0\,
      I4 => \disparity[4]_i_21_n_0\,
      O => \disparity[4]_i_12_n_0\
    );
\disparity[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2BBF"
    )
        port map (
      I0 => \disparity[4]_i_22_n_0\,
      I1 => \disparity[4]_i_21_n_0\,
      I2 => \disparity[4]_i_20_n_0\,
      I3 => \disparity[4]_i_19_n_0\,
      O => \disparity[4]_i_13_n_0\
    );
\disparity[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001777F777F0001"
    )
        port map (
      I0 => \disparity[3]_i_5__0_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity[2]_i_4_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity_reg_n_0_[3]\,
      I5 => \disparity[4]_i_11_n_0\,
      O => \disparity[4]_i_14_n_0\
    );
\disparity[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \disparity[4]_i_11_n_0\,
      I1 => \disparity_reg_n_0_[3]\,
      I2 => \disparity[4]_i_13_n_0\,
      I3 => \disparity_reg_n_0_[4]\,
      O => \disparity[4]_i_15_n_0\
    );
\disparity[4]_i_16__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \disparity_reg_n_0_[3]\,
      I1 => \disparity[4]_i_11_n_0\,
      O => \disparity[4]_i_16__1_n_0\
    );
\disparity[4]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2022"
    )
        port map (
      I0 => \disparity[3]_i_5__0_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity[2]_i_4_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      O => \disparity[4]_i_17_n_0\
    );
\disparity[4]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \disparity[3]_i_5__0_n_0\,
      I1 => \disparity_reg_n_0_[2]\,
      I2 => \disparity[2]_i_4_n_0\,
      I3 => \disparity_reg_n_0_[1]\,
      O => \disparity[4]_i_18_n_0\
    );
\disparity[4]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C9336C9"
    )
        port map (
      I0 => \disparity[2]_i_2_n_0\,
      I1 => R(1),
      I2 => R(2),
      I3 => R(0),
      I4 => R(3),
      O => \disparity[4]_i_19_n_0\
    );
\disparity[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44744F7F"
    )
        port map (
      I0 => \disparity[4]_i_3_n_0\,
      I1 => \disparity[4]_i_4_n_0\,
      I2 => \disparity[4]_i_5_n_0\,
      I3 => \disparity[4]_i_6_n_0\,
      I4 => \disparity[4]_i_7_n_0\,
      O => \disparity[4]_i_2_n_0\
    );
\disparity[4]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59A6659A"
    )
        port map (
      I0 => \q_out[3]_i_2_n_0\,
      I1 => R(6),
      I2 => R(5),
      I3 => R(4),
      I4 => \disparity[2]_i_2_n_0\,
      O => \disparity[4]_i_20_n_0\
    );
\disparity[4]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47D1D147"
    )
        port map (
      I0 => R(0),
      I1 => \q_out[7]_i_2_n_0\,
      I2 => \disparity[2]_i_2_n_0\,
      I3 => R(5),
      I4 => \disparity[4]_i_23_n_0\,
      O => \disparity[4]_i_21_n_0\
    );
\disparity[4]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060690"
    )
        port map (
      I0 => R(1),
      I1 => R(3),
      I2 => R(0),
      I3 => R(7),
      I4 => R(5),
      O => \disparity[4]_i_22_n_0\
    );
\disparity[4]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => R(4),
      I1 => R(5),
      I2 => R(6),
      I3 => \q_out[3]_i_2_n_0\,
      O => \disparity[4]_i_23_n_0\
    );
\disparity[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B4B3C0FF0C37878"
    )
        port map (
      I0 => \disparity[4]_i_8_n_0\,
      I1 => \disparity[2]_i_2_n_0\,
      I2 => \disparity[4]_i_9_n_0\,
      I3 => \disparity[4]_i_10_n_0\,
      I4 => \disparity_reg_n_0_[3]\,
      I5 => \disparity[4]_i_11_n_0\,
      O => \disparity[4]_i_3_n_0\
    );
\disparity[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444444444F"
    )
        port map (
      I0 => \disparity[4]_i_12_n_0\,
      I1 => \disparity[4]_i_13_n_0\,
      I2 => \disparity_reg_n_0_[4]\,
      I3 => \disparity_reg_n_0_[3]\,
      I4 => \disparity_reg_n_0_[1]\,
      I5 => \disparity_reg_n_0_[2]\,
      O => \disparity[4]_i_4_n_0\
    );
\disparity[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999BBBBBBBBB"
    )
        port map (
      I0 => \disparity[4]_i_13_n_0\,
      I1 => \disparity_reg_n_0_[4]\,
      I2 => \disparity_reg_n_0_[2]\,
      I3 => \disparity_reg_n_0_[1]\,
      I4 => \disparity_reg_n_0_[3]\,
      I5 => \disparity[4]_i_12_n_0\,
      O => \disparity[4]_i_5_n_0\
    );
\disparity[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8787B487B4877878"
    )
        port map (
      I0 => \disparity[4]_i_14_n_0\,
      I1 => \disparity[2]_i_2_n_0\,
      I2 => \disparity[4]_i_9_n_0\,
      I3 => \disparity[4]_i_10_n_0\,
      I4 => \disparity_reg_n_0_[3]\,
      I5 => \disparity[4]_i_11_n_0\,
      O => \disparity[4]_i_6_n_0\
    );
\disparity[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B0F780F783C783C"
    )
        port map (
      I0 => \disparity[4]_i_8_n_0\,
      I1 => \disparity[2]_i_2_n_0\,
      I2 => \disparity[4]_i_15_n_0\,
      I3 => \disparity[4]_i_16__1_n_0\,
      I4 => \disparity[4]_i_17_n_0\,
      I5 => \disparity[4]_i_18_n_0\,
      O => \disparity[4]_i_7_n_0\
    );
\disparity[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \disparity[2]_i_4_n_0\,
      I1 => \disparity_reg_n_0_[1]\,
      I2 => \disparity[3]_i_5__0_n_0\,
      I3 => \disparity_reg_n_0_[2]\,
      O => \disparity[4]_i_8_n_0\
    );
\disparity[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9555A995"
    )
        port map (
      I0 => \disparity_reg_n_0_[4]\,
      I1 => \disparity[4]_i_19_n_0\,
      I2 => \disparity[4]_i_20_n_0\,
      I3 => \disparity[4]_i_21_n_0\,
      I4 => \disparity[4]_i_22_n_0\,
      O => \disparity[4]_i_9_n_0\
    );
\disparity_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[1]_i_1_n_0\,
      Q => \disparity_reg_n_0_[1]\,
      R => \disparity_reg[4]_0\
    );
\disparity_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[2]_i_1_n_0\,
      Q => \disparity_reg_n_0_[2]\,
      R => \disparity_reg[4]_0\
    );
\disparity_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[3]_i_1_n_0\,
      Q => \disparity_reg_n_0_[3]\,
      R => \disparity_reg[4]_0\
    );
\disparity_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \disparity[4]_i_2_n_0\,
      Q => \disparity_reg_n_0_[4]\,
      R => \disparity_reg[4]_0\
    );
\q_out[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"39C9"
    )
        port map (
      I0 => \disparity[4]_i_5_n_0\,
      I1 => R(0),
      I2 => \disparity[4]_i_4_n_0\,
      I3 => \disparity[2]_i_2_n_0\,
      O => \q_out[0]_i_1__0_n_0\
    );
\q_out[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => R(0),
      I1 => R(1),
      I2 => \disparity[2]_i_2_n_0\,
      I3 => \q_out[9]_i_1__0_n_0\,
      O => \q_out[1]_i_1__0_n_0\
    );
\q_out[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => R(1),
      I1 => R(2),
      I2 => R(0),
      I3 => \q_out[9]_i_1__0_n_0\,
      O => \q_out[2]_i_1__0_n_0\
    );
\q_out[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F96"
    )
        port map (
      I0 => \disparity[4]_i_5_n_0\,
      I1 => \disparity[2]_i_2_n_0\,
      I2 => \q_out[3]_i_2_n_0\,
      I3 => \disparity[4]_i_4_n_0\,
      O => \q_out[3]_i_1__0_n_0\
    );
\q_out[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => R(3),
      I1 => R(1),
      I2 => R(2),
      I3 => R(0),
      O => \q_out[3]_i_2_n_0\
    );
\q_out[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => R(3),
      I1 => R(1),
      I2 => R(2),
      I3 => R(0),
      I4 => R(4),
      I5 => \q_out[9]_i_1__0_n_0\,
      O => \q_out[4]_i_1__0_n_0\
    );
\q_out[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F6996"
    )
        port map (
      I0 => \disparity[4]_i_5_n_0\,
      I1 => \disparity[2]_i_2_n_0\,
      I2 => \q_out[5]_i_2_n_0\,
      I3 => R(5),
      I4 => \disparity[4]_i_4_n_0\,
      O => \q_out[5]_i_1__0_n_0\
    );
\q_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => R(4),
      I1 => R(0),
      I2 => R(2),
      I3 => R(1),
      I4 => R(3),
      O => \q_out[5]_i_2_n_0\
    );
\q_out[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \q_out[3]_i_2_n_0\,
      I1 => R(6),
      I2 => R(5),
      I3 => R(4),
      I4 => \q_out[9]_i_1__0_n_0\,
      O => \q_out[6]_i_1__0_n_0\
    );
\q_out[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC69"
    )
        port map (
      I0 => \disparity[4]_i_5_n_0\,
      I1 => \q_out[7]_i_2_n_0\,
      I2 => \disparity[2]_i_2_n_0\,
      I3 => \disparity[4]_i_4_n_0\,
      O => \q_out[7]_i_1__0_n_0\
    );
\q_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => R(1),
      I1 => R(2),
      I2 => R(3),
      I3 => R(0),
      I4 => R(7),
      I5 => \disparity[2]_i_7_n_0\,
      O => \q_out[7]_i_2_n_0\
    );
\q_out[8]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \disparity[2]_i_2_n_0\,
      O => \q_out[8]_i_1__0_n_0\
    );
\q_out[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \disparity[2]_i_2_n_0\,
      I1 => \disparity[4]_i_4_n_0\,
      I2 => \disparity[4]_i_5_n_0\,
      O => \q_out[9]_i_1__0_n_0\
    );
\q_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[0]_i_1__0_n_0\,
      Q => D(0),
      R => \disparity_reg[4]_0\
    );
\q_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[1]_i_1__0_n_0\,
      Q => D(1),
      R => \disparity_reg[4]_0\
    );
\q_out_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[2]_i_1__0_n_0\,
      Q => D(2),
      S => \disparity_reg[4]_0\
    );
\q_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[3]_i_1__0_n_0\,
      Q => D(3),
      R => \disparity_reg[4]_0\
    );
\q_out_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[4]_i_1__0_n_0\,
      Q => D(4),
      S => \disparity_reg[4]_0\
    );
\q_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[5]_i_1__0_n_0\,
      Q => D(5),
      R => \disparity_reg[4]_0\
    );
\q_out_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[6]_i_1__0_n_0\,
      Q => D(6),
      S => \disparity_reg[4]_0\
    );
\q_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[7]_i_1__0_n_0\,
      Q => D(7),
      R => \disparity_reg[4]_0\
    );
\q_out_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[8]_i_1__0_n_0\,
      Q => D(8),
      S => \disparity_reg[4]_0\
    );
\q_out_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \q_out[9]_i_1__0_n_0\,
      Q => D(9),
      S => \disparity_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_sync is
  port (
    CLK : out STD_LOGIC;
    s_h_sync_reg_0 : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    v_active : out STD_LOGIC;
    h_active : out STD_LOGIC;
    B_0_sp_1 : out STD_LOGIC;
    \B[0]_0\ : out STD_LOGIC;
    v_active_reg_0 : out STD_LOGIC;
    B_1_sp_1 : out STD_LOGIC;
    v_active_reg_1 : out STD_LOGIC;
    B_3_sp_1 : out STD_LOGIC;
    B_4_sp_1 : out STD_LOGIC;
    v_active_reg_2 : out STD_LOGIC;
    v_active_reg_3 : out STD_LOGIC;
    v_active_reg_4 : out STD_LOGIC;
    h_active_reg_0 : out STD_LOGIC;
    v_sync_reg_0 : out STD_LOGIC;
    clk250 : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \q_out_reg[0]\ : in STD_LOGIC;
    \q_out_reg[1]\ : in STD_LOGIC;
    \q_out_reg[3]\ : in STD_LOGIC;
    \q_out_reg[4]\ : in STD_LOGIC;
    \q_out_reg[6]\ : in STD_LOGIC;
    \q_out_reg[7]\ : in STD_LOGIC;
    \q_out_reg[9]\ : in STD_LOGIC;
    \q_out_reg[9]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_sync is
  signal B_0_sn_1 : STD_LOGIC;
  signal B_1_sn_1 : STD_LOGIC;
  signal B_3_sn_1 : STD_LOGIC;
  signal B_4_sn_1 : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal \Clock25.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \Clock25.count[1]_i_1_n_0\ : STD_LOGIC;
  signal \Clock25.count[2]_i_1_n_0\ : STD_LOGIC;
  signal \Clock25.count_reg_n_0_[0]\ : STD_LOGIC;
  signal \Clock25.count_reg_n_0_[1]\ : STD_LOGIC;
  signal \Clock25.count_reg_n_0_[2]\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \Horizontal_Active.h_count_reg\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \Horizontal_Sync.h_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \Horizontal_Sync.h_count_reg\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \Vertical_Active.v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \Vertical_Active.v_count_reg\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \Vertical_Sync.v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \Vertical_Sync.v_count_reg\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal clear : STD_LOGIC;
  signal clk25MHz_i_1_n_0 : STD_LOGIC;
  signal \^h_active\ : STD_LOGIC;
  signal h_active_i_1_n_0 : STD_LOGIC;
  signal h_active_i_2_n_0 : STD_LOGIC;
  signal h_active_i_3_n_0 : STD_LOGIC;
  signal h_count : STD_LOGIC;
  signal s_h_sync_i_2_n_0 : STD_LOGIC;
  signal s_h_sync_i_3_n_0 : STD_LOGIC;
  signal s_h_sync_i_4_n_0 : STD_LOGIC;
  signal \^s_h_sync_reg_0\ : STD_LOGIC;
  signal \^v_active\ : STD_LOGIC;
  signal v_active_i_1_n_0 : STD_LOGIC;
  signal v_active_i_2_n_0 : STD_LOGIC;
  signal v_active_i_3_n_0 : STD_LOGIC;
  signal \^v_active_reg_0\ : STD_LOGIC;
  signal v_count : STD_LOGIC;
  signal \^v_sync\ : STD_LOGIC;
  signal v_sync_i_1_n_0 : STD_LOGIC;
  signal v_sync_i_2_n_0 : STD_LOGIC;
  signal v_sync_i_3_n_0 : STD_LOGIC;
  signal v_sync_i_4_n_0 : STD_LOGIC;
  signal v_sync_i_5_n_0 : STD_LOGIC;
  signal v_sync_i_6_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Clock25.count[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Clock25.count[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Clock25.count[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Horizontal_Active.h_count[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Horizontal_Active.h_count[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Horizontal_Active.h_count[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Horizontal_Active.h_count[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Horizontal_Active.h_count[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Horizontal_Active.h_count[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Horizontal_Active.h_count[8]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Horizontal_Active.h_count[9]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Horizontal_Sync.h_count[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Horizontal_Sync.h_count[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Horizontal_Sync.h_count[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Horizontal_Sync.h_count[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Horizontal_Sync.h_count[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Horizontal_Sync.h_count[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Horizontal_Sync.h_count[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Horizontal_Sync.h_count[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Vertical_Active.v_count[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Vertical_Active.v_count[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Vertical_Active.v_count[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Vertical_Active.v_count[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Vertical_Active.v_count[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Vertical_Active.v_count[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Vertical_Active.v_count[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Vertical_Active.v_count[9]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Vertical_Active.v_count[9]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Vertical_Sync.v_count[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Vertical_Sync.v_count[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Vertical_Sync.v_count[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Vertical_Sync.v_count[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Vertical_Sync.v_count[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Vertical_Sync.v_count[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Vertical_Sync.v_count[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Vertical_Sync.v_count[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of clk25MHz_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \disparity[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_out[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_out[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s_h_sync_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of s_h_sync_i_3 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of v_active_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of v_sync_i_3 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of v_sync_i_6 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of video_en_INST_0 : label is "soft_lutpair7";
begin
  B_0_sp_1 <= B_0_sn_1;
  B_1_sp_1 <= B_1_sn_1;
  B_3_sp_1 <= B_3_sn_1;
  B_4_sp_1 <= B_4_sn_1;
  CLK <= \^clk\;
  h_active <= \^h_active\;
  s_h_sync_reg_0 <= \^s_h_sync_reg_0\;
  v_active <= \^v_active\;
  v_active_reg_0 <= \^v_active_reg_0\;
  v_sync <= \^v_sync\;
\Clock25.count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \Clock25.count_reg_n_0_[0]\,
      I1 => \Clock25.count_reg_n_0_[1]\,
      I2 => \Clock25.count_reg_n_0_[2]\,
      O => \Clock25.count[0]_i_1_n_0\
    );
\Clock25.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Clock25.count_reg_n_0_[0]\,
      I1 => \Clock25.count_reg_n_0_[1]\,
      O => \Clock25.count[1]_i_1_n_0\
    );
\Clock25.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => \Clock25.count_reg_n_0_[0]\,
      I1 => \Clock25.count_reg_n_0_[1]\,
      I2 => \Clock25.count_reg_n_0_[2]\,
      O => \Clock25.count[2]_i_1_n_0\
    );
\Clock25.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \Clock25.count[0]_i_1_n_0\,
      Q => \Clock25.count_reg_n_0_[0]\,
      R => '0'
    );
\Clock25.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \Clock25.count[1]_i_1_n_0\,
      Q => \Clock25.count_reg_n_0_[1]\,
      R => '0'
    );
\Clock25.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk250,
      CE => '1',
      D => \Clock25.count[2]_i_1_n_0\,
      Q => \Clock25.count_reg_n_0_[2]\,
      R => '0'
    );
\Horizontal_Active.h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(0),
      O => \Horizontal_Active.h_count[0]_i_1_n_0\
    );
\Horizontal_Active.h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(0),
      I1 => \Horizontal_Active.h_count_reg\(1),
      O => \Horizontal_Active.h_count[1]_i_1_n_0\
    );
\Horizontal_Active.h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(1),
      I1 => \Horizontal_Active.h_count_reg\(0),
      I2 => \Horizontal_Active.h_count_reg\(2),
      O => \Horizontal_Active.h_count[2]_i_1_n_0\
    );
\Horizontal_Active.h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(2),
      I1 => \Horizontal_Active.h_count_reg\(0),
      I2 => \Horizontal_Active.h_count_reg\(1),
      I3 => \Horizontal_Active.h_count_reg\(3),
      O => \Horizontal_Active.h_count[3]_i_1_n_0\
    );
\Horizontal_Active.h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(3),
      I1 => \Horizontal_Active.h_count_reg\(1),
      I2 => \Horizontal_Active.h_count_reg\(0),
      I3 => \Horizontal_Active.h_count_reg\(2),
      I4 => \Horizontal_Active.h_count_reg\(4),
      O => \Horizontal_Active.h_count[4]_i_1_n_0\
    );
\Horizontal_Active.h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(4),
      I1 => \Horizontal_Active.h_count_reg\(2),
      I2 => \Horizontal_Active.h_count_reg\(0),
      I3 => \Horizontal_Active.h_count_reg\(1),
      I4 => \Horizontal_Active.h_count_reg\(3),
      I5 => \Horizontal_Active.h_count_reg\(5),
      O => \Horizontal_Active.h_count[5]_i_1_n_0\
    );
\Horizontal_Active.h_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(5),
      I1 => \Horizontal_Active.h_count[8]_i_2_n_0\,
      I2 => \Horizontal_Active.h_count_reg\(4),
      I3 => \Horizontal_Active.h_count_reg\(6),
      O => \Horizontal_Active.h_count[6]_i_1_n_0\
    );
\Horizontal_Active.h_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(6),
      I1 => \Horizontal_Active.h_count_reg\(4),
      I2 => \Horizontal_Active.h_count[8]_i_2_n_0\,
      I3 => \Horizontal_Active.h_count_reg\(5),
      I4 => \Horizontal_Active.h_count_reg\(7),
      O => \Horizontal_Active.h_count[7]_i_1_n_0\
    );
\Horizontal_Active.h_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(7),
      I1 => \Horizontal_Active.h_count_reg\(5),
      I2 => \Horizontal_Active.h_count[8]_i_2_n_0\,
      I3 => \Horizontal_Active.h_count_reg\(4),
      I4 => \Horizontal_Active.h_count_reg\(6),
      I5 => \Horizontal_Active.h_count_reg\(8),
      O => \Horizontal_Active.h_count[8]_i_1_n_0\
    );
\Horizontal_Active.h_count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(2),
      I1 => \Horizontal_Active.h_count_reg\(0),
      I2 => \Horizontal_Active.h_count_reg\(1),
      I3 => \Horizontal_Active.h_count_reg\(3),
      O => \Horizontal_Active.h_count[8]_i_2_n_0\
    );
\Horizontal_Active.h_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(8),
      I1 => \Horizontal_Active.h_count_reg\(9),
      I2 => \Horizontal_Active.h_count_reg\(7),
      I3 => \Horizontal_Active.h_count_reg\(6),
      I4 => \Horizontal_Active.h_count_reg\(5),
      I5 => \Horizontal_Active.h_count[9]_i_3_n_0\,
      O => h_count
    );
\Horizontal_Active.h_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(8),
      I1 => \Horizontal_Active.h_count_reg\(6),
      I2 => \Horizontal_Active.h_count[9]_i_3_n_0\,
      I3 => \Horizontal_Active.h_count_reg\(5),
      I4 => \Horizontal_Active.h_count_reg\(7),
      I5 => \Horizontal_Active.h_count_reg\(9),
      O => \Horizontal_Active.h_count[9]_i_2_n_0\
    );
\Horizontal_Active.h_count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(3),
      I1 => \Horizontal_Active.h_count_reg\(1),
      I2 => \Horizontal_Active.h_count_reg\(0),
      I3 => \Horizontal_Active.h_count_reg\(2),
      I4 => \Horizontal_Active.h_count_reg\(4),
      O => \Horizontal_Active.h_count[9]_i_3_n_0\
    );
\Horizontal_Active.h_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[0]_i_1_n_0\,
      Q => \Horizontal_Active.h_count_reg\(0),
      R => h_count
    );
\Horizontal_Active.h_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[1]_i_1_n_0\,
      Q => \Horizontal_Active.h_count_reg\(1),
      R => h_count
    );
\Horizontal_Active.h_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[2]_i_1_n_0\,
      Q => \Horizontal_Active.h_count_reg\(2),
      R => h_count
    );
\Horizontal_Active.h_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[3]_i_1_n_0\,
      Q => \Horizontal_Active.h_count_reg\(3),
      R => h_count
    );
\Horizontal_Active.h_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[4]_i_1_n_0\,
      Q => \Horizontal_Active.h_count_reg\(4),
      R => h_count
    );
\Horizontal_Active.h_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[5]_i_1_n_0\,
      Q => \Horizontal_Active.h_count_reg\(5),
      R => h_count
    );
\Horizontal_Active.h_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[6]_i_1_n_0\,
      Q => \Horizontal_Active.h_count_reg\(6),
      R => h_count
    );
\Horizontal_Active.h_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[7]_i_1_n_0\,
      Q => \Horizontal_Active.h_count_reg\(7),
      R => h_count
    );
\Horizontal_Active.h_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[8]_i_1_n_0\,
      Q => \Horizontal_Active.h_count_reg\(8),
      R => h_count
    );
\Horizontal_Active.h_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Active.h_count[9]_i_2_n_0\,
      Q => \Horizontal_Active.h_count_reg\(9),
      R => h_count
    );
\Horizontal_Sync.h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(0),
      O => \Horizontal_Sync.h_count[0]_i_1_n_0\
    );
\Horizontal_Sync.h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(0),
      I1 => \Horizontal_Sync.h_count_reg\(1),
      O => \Horizontal_Sync.h_count[1]_i_1_n_0\
    );
\Horizontal_Sync.h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(1),
      I1 => \Horizontal_Sync.h_count_reg\(0),
      I2 => \Horizontal_Sync.h_count_reg\(2),
      O => \Horizontal_Sync.h_count[2]_i_1_n_0\
    );
\Horizontal_Sync.h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(2),
      I1 => \Horizontal_Sync.h_count_reg\(0),
      I2 => \Horizontal_Sync.h_count_reg\(1),
      I3 => \Horizontal_Sync.h_count_reg\(3),
      O => \Horizontal_Sync.h_count[3]_i_1_n_0\
    );
\Horizontal_Sync.h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(3),
      I1 => \Horizontal_Sync.h_count_reg\(1),
      I2 => \Horizontal_Sync.h_count_reg\(0),
      I3 => \Horizontal_Sync.h_count_reg\(2),
      I4 => \Horizontal_Sync.h_count_reg\(4),
      O => \Horizontal_Sync.h_count[4]_i_1_n_0\
    );
\Horizontal_Sync.h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(4),
      I1 => \Horizontal_Sync.h_count_reg\(2),
      I2 => \Horizontal_Sync.h_count_reg\(0),
      I3 => \Horizontal_Sync.h_count_reg\(1),
      I4 => \Horizontal_Sync.h_count_reg\(3),
      I5 => \Horizontal_Sync.h_count_reg\(5),
      O => \Horizontal_Sync.h_count[5]_i_1_n_0\
    );
\Horizontal_Sync.h_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(5),
      I1 => s_h_sync_i_3_n_0,
      I2 => \Horizontal_Sync.h_count_reg\(6),
      O => \Horizontal_Sync.h_count[6]_i_1_n_0\
    );
\Horizontal_Sync.h_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(6),
      I1 => s_h_sync_i_3_n_0,
      I2 => \Horizontal_Sync.h_count_reg\(5),
      I3 => \Horizontal_Sync.h_count_reg\(7),
      O => \Horizontal_Sync.h_count[7]_i_1_n_0\
    );
\Horizontal_Sync.h_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(7),
      I1 => \Horizontal_Sync.h_count_reg\(5),
      I2 => s_h_sync_i_3_n_0,
      I3 => \Horizontal_Sync.h_count_reg\(6),
      I4 => \Horizontal_Sync.h_count_reg\(8),
      O => \Horizontal_Sync.h_count[8]_i_1_n_0\
    );
\Horizontal_Sync.h_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(8),
      I1 => \Horizontal_Sync.h_count_reg\(6),
      I2 => s_h_sync_i_3_n_0,
      I3 => \Horizontal_Sync.h_count_reg\(5),
      I4 => \Horizontal_Sync.h_count_reg\(7),
      I5 => \Horizontal_Sync.h_count_reg\(9),
      O => \Horizontal_Sync.h_count[9]_i_1_n_0\
    );
\Horizontal_Sync.h_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[0]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(0),
      R => clear
    );
\Horizontal_Sync.h_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[1]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(1),
      R => clear
    );
\Horizontal_Sync.h_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[2]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(2),
      R => clear
    );
\Horizontal_Sync.h_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[3]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(3),
      R => clear
    );
\Horizontal_Sync.h_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[4]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(4),
      R => clear
    );
\Horizontal_Sync.h_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[5]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(5),
      R => clear
    );
\Horizontal_Sync.h_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[6]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(6),
      R => clear
    );
\Horizontal_Sync.h_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[7]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(7),
      R => clear
    );
\Horizontal_Sync.h_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[8]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(8),
      R => clear
    );
\Horizontal_Sync.h_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Horizontal_Sync.h_count[9]_i_1_n_0\,
      Q => \Horizontal_Sync.h_count_reg\(9),
      R => clear
    );
\Vertical_Active.v_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(0),
      O => \Vertical_Active.v_count[0]_i_1_n_0\
    );
\Vertical_Active.v_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(0),
      I1 => \Vertical_Active.v_count_reg\(1),
      O => \Vertical_Active.v_count[1]_i_1_n_0\
    );
\Vertical_Active.v_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(2),
      I1 => \Vertical_Active.v_count_reg\(1),
      I2 => \Vertical_Active.v_count_reg\(0),
      O => \Vertical_Active.v_count[2]_i_1_n_0\
    );
\Vertical_Active.v_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(3),
      I1 => \Vertical_Active.v_count_reg\(0),
      I2 => \Vertical_Active.v_count_reg\(1),
      I3 => \Vertical_Active.v_count_reg\(2),
      O => \Vertical_Active.v_count[3]_i_1_n_0\
    );
\Vertical_Active.v_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(4),
      I1 => \Vertical_Active.v_count_reg\(2),
      I2 => \Vertical_Active.v_count_reg\(1),
      I3 => \Vertical_Active.v_count_reg\(0),
      I4 => \Vertical_Active.v_count_reg\(3),
      O => \Vertical_Active.v_count[4]_i_1_n_0\
    );
\Vertical_Active.v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(5),
      I1 => \Vertical_Active.v_count_reg\(3),
      I2 => \Vertical_Active.v_count_reg\(0),
      I3 => \Vertical_Active.v_count_reg\(1),
      I4 => \Vertical_Active.v_count_reg\(2),
      I5 => \Vertical_Active.v_count_reg\(4),
      O => \Vertical_Active.v_count[5]_i_1_n_0\
    );
\Vertical_Active.v_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(6),
      I1 => \Vertical_Active.v_count[9]_i_4_n_0\,
      O => \Vertical_Active.v_count[6]_i_1_n_0\
    );
\Vertical_Active.v_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(7),
      I1 => \Vertical_Active.v_count[9]_i_4_n_0\,
      I2 => \Vertical_Active.v_count_reg\(6),
      O => \Vertical_Active.v_count[7]_i_1_n_0\
    );
\Vertical_Active.v_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(8),
      I1 => \Vertical_Active.v_count_reg\(6),
      I2 => \Vertical_Active.v_count[9]_i_4_n_0\,
      I3 => \Vertical_Active.v_count_reg\(7),
      O => \Vertical_Active.v_count[8]_i_1_n_0\
    );
\Vertical_Active.v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \Vertical_Active.v_count[9]_i_3_n_0\,
      I1 => \Vertical_Active.v_count_reg\(1),
      I2 => \Vertical_Active.v_count_reg\(0),
      I3 => \Vertical_Active.v_count_reg\(3),
      I4 => \Vertical_Active.v_count_reg\(2),
      I5 => \Vertical_Active.v_count[9]_i_2_n_0\,
      O => v_count
    );
\Vertical_Active.v_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(9),
      I1 => \Vertical_Active.v_count_reg\(7),
      I2 => \Vertical_Active.v_count[9]_i_4_n_0\,
      I3 => \Vertical_Active.v_count_reg\(6),
      I4 => \Vertical_Active.v_count_reg\(8),
      O => \Vertical_Active.v_count[9]_i_2_n_0\
    );
\Vertical_Active.v_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000001"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(8),
      I1 => \Vertical_Active.v_count_reg\(7),
      I2 => \Vertical_Active.v_count_reg\(6),
      I3 => \Vertical_Active.v_count_reg\(4),
      I4 => \Vertical_Active.v_count[9]_i_5_n_0\,
      I5 => \Vertical_Active.v_count_reg\(5),
      O => \Vertical_Active.v_count[9]_i_3_n_0\
    );
\Vertical_Active.v_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(5),
      I1 => \Vertical_Active.v_count_reg\(3),
      I2 => \Vertical_Active.v_count_reg\(0),
      I3 => \Vertical_Active.v_count_reg\(1),
      I4 => \Vertical_Active.v_count_reg\(2),
      I5 => \Vertical_Active.v_count_reg\(4),
      O => \Vertical_Active.v_count[9]_i_4_n_0\
    );
\Vertical_Active.v_count[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(3),
      I1 => \Vertical_Active.v_count_reg\(0),
      I2 => \Vertical_Active.v_count_reg\(1),
      I3 => \Vertical_Active.v_count_reg\(2),
      O => \Vertical_Active.v_count[9]_i_5_n_0\
    );
\Vertical_Active.v_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[0]_i_1_n_0\,
      Q => \Vertical_Active.v_count_reg\(0),
      R => v_count
    );
\Vertical_Active.v_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[1]_i_1_n_0\,
      Q => \Vertical_Active.v_count_reg\(1),
      R => v_count
    );
\Vertical_Active.v_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[2]_i_1_n_0\,
      Q => \Vertical_Active.v_count_reg\(2),
      R => v_count
    );
\Vertical_Active.v_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[3]_i_1_n_0\,
      Q => \Vertical_Active.v_count_reg\(3),
      R => v_count
    );
\Vertical_Active.v_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[4]_i_1_n_0\,
      Q => \Vertical_Active.v_count_reg\(4),
      R => v_count
    );
\Vertical_Active.v_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[5]_i_1_n_0\,
      Q => \Vertical_Active.v_count_reg\(5),
      R => v_count
    );
\Vertical_Active.v_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[6]_i_1_n_0\,
      Q => \Vertical_Active.v_count_reg\(6),
      R => v_count
    );
\Vertical_Active.v_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[7]_i_1_n_0\,
      Q => \Vertical_Active.v_count_reg\(7),
      R => v_count
    );
\Vertical_Active.v_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[8]_i_1_n_0\,
      Q => \Vertical_Active.v_count_reg\(8),
      R => v_count
    );
\Vertical_Active.v_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Active.v_count[9]_i_2_n_0\,
      Q => \Vertical_Active.v_count_reg\(9),
      R => v_count
    );
\Vertical_Sync.v_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(0),
      O => \Vertical_Sync.v_count[0]_i_1_n_0\
    );
\Vertical_Sync.v_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(1),
      I1 => \Vertical_Sync.v_count_reg\(0),
      O => \Vertical_Sync.v_count[1]_i_1_n_0\
    );
\Vertical_Sync.v_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(2),
      I1 => \Vertical_Sync.v_count_reg\(0),
      I2 => \Vertical_Sync.v_count_reg\(1),
      O => \Vertical_Sync.v_count[2]_i_1_n_0\
    );
\Vertical_Sync.v_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(3),
      I1 => \Vertical_Sync.v_count_reg\(1),
      I2 => \Vertical_Sync.v_count_reg\(0),
      I3 => \Vertical_Sync.v_count_reg\(2),
      O => \Vertical_Sync.v_count[3]_i_1_n_0\
    );
\Vertical_Sync.v_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(4),
      I1 => \Vertical_Sync.v_count_reg\(2),
      I2 => \Vertical_Sync.v_count_reg\(0),
      I3 => \Vertical_Sync.v_count_reg\(1),
      I4 => \Vertical_Sync.v_count_reg\(3),
      O => \Vertical_Sync.v_count[4]_i_1_n_0\
    );
\Vertical_Sync.v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(5),
      I1 => \Vertical_Sync.v_count_reg\(3),
      I2 => \Vertical_Sync.v_count_reg\(1),
      I3 => \Vertical_Sync.v_count_reg\(0),
      I4 => \Vertical_Sync.v_count_reg\(2),
      I5 => \Vertical_Sync.v_count_reg\(4),
      O => \Vertical_Sync.v_count[5]_i_1_n_0\
    );
\Vertical_Sync.v_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(6),
      I1 => \Vertical_Sync.v_count[9]_i_2_n_0\,
      O => \Vertical_Sync.v_count[6]_i_1_n_0\
    );
\Vertical_Sync.v_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(7),
      I1 => \Vertical_Sync.v_count[9]_i_2_n_0\,
      I2 => \Vertical_Sync.v_count_reg\(6),
      O => \Vertical_Sync.v_count[7]_i_1_n_0\
    );
\Vertical_Sync.v_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(8),
      I1 => \Vertical_Sync.v_count_reg\(6),
      I2 => \Vertical_Sync.v_count[9]_i_2_n_0\,
      I3 => \Vertical_Sync.v_count_reg\(7),
      O => \Vertical_Sync.v_count[8]_i_1_n_0\
    );
\Vertical_Sync.v_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(9),
      I1 => \Vertical_Sync.v_count_reg\(7),
      I2 => \Vertical_Sync.v_count[9]_i_2_n_0\,
      I3 => \Vertical_Sync.v_count_reg\(6),
      I4 => \Vertical_Sync.v_count_reg\(8),
      O => \Vertical_Sync.v_count[9]_i_1_n_0\
    );
\Vertical_Sync.v_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(5),
      I1 => \Vertical_Sync.v_count_reg\(3),
      I2 => \Vertical_Sync.v_count_reg\(1),
      I3 => \Vertical_Sync.v_count_reg\(0),
      I4 => \Vertical_Sync.v_count_reg\(2),
      I5 => \Vertical_Sync.v_count_reg\(4),
      O => \Vertical_Sync.v_count[9]_i_2_n_0\
    );
\Vertical_Sync.v_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[0]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(0),
      R => v_sync_i_1_n_0
    );
\Vertical_Sync.v_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[1]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(1),
      R => v_sync_i_1_n_0
    );
\Vertical_Sync.v_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[2]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(2),
      R => v_sync_i_1_n_0
    );
\Vertical_Sync.v_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[3]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(3),
      R => v_sync_i_1_n_0
    );
\Vertical_Sync.v_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[4]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(4),
      R => v_sync_i_1_n_0
    );
\Vertical_Sync.v_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[5]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(5),
      R => v_sync_i_1_n_0
    );
\Vertical_Sync.v_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[6]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(6),
      R => v_sync_i_1_n_0
    );
\Vertical_Sync.v_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[7]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(7),
      R => v_sync_i_1_n_0
    );
\Vertical_Sync.v_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[8]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(8),
      R => v_sync_i_1_n_0
    );
\Vertical_Sync.v_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => \Vertical_Sync.v_count[9]_i_1_n_0\,
      Q => \Vertical_Sync.v_count_reg\(9),
      R => v_sync_i_1_n_0
    );
clk25MHz_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => \Clock25.count_reg_n_0_[0]\,
      I1 => \Clock25.count_reg_n_0_[1]\,
      I2 => \Clock25.count_reg_n_0_[2]\,
      I3 => \^clk\,
      O => clk25MHz_i_1_n_0
    );
clk25MHz_reg: unisim.vcomponents.FDRE
     port map (
      C => clk250,
      CE => '1',
      D => clk25MHz_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
\disparity[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^h_active\,
      I1 => \^v_active\,
      O => h_active_reg_0
    );
h_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB0A"
    )
        port map (
      I0 => h_active_i_2_n_0,
      I1 => h_active_i_3_n_0,
      I2 => \Horizontal_Active.h_count[8]_i_2_n_0\,
      I3 => \^h_active\,
      O => h_active_i_1_n_0
    );
h_active_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(7),
      I1 => \Horizontal_Active.h_count_reg\(6),
      I2 => \Horizontal_Active.h_count_reg\(4),
      I3 => \Horizontal_Active.h_count_reg\(5),
      I4 => \Horizontal_Active.h_count_reg\(9),
      I5 => \Horizontal_Active.h_count_reg\(8),
      O => h_active_i_2_n_0
    );
h_active_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \Horizontal_Active.h_count_reg\(6),
      I1 => \Horizontal_Active.h_count_reg\(7),
      I2 => \Horizontal_Active.h_count_reg\(4),
      I3 => \Horizontal_Active.h_count_reg\(5),
      I4 => \Horizontal_Active.h_count_reg\(9),
      I5 => \Horizontal_Active.h_count_reg\(8),
      O => h_active_i_3_n_0
    );
h_active_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => h_active_i_1_n_0,
      Q => \^h_active\,
      R => '0'
    );
\q_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9FFF9000"
    )
        port map (
      I0 => B(0),
      I1 => \q_out_reg[0]\,
      I2 => \^v_active\,
      I3 => \^h_active\,
      I4 => \^s_h_sync_reg_0\,
      O => B_0_sn_1
    );
\q_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => B(0),
      I1 => B(1),
      I2 => \q_out_reg[1]\,
      I3 => \q_out_reg[0]\,
      I4 => \^v_active_reg_0\,
      I5 => \^s_h_sync_reg_0\,
      O => \B[0]_0\
    );
\q_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"966900009669FFFF"
    )
        port map (
      I0 => B(1),
      I1 => B(2),
      I2 => B(0),
      I3 => \q_out_reg[0]\,
      I4 => \^v_active_reg_0\,
      I5 => \^s_h_sync_reg_0\,
      O => B_1_sn_1
    );
\q_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9FFF9000"
    )
        port map (
      I0 => \q_out_reg[3]\,
      I1 => \q_out_reg[0]\,
      I2 => \^v_active\,
      I3 => \^h_active\,
      I4 => \^s_h_sync_reg_0\,
      O => v_active_reg_1
    );
\q_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"699600006996FFFF"
    )
        port map (
      I0 => B(3),
      I1 => \q_out_reg[4]\,
      I2 => B(4),
      I3 => \q_out_reg[0]\,
      I4 => \^v_active_reg_0\,
      I5 => \^s_h_sync_reg_0\,
      O => B_3_sn_1
    );
\q_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669FFFF96690000"
    )
        port map (
      I0 => \q_out_reg[3]\,
      I1 => B(4),
      I2 => B(5),
      I3 => \q_out_reg[0]\,
      I4 => \^v_active_reg_0\,
      I5 => \^s_h_sync_reg_0\,
      O => B_4_sn_1
    );
\q_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90009FFF"
    )
        port map (
      I0 => \q_out_reg[6]\,
      I1 => \q_out_reg[0]\,
      I2 => \^v_active\,
      I3 => \^h_active\,
      I4 => \^s_h_sync_reg_0\,
      O => v_active_reg_2
    );
\q_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FFF6000"
    )
        port map (
      I0 => \q_out_reg[7]\,
      I1 => \q_out_reg[0]\,
      I2 => \^v_active\,
      I3 => \^h_active\,
      I4 => \^s_h_sync_reg_0\,
      O => v_active_reg_3
    );
\q_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => \q_out_reg[1]\,
      I1 => \^v_active\,
      I2 => \^h_active\,
      I3 => \^s_h_sync_reg_0\,
      O => v_active_reg_4
    );
\q_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC3C3C355C3C3C3"
    )
        port map (
      I0 => \q_out_reg[9]\,
      I1 => \^v_sync\,
      I2 => \^s_h_sync_reg_0\,
      I3 => \^h_active\,
      I4 => \^v_active\,
      I5 => \q_out_reg[9]_0\,
      O => v_sync_reg_0
    );
s_h_sync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(8),
      I1 => \Horizontal_Sync.h_count_reg\(9),
      I2 => \Horizontal_Sync.h_count_reg\(7),
      I3 => \Horizontal_Sync.h_count_reg\(6),
      I4 => \Horizontal_Sync.h_count_reg\(5),
      I5 => s_h_sync_i_3_n_0,
      O => clear
    );
s_h_sync_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_h_sync_i_3_n_0,
      I1 => s_h_sync_i_4_n_0,
      I2 => \^s_h_sync_reg_0\,
      O => s_h_sync_i_2_n_0
    );
s_h_sync_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(3),
      I1 => \Horizontal_Sync.h_count_reg\(1),
      I2 => \Horizontal_Sync.h_count_reg\(0),
      I3 => \Horizontal_Sync.h_count_reg\(2),
      I4 => \Horizontal_Sync.h_count_reg\(4),
      O => s_h_sync_i_3_n_0
    );
s_h_sync_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \Horizontal_Sync.h_count_reg\(5),
      I1 => \Horizontal_Sync.h_count_reg\(6),
      I2 => \Horizontal_Sync.h_count_reg\(7),
      I3 => \Horizontal_Sync.h_count_reg\(9),
      I4 => \Horizontal_Sync.h_count_reg\(8),
      O => s_h_sync_i_4_n_0
    );
s_h_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => s_h_sync_i_2_n_0,
      Q => \^s_h_sync_reg_0\,
      R => clear
    );
v_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABA2"
    )
        port map (
      I0 => \^v_active\,
      I1 => \Vertical_Active.v_count[9]_i_2_n_0\,
      I2 => v_active_i_2_n_0,
      I3 => \Vertical_Active.v_count[5]_i_1_n_0\,
      I4 => \Vertical_Active.v_count[8]_i_1_n_0\,
      I5 => v_active_i_3_n_0,
      O => v_active_i_1_n_0
    );
v_active_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(1),
      I1 => \Vertical_Active.v_count_reg\(0),
      I2 => \Vertical_Active.v_count_reg\(3),
      I3 => \Vertical_Active.v_count_reg\(2),
      O => v_active_i_2_n_0
    );
v_active_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFEEFFE"
    )
        port map (
      I0 => \Vertical_Active.v_count_reg\(7),
      I1 => \Vertical_Active.v_count_reg\(6),
      I2 => \Vertical_Active.v_count_reg\(4),
      I3 => \Vertical_Active.v_count[9]_i_5_n_0\,
      I4 => \Vertical_Active.v_count_reg\(5),
      O => v_active_i_3_n_0
    );
v_active_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => v_active_i_1_n_0,
      Q => \^v_active\,
      R => '0'
    );
v_sync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000001"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(7),
      I1 => \Vertical_Sync.v_count_reg\(5),
      I2 => v_sync_i_3_n_0,
      I3 => \Vertical_Sync.v_count_reg\(6),
      I4 => \Vertical_Sync.v_count_reg\(8),
      I5 => v_sync_i_4_n_0,
      O => v_sync_i_1_n_0
    );
v_sync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \Vertical_Sync.v_count[9]_i_1_n_0\,
      I1 => v_sync_i_5_n_0,
      I2 => v_sync_i_6_n_0,
      I3 => \^v_sync\,
      O => v_sync_i_2_n_0
    );
v_sync_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(4),
      I1 => \Vertical_Sync.v_count_reg\(2),
      I2 => \Vertical_Sync.v_count_reg\(0),
      I3 => \Vertical_Sync.v_count_reg\(1),
      I4 => \Vertical_Sync.v_count_reg\(3),
      O => v_sync_i_3_n_0
    );
v_sync_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFFFF"
    )
        port map (
      I0 => \Vertical_Sync.v_count[9]_i_1_n_0\,
      I1 => \Vertical_Sync.v_count_reg\(0),
      I2 => \Vertical_Sync.v_count_reg\(1),
      I3 => \Vertical_Sync.v_count_reg\(3),
      I4 => \Vertical_Sync.v_count_reg\(2),
      I5 => \Vertical_Sync.v_count_reg\(4),
      O => v_sync_i_4_n_0
    );
v_sync_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000001"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(8),
      I1 => \Vertical_Sync.v_count_reg\(6),
      I2 => v_sync_i_3_n_0,
      I3 => \Vertical_Sync.v_count_reg\(5),
      I4 => \Vertical_Sync.v_count_reg\(7),
      O => v_sync_i_5_n_0
    );
v_sync_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \Vertical_Sync.v_count_reg\(4),
      I1 => \Vertical_Sync.v_count_reg\(2),
      I2 => \Vertical_Sync.v_count_reg\(3),
      I3 => \Vertical_Sync.v_count_reg\(1),
      I4 => \Vertical_Sync.v_count_reg\(0),
      O => v_sync_i_6_n_0
    );
v_sync_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^s_h_sync_reg_0\,
      CE => '1',
      D => v_sync_i_2_n_0,
      Q => \^v_sync\,
      R => v_sync_i_1_n_0
    );
video_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^v_active\,
      I1 => \^h_active\,
      O => \^v_active_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_out is
  port (
    v_active_reg : out STD_LOGIC;
    HDMI_clk_p : out STD_LOGIC;
    HDMI_clk_n : out STD_LOGIC;
    clk25MHz_reg : out STD_LOGIC;
    HDMI_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    HDMI_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_h_sync_reg : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    G : in STD_LOGIC_VECTOR ( 7 downto 0 );
    R : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk250 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_out;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_out is
  signal Sync_n_10 : STD_LOGIC;
  signal Sync_n_11 : STD_LOGIC;
  signal Sync_n_12 : STD_LOGIC;
  signal Sync_n_13 : STD_LOGIC;
  signal Sync_n_14 : STD_LOGIC;
  signal Sync_n_15 : STD_LOGIC;
  signal Sync_n_16 : STD_LOGIC;
  signal Sync_n_5 : STD_LOGIC;
  signal Sync_n_6 : STD_LOGIC;
  signal Sync_n_8 : STD_LOGIC;
  signal Sync_n_9 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_0 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_1 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_10 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_11 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_12 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_13 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_14 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_15 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_16 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_17 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_2 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_3 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_4 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_5 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_6 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_7 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_8 : STD_LOGIC;
  signal TDMS_ENCODER_B_n_9 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_0 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_1 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_2 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_3 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_4 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_5 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_6 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_7 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_8 : STD_LOGIC;
  signal TDMS_ENCODER_G_n_9 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_0 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_1 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_2 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_3 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_4 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_5 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_6 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_7 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_8 : STD_LOGIC;
  signal TDMS_ENCODER_R_n_9 : STD_LOGIC;
  signal \^clk25mhz_reg\ : STD_LOGIC;
  signal h_active : STD_LOGIC;
  signal tmds_b_shift : STD_LOGIC;
  signal tmds_g_shift : STD_LOGIC;
  signal tmds_r_shift : STD_LOGIC;
  signal v_active : STD_LOGIC;
  signal \^v_active_reg\ : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of obuf_b : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of obuf_b : label is "PRIMITIVE";
  attribute CAPACITANCE of obuf_clk : label is "DONT_CARE";
  attribute box_type of obuf_clk : label is "PRIMITIVE";
  attribute CAPACITANCE of obuf_g : label is "DONT_CARE";
  attribute box_type of obuf_g : label is "PRIMITIVE";
  attribute CAPACITANCE of obuf_r : label is "DONT_CARE";
  attribute box_type of obuf_r : label is "PRIMITIVE";
begin
  clk25MHz_reg <= \^clk25mhz_reg\;
  v_active_reg <= \^v_active_reg\;
SR_b: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register
     port map (
      D(9) => TDMS_ENCODER_B_n_0,
      D(8) => TDMS_ENCODER_B_n_1,
      D(7) => TDMS_ENCODER_B_n_2,
      D(6) => TDMS_ENCODER_B_n_3,
      D(5) => TDMS_ENCODER_B_n_4,
      D(4) => TDMS_ENCODER_B_n_5,
      D(3) => TDMS_ENCODER_B_n_6,
      D(2) => TDMS_ENCODER_B_n_7,
      D(1) => TDMS_ENCODER_B_n_8,
      D(0) => TDMS_ENCODER_B_n_9,
      clk250 => clk250,
      tmds_b_shift => tmds_b_shift
    );
SR_g: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0
     port map (
      D(9) => TDMS_ENCODER_G_n_0,
      D(8) => TDMS_ENCODER_G_n_1,
      D(7) => TDMS_ENCODER_G_n_2,
      D(6) => TDMS_ENCODER_G_n_3,
      D(5) => TDMS_ENCODER_G_n_4,
      D(4) => TDMS_ENCODER_G_n_5,
      D(3) => TDMS_ENCODER_G_n_6,
      D(2) => TDMS_ENCODER_G_n_7,
      D(1) => TDMS_ENCODER_G_n_8,
      D(0) => TDMS_ENCODER_G_n_9,
      clk250 => clk250,
      tmds_g_shift => tmds_g_shift
    );
SR_r: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_1
     port map (
      D(9) => TDMS_ENCODER_R_n_0,
      D(8) => TDMS_ENCODER_R_n_1,
      D(7) => TDMS_ENCODER_R_n_2,
      D(6) => TDMS_ENCODER_R_n_3,
      D(5) => TDMS_ENCODER_R_n_4,
      D(4) => TDMS_ENCODER_R_n_5,
      D(3) => TDMS_ENCODER_R_n_6,
      D(2) => TDMS_ENCODER_R_n_7,
      D(1) => TDMS_ENCODER_R_n_8,
      D(0) => TDMS_ENCODER_R_n_9,
      clk250 => clk250,
      tmds_r_shift => tmds_r_shift
    );
Sync: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_sync
     port map (
      B(5 downto 0) => B(5 downto 0),
      \B[0]_0\ => Sync_n_6,
      B_0_sp_1 => Sync_n_5,
      B_1_sp_1 => Sync_n_8,
      B_3_sp_1 => Sync_n_10,
      B_4_sp_1 => Sync_n_11,
      CLK => \^clk25mhz_reg\,
      clk250 => clk250,
      h_active => h_active,
      h_active_reg_0 => Sync_n_15,
      \q_out_reg[0]\ => TDMS_ENCODER_B_n_13,
      \q_out_reg[1]\ => TDMS_ENCODER_B_n_12,
      \q_out_reg[3]\ => TDMS_ENCODER_B_n_15,
      \q_out_reg[4]\ => TDMS_ENCODER_B_n_10,
      \q_out_reg[6]\ => TDMS_ENCODER_B_n_16,
      \q_out_reg[7]\ => TDMS_ENCODER_B_n_17,
      \q_out_reg[9]\ => TDMS_ENCODER_B_n_11,
      \q_out_reg[9]_0\ => TDMS_ENCODER_B_n_14,
      s_h_sync_reg_0 => s_h_sync_reg,
      v_active => v_active,
      v_active_reg_0 => \^v_active_reg\,
      v_active_reg_1 => Sync_n_9,
      v_active_reg_2 => Sync_n_12,
      v_active_reg_3 => Sync_n_13,
      v_active_reg_4 => Sync_n_14,
      v_sync => v_sync,
      v_sync_reg_0 => Sync_n_16
    );
TDMS_ENCODER_B: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder
     port map (
      B(7 downto 0) => B(7 downto 0),
      \B[0]_0\ => TDMS_ENCODER_B_n_12,
      \B[0]_1\ => TDMS_ENCODER_B_n_14,
      \B[0]_2\ => TDMS_ENCODER_B_n_15,
      B_0_sp_1 => TDMS_ENCODER_B_n_10,
      B_3_sp_1 => TDMS_ENCODER_B_n_17,
      B_4_sp_1 => TDMS_ENCODER_B_n_16,
      CLK => \^clk25mhz_reg\,
      D(9) => TDMS_ENCODER_B_n_0,
      D(8) => TDMS_ENCODER_B_n_1,
      D(7) => TDMS_ENCODER_B_n_2,
      D(6) => TDMS_ENCODER_B_n_3,
      D(5) => TDMS_ENCODER_B_n_4,
      D(4) => TDMS_ENCODER_B_n_5,
      D(3) => TDMS_ENCODER_B_n_6,
      D(2) => TDMS_ENCODER_B_n_7,
      D(1) => TDMS_ENCODER_B_n_8,
      D(0) => TDMS_ENCODER_B_n_9,
      \disparity_reg[4]_0\ => TDMS_ENCODER_B_n_11,
      \disparity_reg[4]_1\ => TDMS_ENCODER_B_n_13,
      \disparity_reg[4]_2\ => Sync_n_15,
      \q_out_reg[0]_0\ => Sync_n_5,
      \q_out_reg[1]_0\ => Sync_n_6,
      \q_out_reg[2]_0\ => Sync_n_8,
      \q_out_reg[3]_0\ => Sync_n_9,
      \q_out_reg[4]_0\ => Sync_n_10,
      \q_out_reg[5]_0\ => Sync_n_11,
      \q_out_reg[6]_0\ => Sync_n_12,
      \q_out_reg[7]_0\ => Sync_n_13,
      \q_out_reg[8]_0\ => Sync_n_14,
      \q_out_reg[9]_0\ => Sync_n_16
    );
TDMS_ENCODER_G: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_2
     port map (
      CLK => \^clk25mhz_reg\,
      D(9) => TDMS_ENCODER_G_n_0,
      D(8) => TDMS_ENCODER_G_n_1,
      D(7) => TDMS_ENCODER_G_n_2,
      D(6) => TDMS_ENCODER_G_n_3,
      D(5) => TDMS_ENCODER_G_n_4,
      D(4) => TDMS_ENCODER_G_n_5,
      D(3) => TDMS_ENCODER_G_n_6,
      D(2) => TDMS_ENCODER_G_n_7,
      D(1) => TDMS_ENCODER_G_n_8,
      D(0) => TDMS_ENCODER_G_n_9,
      G(7 downto 0) => G(7 downto 0),
      \disparity_reg[1]_0\ => Sync_n_15,
      h_active => h_active,
      \q_out_reg[5]_0\ => \^v_active_reg\,
      v_active => v_active
    );
TDMS_ENCODER_R: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tmds_encoder_3
     port map (
      CLK => \^clk25mhz_reg\,
      D(9) => TDMS_ENCODER_R_n_0,
      D(8) => TDMS_ENCODER_R_n_1,
      D(7) => TDMS_ENCODER_R_n_2,
      D(6) => TDMS_ENCODER_R_n_3,
      D(5) => TDMS_ENCODER_R_n_4,
      D(4) => TDMS_ENCODER_R_n_5,
      D(3) => TDMS_ENCODER_R_n_6,
      D(2) => TDMS_ENCODER_R_n_7,
      D(1) => TDMS_ENCODER_R_n_8,
      D(0) => TDMS_ENCODER_R_n_9,
      R(7 downto 0) => R(7 downto 0),
      \disparity_reg[4]_0\ => Sync_n_15
    );
obuf_b: unisim.vcomponents.OBUFDS
     port map (
      I => tmds_b_shift,
      O => HDMI_data_p(0),
      OB => HDMI_data_n(0)
    );
obuf_clk: unisim.vcomponents.OBUFDS
     port map (
      I => \^clk25mhz_reg\,
      O => HDMI_clk_p,
      OB => HDMI_clk_n
    );
obuf_g: unisim.vcomponents.OBUFDS
     port map (
      I => tmds_g_shift,
      O => HDMI_data_p(1),
      OB => HDMI_data_n(1)
    );
obuf_r: unisim.vcomponents.OBUFDS
     port map (
      I => tmds_r_shift,
      O => HDMI_data_p(2),
      OB => HDMI_data_n(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk250 : in STD_LOGIC;
    R : in STD_LOGIC_VECTOR ( 7 downto 0 );
    G : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk25 : out STD_LOGIC;
    video_en : out STD_LOGIC;
    HDMI_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    HDMI_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    HDMI_clk_n : out STD_LOGIC;
    HDMI_clk_p : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    h_sync : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_video_out_0_0,video_out,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "video_out,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^b\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^g\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^r\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of HDMI_clk_n : signal is "xilinx.com:signal:clock:1.0 HDMI_clk_n CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of HDMI_clk_n : signal is "XIL_INTERFACENAME HDMI_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_video_out_0_0_HDMI_clk_n, INSERT_VIP 0";
  attribute x_interface_info of HDMI_clk_p : signal is "xilinx.com:signal:clock:1.0 HDMI_clk_p CLK";
  attribute x_interface_parameter of HDMI_clk_p : signal is "XIL_INTERFACENAME HDMI_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_video_out_0_0_HDMI_clk_p, INSERT_VIP 0";
begin
  \^b\(7 downto 0) <= B(7 downto 0);
  \^g\(7 downto 0) <= G(7 downto 0);
  \^r\(7 downto 0) <= R(7 downto 0);
  vga_b(4 downto 0) <= \^b\(7 downto 3);
  vga_g(5 downto 0) <= \^g\(7 downto 2);
  vga_r(4 downto 0) <= \^r\(7 downto 3);
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_out
     port map (
      B(7 downto 0) => \^b\(7 downto 0),
      G(7 downto 0) => \^g\(7 downto 0),
      HDMI_clk_n => HDMI_clk_n,
      HDMI_clk_p => HDMI_clk_p,
      HDMI_data_n(2 downto 0) => HDMI_data_n(2 downto 0),
      HDMI_data_p(2 downto 0) => HDMI_data_p(2 downto 0),
      R(7 downto 0) => \^r\(7 downto 0),
      clk250 => clk250,
      clk25MHz_reg => clk25,
      s_h_sync_reg => h_sync,
      v_active_reg => video_en,
      v_sync => v_sync
    );
end STRUCTURE;
