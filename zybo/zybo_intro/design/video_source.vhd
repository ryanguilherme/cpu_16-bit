
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH;


entity video_source is
  Port (
         clk: in std_logic;
         video_en: in std_logic:='0';
         w_address: in std_logic_vector(14 downto 0) := (others => '0');
         din: in std_logic_vector(23 downto 0) := (others => '0');
         we: in std_logic := '0';
         r,g,b: out std_logic_vector(7 downto 0)
      );
end video_source;

architecture Behavioral of video_source is
    signal sr,sg,sb: std_logic_vector(7 downto 0);
    signal s_address: std_logic_vector(14 downto 0);
    signal s_dout : std_logic_vector(23 downto 0);
    signal s_col: std_logic_vector(7 downto 0);
    signal s_lin: std_logic_vector(6 downto 0);

   
    constant FRAME_WIDTH: natural := 640;
    constant FRAME_HEIGHT: natural := 480;
    constant FRAME_SIZE: natural := FRAME_WIDTH * FRAME_HEIGHT;

    constant IMG_WIDTH: natural := 176;
    constant IMG_HEIGHT: natural:= 120;
    constant IMG_SIZE: natural := IMG_WIDTH*IMG_HEIGHT;
    
    constant IMG_POS_X: natural:= 50;
    constant IMG_POS_Y: natural:= 50;
    

    signal s_show_image : std_logic:='0';




begin

video_memory: ENTITY work.dualport_ram
   generic map(addr_width => 15,  data_width => 24)
   PORT map
   (
      clk => clk,
      r_addr => s_address,
      w_addr => w_address,
	  din => din,
      we => we,
      dout => s_dout
   );


video_update:
    process (clk,video_en)
           variable h_count: natural range 0 to FRAME_WIDTH;
           variable v_count: natural range 0 to FRAME_HEIGHT;
    begin
        if (rising_edge(clk) and (video_en = '1')) then 

            h_count := h_count + 1;

            if(h_count = FRAME_WIDTH) then
              h_count := 0;
              
              v_count := v_count + 1;
              if(v_count = FRAME_HEIGHT) then
                v_count := 0;
              end if;
            end if;
            
            if (h_count > IMG_POS_X)and (v_count > IMG_POS_Y) and (h_count-IMG_POS_X <= IMG_WIDTH) and (v_count-IMG_POS_Y <= IMG_HEIGHT) then
              s_show_image <='1';
            else
              s_show_image <='0';
            end if;
            
            s_address <= std_logic_vector(to_unsigned(((v_count - IMG_POS_Y - 1)*IMG_WIDTH + h_count- IMG_POS_X - 1),15));

        end if;
       
     end process;





r <= s_dout(23 downto 16) when (s_show_image='1') else X"00";
g <= s_dout(15 downto 8)  when (s_show_image='1') else X"00";
b <= s_dout(7 downto 0)   when (s_show_image='1') else X"00";


end Behavioral;
