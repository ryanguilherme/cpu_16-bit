-- 16 bits processor vinculated ROM
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rom is
    Generic
    (
        addr_width : integer := 16;
        data_width : integer := 16
    );
    Port 
    ( 
        clk     : in  std_logic;                                    -- clock
        en      : in  std_logic;                                    -- enable
        addr    : in  std_logic_vector(addr_width-1 downto 0);      -- address input
        dout    : out std_logic_vector(data_width-1 downto 0)       -- instruction data output
    );
end rom;

architecture Behavioral of rom is
    type memory is array(0 to (2**addr_width)-1) of std_logic_vector(data_width-1 downto 0);        -- 65355 blocks memory
    signal rom_block : memory := (
        0 => x"1234",
        1 => x"5678",
        2 => x"9041",
        3 => x"FFFF",
        4 => x"A1B2",
        5 => x"F1D1",
        others => (others => '0')
    );
    
begin
    process(clk)
    begin
        if (clk'event and clk = '1') then
            if (en = '1') then
                dout <= rom_block(to_integer(unsigned(addr)));
            end if;
        end if;
    end process;
end Behavioral;







