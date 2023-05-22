library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.pkg_mips.ALL;

entity processadorMIPS is
    Port ( clk         : in STD_LOGIC;
           rst         : in STD_LOGIC;
           en, rw      : out STD_LOGIC;
           i_address   : out bus32;
           d_address   : out bus32;
           data        : inout bus32;
           instruction : in bus32);
end processadorMIPS;

architecture Behavioral of processadorMIPS is
    signal uins : microinstrucoes;
begin
	dp: entity work.datapath port map
	(
		clk=>clk, rst=>rst, instruction=>instruction, uins=>uins, d_address=>d_address, data=>data
	);
	ct: entity work.unidadeControle port map
	(
		clk=>clk, rst=>rst, uins=>uins, i_address=>i_address, instruction=>instruction
	);
	en <= uins.en;
	rw <= uins.rw;
     
end Behavioral;
