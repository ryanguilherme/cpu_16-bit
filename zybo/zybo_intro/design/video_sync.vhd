library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity video_sync is
  Port (
         clk250MHz: in std_logic;
         --rst: in std_logic;
         clk25: out std_logic;
         h_sync: out std_logic;
         v_sync: out std_logic;
         video_en: out std_logic
         --resolution: in std_logic :='0' -- '0'/'1': 640x480 / 800x600
        );
end video_sync;

architecture Behavioral of video_sync is

signal clk25MHz: std_logic;
--signal counter_x: natural; 
--signal counter_y: natural; 
signal h_active,v_active,s_h_sync: std_logic;

--***640x480@60Hz***--  Requires 25 MHz clock
constant FRAME_WIDTH            : natural := 640;
constant HORIZONTAL_FRONT_PORCH : natural := 16; --H front porch width (pixels)
constant HORIZONTAL_BACK_PORCH  : natural := 48; --H front porch width (pixels)
constant HORIZONTAL_PULSE_WIDTH : natural := 96; --H sync pulse width (pixels));

constant FRAME_HEIGHT           : natural := 480;
constant VERTICAL_FRONT_PORCH   : natural := 10; --V front porch width (lines)
constant VERTICAL_BACK_PORCH    : natural := 33; --V front porch width (lines)
constant VERTICAL_PULSE_WIDTH   : natural := 2;


--***800x600@60Hz***--  Requires 40 MHz clock
--constant FRAME_WIDTH : natural := 800;
--constant FRAME_HEIGHT : natural := 600;
--constant HORIZONTAL_FRONT_PORCH : natural := 40; --H front porch width (pixels)
--constant VERTICAL_FRONT_PORCH : natural := 1; --V front porch width (lines)
--constant HORIZONTAL_BACK_PORCH : natural := 88; --H front porch width (pixels)
--constant VERTICAL_BACK_PORCH : natural := 23; --V front porch width (lines)
--constant VERTICAL_PULSE_WIDTH : natural := 4;
--constant HORIZONTAL_PULSE_WIDTH : natural := 128; --H sync pulse width (pixels));

constant H_MAX : natural := HORIZONTAL_PULSE_WIDTH + HORIZONTAL_BACK_PORCH + FRAME_WIDTH + HORIZONTAL_FRONT_PORCH; --H total period 
constant V_MAX : natural := VERTICAL_PULSE_WIDTH + VERTICAL_BACK_PORCH + FRAME_HEIGHT + VERTICAL_FRONT_PORCH; --V total period 


begin

Clock25:
 process (clk250MHz)
  variable count: integer range 0 to 5;
 begin
  if rising_edge(clk250MHz) then
    count := count + 1;
    if (count=5) then
        clk25MHz <= not clk25MHz;
        count := 0;
     end if;
  end if;
 end process;
   

  --Pulso de sincronismo horizontal ao completar as colunas
Horizontal_Sync:
process (clk25MHz)
  variable h_count: integer range 0 to H_MAX;
begin
    if (rising_edge(clk25MHz)) then
      h_count := h_count + 1;
      if (h_count = H_MAX) then
        s_h_sync <= '0';
        h_count := 0;
      elsif (h_count = HORIZONTAL_PULSE_WIDTH) then
        s_h_sync <='1';
      end if;
    end if;
end process;

Horizontal_Active:
process (clk25MHz)
  variable h_count: integer range 0 to H_MAX;
begin
    if (rising_edge(clk25MHz)) then
      h_count := h_count + 1;
      
      if (h_count = HORIZONTAL_PULSE_WIDTH + HORIZONTAL_BACK_PORCH) then
        h_active <= '1';
      elsif (h_count = HORIZONTAL_PULSE_WIDTH + HORIZONTAL_BACK_PORCH + FRAME_WIDTH) then
        h_active <= '0';
      elsif (h_count = H_MAX) then
        h_count := 0;
      end if;
    end if;
end process;


  --Pulso de sincronismo vertical ao completar as linhas
Vertical_Sync:  
  process (s_h_sync)
    variable v_count: integer range 0 to V_MAX; 
  begin
    if (falling_edge(s_h_sync)) then
      v_count := v_count + 1;
      if (v_count = V_MAX) then
        v_sync <= '0';
        v_count := 0;
      elsif (v_count = VERTICAL_PULSE_WIDTH) then
        v_sync <='1';
      end if;

    end if;
  end process;

Vertical_Active:
process (s_h_sync)
  variable v_count: integer range 0 to H_MAX;
begin
    if (falling_edge(s_h_sync)) then
      v_count := v_count + 1;
      
      if (v_count = VERTICAL_PULSE_WIDTH + VERTICAL_BACK_PORCH) then
        v_active <= '1';
      elsif (v_count = VERTICAL_PULSE_WIDTH + VERTICAL_BACK_PORCH + FRAME_HEIGHT) then
        v_active <= '0';
      elsif (v_count = V_MAX) then
        v_count := 0;
      end if;
    end if;
end process;

    
--video_en  <= '1' when (counter_x <FRAME_WIDTH) and (counter_y<FRAME_HEIGHT) else '0';
video_en <= h_active and v_active;
clk25 <= clk25MHz;
h_sync <= s_h_sync;

end Behavioral;
