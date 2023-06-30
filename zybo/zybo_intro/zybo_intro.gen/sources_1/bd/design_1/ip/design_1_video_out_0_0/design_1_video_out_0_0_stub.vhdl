-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Jun 28 20:58:49 2023
-- Host        : ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/leroy/OneDrive/Documentos/ufc/eng_comp/sistemas_digitais/zybo/zybo_intro/zybo_intro.gen/sources_1/bd/design_1/ip/design_1_video_out_0_0/design_1_video_out_0_0_stub.vhdl
-- Design      : design_1_video_out_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_video_out_0_0 is
  Port ( 
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

end design_1_video_out_0_0;

architecture stub of design_1_video_out_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk250,R[7:0],G[7:0],B[7:0],clk25,video_en,HDMI_data_n[2:0],HDMI_data_p[2:0],HDMI_clk_n,HDMI_clk_p,v_sync,h_sync,vga_r[4:0],vga_g[5:0],vga_b[4:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "video_out,Vivado 2022.2";
begin
end;
