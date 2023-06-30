--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Wed Jun 28 20:54:28 2023
--Host        : ryan running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    HDMI_clk_n_0 : out STD_LOGIC;
    HDMI_clk_p_0 : out STD_LOGIC;
    HDMI_data_n_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    HDMI_data_p_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_in1_0 : in STD_LOGIC;
    h_sync_0 : out STD_LOGIC;
    op_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_0 : in STD_LOGIC;
    start_0 : in STD_LOGIC;
    v_sync_0 : out STD_LOGIC;
    vga_b_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_r_0 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    rst_0 : in STD_LOGIC;
    start_0 : in STD_LOGIC;
    op_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_in1_0 : in STD_LOGIC;
    HDMI_data_n_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    HDMI_data_p_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    HDMI_clk_n_0 : out STD_LOGIC;
    HDMI_clk_p_0 : out STD_LOGIC;
    v_sync_0 : out STD_LOGIC;
    h_sync_0 : out STD_LOGIC;
    vga_r_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_b_0 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      HDMI_clk_n_0 => HDMI_clk_n_0,
      HDMI_clk_p_0 => HDMI_clk_p_0,
      HDMI_data_n_0(2 downto 0) => HDMI_data_n_0(2 downto 0),
      HDMI_data_p_0(2 downto 0) => HDMI_data_p_0(2 downto 0),
      clk_in1_0 => clk_in1_0,
      h_sync_0 => h_sync_0,
      op_0(3 downto 0) => op_0(3 downto 0),
      rst_0 => rst_0,
      start_0 => start_0,
      v_sync_0 => v_sync_0,
      vga_b_0(4 downto 0) => vga_b_0(4 downto 0),
      vga_g_0(5 downto 0) => vga_g_0(5 downto 0),
      vga_r_0(4 downto 0) => vga_r_0(4 downto 0)
    );
end STRUCTURE;
