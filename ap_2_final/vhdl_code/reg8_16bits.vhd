library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg8_16bits is
    Port ( I_clk       : in  STD_LOGIC;
	       I_en        : in  STD_LOGIC;
           I_dataD     : in  STD_LOGIC_VECTOR (15 downto 0); -- Data to write to regD
           I_selA      : in  STD_LOGIC_VECTOR (2 downto 0);   -- Select line for regA
           I_selB      : in  STD_LOGIC_VECTOR (2 downto 0);   -- Select line for regB
           I_selD      : in  STD_LOGIC_VECTOR (2 downto 0);   -- Select line for regD
           I_we        : in  STD_LOGIC;                         -- Write enable for regD
           O_dataA     : out STD_LOGIC_VECTOR (15 downto 0);-- regA data out
           O_dataB     : out STD_LOGIC_VECTOR (15 downto 0) -- regB data out
	);
end reg8_16bits;

architecture Behavioral of reg8_16bits is
    type bank is array (0 to 7) of STD_LOGIC_VECTOR(15 downto 0);
    signal registers : bank;

begin
    process(I_clk)
    begin
        if rising_edge(I_clk) then
            if I_en = '1' then
                if I_we = '1' then
                    registers(to_integer(unsigned(I_selD))) <= I_dataD;
                end if;
                O_dataA <= registers(to_integer(unsigned(I_selA)));
                O_dataB <= registers(to_integer(unsigned(I_selB)));
            end if;
        end if;
    end process;
    
end Behavioral;










