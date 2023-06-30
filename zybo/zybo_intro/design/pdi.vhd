----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.05.2019 18:54:54
-- Design Name: 
-- Module Name: pdi - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pdi is
    Port ( clk      : in  STD_LOGIC;
           rst      : in  STD_LOGIC;
           start    : in  STD_LOGIC;
           op       : in  STD_LOGIC_VECTOR ( 3 downto 0);
           din      : in  STD_LOGIC_VECTOR (23 downto 0);
           rom_addr : out STD_LOGIC_VECTOR (14 downto 0);
           ram_we   : out STD_LOGIC := '0';
           dout     : out STD_LOGIC_VECTOR (23 downto 0);
           ram_addr : out STD_LOGIC_VECTOR (14 downto 0)
           );
end pdi;

architecture Behavioral of pdi is

type state_type is (init, wait_1, wait_0, exec) ;  --type of state machine.
signal current_s,next_s: state_type;  --current and next state declaration.

constant LAST_ADDR : natural :=  (2**15 - 1);

signal s_rom_addr: STD_LOGIC_VECTOR (14 downto 0):= "000000000000000";
signal s_din: STD_LOGIC_VECTOR (23 downto 0);
signal s_exec_start: STD_LOGIC := '0';
signal s_done: STD_LOGIC := '0';

signal pixel_addr : std_logic_vector(14 downto 0) := (others =>'0');


-- Tamanho da imagem
constant IMG_W: integer := 176; -- 8 bits
constant IMG_H: integer := 120; -- 7 bits

begin

process (clk,rst)
begin
 if (rst='1') then
  current_s <= init;  --estado inicial
elsif (rising_edge(clk)) then
  current_s <= next_s;   --próximo  estado.
end if;
end process;

--state machine process.
process (current_s,clk,rst)
begin

  case current_s is
    when init => 
      ram_we <= '0';
      s_exec_start <= '0';
      next_s <= wait_1;
      

    when wait_1 =>
    
      if(start='1') then
        next_s <= wait_0;
      else
        next_s <= wait_1;
      end if;
      
    when wait_0 =>
      
      if(start='0') then
        next_s <= exec;
      else
        next_s <= wait_0;
      end if;   

    when exec =>
      s_exec_start <= '1';
            
      ram_we <= '1';
      
      if(s_done='1') then
        next_s <= init;
      else
        next_s <= exec;
      end if;
  
  end case;
end process;

process(clk, rst, s_exec_start)
begin
  
  if (rst='1') then
    pixel_addr<=(others =>'0');
    
  else
    if (rising_edge(clk)) then
      
      if (s_exec_start='1') then
      
       if (pixel_addr = (LAST_ADDR)) then
         pixel_addr <= (others =>'0');
       else
         pixel_addr <= pixel_addr + 1;
       end if;

      
      end if;
      
    end if;
  end if;
end process;

addr_dly: entity work.delay
	generic map	(bits	=> 15, delay => 1)
	port map
	(
		a => s_rom_addr,
		clk	=> clk,
		a_delayed => ram_addr
	);



s_rom_addr <= pixel_addr when s_exec_start='1' else  (others => '0');

s_done <= '1' when ((pixel_addr = (LAST_ADDR)) and (s_exec_start='1')) else   '0';

s_din <= din;

rom_addr <= s_rom_addr;

--dout <= s_din;

dout <= s_din(23 downto 16)& X"0000"   when op="0001" else -- R
        X"00"&s_din(15 downto 8)&X"00" when op="0010" else -- G
        X"0000"& s_din(7 downto 0)     when op="0100" else -- B
        s_din;

--dout <= X"FF0000" when op="0001" else -- R
--        X"00FF00" when op="0010" else -- G
--        X"0000FF" when op="0100" else -- B
--        X"FFFFFF";        
        

end Behavioral;
