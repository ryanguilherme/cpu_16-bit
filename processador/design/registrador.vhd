library IEEE;
use IEEE_STD_LOGIC_1164.ALL;

entity registrador is
	generic(N : integer := 16);
	Port (
		clk : in std_logic;
		rst : in std_logic;
		D : in std_logic_vector(1 downto 0);
		Q : out std_logic_vector(1 downto 0)
	);
end registrador;

architecture Behavorial of registrador is
	signal reg : std_logic_vector(3 downto 0);
	process(clk, rst)
	begin
		if rst='1' then
			D <= others('0');
		elsif (rising_edge(clk) and clk='1') then
			reg <= D;
		end if;
	end process;
	Q <= reg;
end Behavorial;

