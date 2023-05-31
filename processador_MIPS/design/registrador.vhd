library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.pkg_mips.all;

entity registrador is
    generic(valorInicial : reg32 := (others=>'0'));
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en  : in STD_LOGIC;
           D   : in reg32;
           Q   : out reg32);
end registrador;

architecture Behavioral of registrador is

begin
    process(rst,clk)
    begin
        if rst = '1' then
		Q <= valorInicial(31 downto 0);
        elsif clk'event and clk = '1' then
            if en = '1' then
               Q <= D;
            end if;
	    end if;      
    end process;

end Behavioral;
