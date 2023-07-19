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
        clk      : in  std_logic;                                    -- clock
        we       : in  std_logic;                                    -- write enable
        stack_en : in  std_logic;                                    -- stack enable 
        stack_op : in  std_logic_vector(1 downto 0);                 -- stack operator (PUSH - 01 or POP - 10)
        addr     : in  std_logic_vector(addr_width-1 downto 0);      -- addr input
        din      : in  std_logic_vector(data_width-1 downto 0);      -- data input
        dout     : out std_logic_vector(data_width-1 downto 0)       -- data output
    );
end ram;

architecture Behavioral of ram is
    type memory is array (0 to (2**addr_width)-1) of std_logic_vector(data_width-1 downto 0);
    type stack  is array (0 to 7) of std_logic_vector(data_width-1 downto 0);
    signal ram_block   : memory := (others => (others => '0'));
    signal stack_block : stack := (others => (others => '0'));
    signal stack_pop : std_logic_vector(data_width-1 downto 0);

begin
    process(clk)
    begin
    if (stack_en = '0') then
        if (clk'event and clk = '1') then
            if (we = '1') then
                ram_block(to_integer(unsigned(addr))) <= din;
            end if;
        end if;
    else
        if      (stack_op = "01") then           -- STACK PUSH
            for index in 7 downto 1 loop
                stack_block(index) <= stack_block(index-1);
            end loop;
            stack_block(0) <= din;
        else if (stack_op = "10") then           -- STACK POP
            stack_pop <= stack_block(0);
            for index in 0 to 6 loop
                stack_block(index) <= stack_block(index-1);
            end loop;
            stack_block(7) <= (others => '0');
            end if;
        end if;
    end if;
    end process;
    dout <= ram_block(to_integer(unsigned(addr))) when stack_en = '0'  else
            stack_pop                             when stack_op = "10" else
            ram_block(to_integer(unsigned(addr)));
    
end Behavioral;







