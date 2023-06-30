-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Jun 28 20:56:13 2023
-- Host        : ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/leroy/OneDrive/Documentos/ufc/eng_comp/sistemas_digitais/zybo/zybo_intro/zybo_intro.gen/sources_1/bd/design_1/ip/design_1_video_source_0_0/design_1_video_source_0_0_stub.vhdl
-- Design      : design_1_video_source_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_video_source_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    video_en : in STD_LOGIC;
    w_address : in STD_LOGIC_VECTOR ( 14 downto 0 );
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    we : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_video_source_0_0;

architecture stub of design_1_video_source_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,video_en,w_address[14:0],din[23:0],we,r[7:0],g[7:0],b[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "video_source,Vivado 2022.2";
begin
end;
