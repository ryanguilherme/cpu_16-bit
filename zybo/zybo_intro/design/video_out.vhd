library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity video_out is
Port (
         clk250: in std_logic;
         R,G,B: in std_logic_vector(7 downto 0);
         clk25: out std_logic;
         video_en : out STD_LOGIC;
         HDMI_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
         HDMI_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
         HDMI_clk_n : out STD_LOGIC;
         HDMI_clk_p : out STD_LOGIC;
         v_sync,h_sync : out STD_LOGIC;
         vga_r: out std_logic_vector(4 downto 0);
         vga_g: out std_logic_vector(5 downto 0);
         vga_b: out std_logic_vector(4 downto 0)
        );
end video_out;

architecture Behavioral of video_out is

signal clk25MHz: std_logic;
signal s_v_sync:std_logic;
signal s_h_sync:std_logic;
signal s_video_en:std_logic;


signal tmds_r,tmds_g,tmds_b: std_logic_vector(9 downto 0);
signal tmds_r_shift,tmds_g_shift,tmds_b_shift: std_logic;



begin

Sync:
  entity work.video_sync 
  port map (
         clk250MHz =>clk250,
         h_sync => h_sync,
         v_sync => v_sync,
         video_en => video_en,
         clk25 => clk25MHz
        );

TDMS_ENCODER_R:
  entity work.tmds_encoder
  port map (  
    clk => clk25MHz,
    disp_ena => s_video_en,
    c1 => '0',
    c0 => '0',
    d_in  => R,
    q_out => tmds_r
  );


TDMS_ENCODER_G:
  entity work.tmds_encoder
  port map (  
    clk => clk25MHz,
    disp_ena => s_video_en,
    c1 => '0',
    c0 => '0',
    d_in  => G,
    q_out => tmds_g
  );
  
TDMS_ENCODER_B:
  entity work.tmds_encoder
  port map (  
    clk => clk25MHz,
    disp_ena => s_video_en,
    c1 => s_v_sync,
    c0 => s_h_sync,
    d_in  => B,
    q_out => tmds_b
  );

 -- shift registers
  SR_r: entity work.shift_register
    generic map(N => 10)
    port map(
        clk => clk250,
        din => tmds_r,    
        dout => tmds_r_shift   
    );
  
  SR_g: entity work.shift_register
    generic map(N => 10)
    port map(
        clk => clk250,
        din => tmds_g,    
        dout => tmds_g_shift   
    );
    
    SR_b: entity work.shift_register
    generic map(N => 10)
    port map(
        clk => clk250,
        din => tmds_b,    
        dout => tmds_b_shift   
    );
 
 
  -- create differential pairs
    obuf_clk : OBUFDS
    generic map (IOSTANDARD =>"TMDS_33")
    port map (I=>clk25MHz, O=>HDMI_clk_p, OB=>HDMI_clk_n);
    
        obuf_r : OBUFDS
    generic map (IOSTANDARD =>"TMDS_33")
    port map (I=>tmds_r_shift, O=>HDMI_data_p(2), OB=>HDMI_data_n(2));
    
    obuf_g : OBUFDS
    generic map (IOSTANDARD =>"TMDS_33")
    port map (I=>tmds_g_shift, O=>HDMI_data_p(1), OB=>HDMI_data_n(1));
    
    obuf_b : OBUFDS
    generic map (IOSTANDARD =>"TMDS_33")
    port map (I=>tmds_b_shift, O=>HDMI_data_p(0), OB=>HDMI_data_n(0));

video_en <= s_video_en;
h_sync <= s_h_sync;
v_sync <= s_v_sync;

vga_r <= R(7 downto 3);
vga_g <= G(7 downto 2);
vga_b <= B(7 downto 3);

clk25 <= clk25MHz;


end Behavioral;
