-- 16 bits Register
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg16 is
    Generic
    (
        N : integer := 16
    );
    Port 
    (
        clk     : in  std_logic;
        rst     : in  std_logic;
        en      : in  std_logic;
        D       : in  std_logic_vector(N-1 downto 0);
        Q       : out std_logic_vector(N-1 downto 0)
    );
end reg16;

architecture Behavioral of reg16 is

    signal reg : std_logic_vector(N-1 downto 0);

begin
    process(clk, rst)
    begin
        if rst = '1' then
            reg <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                reg <= D;
            end if;
        end if;
    end process;
    
    Q <= reg;

end Behavioral;









