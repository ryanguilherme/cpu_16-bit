library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.pkg_mips.ALL;

entity bancoRegistradores is
    Port ( clk     : in STD_LOGIC;
           rst     : in STD_LOGIC;
           en      : in STD_LOGIC;
           AdRP1   : in std_logic_vector(4 downto 0);
           AdRP2   : in std_logic_vector(4 downto 0);
           AdWP    : in std_logic_vector(4 downto 0);
           DataWP  : in bus32;
           DataRP1 : out bus32;
           DataRP2 : out bus32);
end bancoRegistradores;

architecture Behavioral of bancoRegistradores is
    type banco_reg is array(0 to 31) of bus32;
    signal reg : banco_reg;
    signal wen : bus32;
begin
    
    g1: for i in 0 to 31 generate
	    wen(i) <= '1' when i/=0 and AdWP=i and en='1' else '0';
            rx: entity work.registrador
	    	port map(
			clk=>clk,
			rst=>rst,
			en=>wen(i),
			D=>DataWP,
			Q=>reg(i)
		);
	end generate g1;
	DataRP1 <= reg(CONV_INTEGER(AdRP1));
	DataRP2 <= reg(CONV_INTEGER(AdRP2));
        --g2:if i=29 generate

        --end generate;
        
        --g3:if i/=29 generate
        --AQUI
        --end generate;    
    
    --AQUI
    
    --AQUI
end Behavioral;
