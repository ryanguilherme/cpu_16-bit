-- 16 bits processor vinculated RAM
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ram is
    Generic
    (
        addr_width : integer := 16;
        data_width : integer := 16
    );
    Port 
    ( 
        clk     : in  std_logic;                                    -- clock
        we      : in  std_logic;                                    -- write enable
        addr    : in  std_logic_vector(addr_width-1 downto 0);      -- addr input
        din     : in  std_logic_vector(data_width-1 downto 0);      -- data input
        dout    : out std_logic_vector(data_width-1 downto 0)       -- data output
    );
end ram;

architecture Behavioral of ram is
    type memory is array (0 to (2**addr_width)-1) of std_logic_vector(data_width-1 downto 0);
    signal ram_block : memory := (others => (others => '0'));

begin
    process(clk)
    begin
        if (clk'event and clk = '1') then
            if (we = '1') then
                ram_block(to_integer(unsigned(addr))) <= din;
            end if;
        end if;
    end process;

end Behavioral;







