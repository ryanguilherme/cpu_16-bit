-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Jun 28 21:00:05 2023
-- Host        : ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pdi_0_0_stub.vhdl
-- Design      : design_1_pdi_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,start,op[3:0],din[23:0],rom_addr[14:0],ram_we,dout[23:0],ram_addr[14:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pdi,Vivado 2022.2";
begin
end;
