library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity register_file is
	generic(N : integer := 16);
	Port (
		clk       : in std_logic;
		rst       : in std_logic;
		Rd_sel    : in std_logic_vector(2 downto 0);
		Rd_wr     : in std_logic;
		Rm_sel    : in std_logic_vector(2 downto 0);
		Rn_sel    : in std_logic_vector(2 downto 0);
		Rd        : in std_logic_vector(N-1 downto 0);
		Rm        : out std_logic_vector(N-1 downto 0);
		Rn        : out std_logic_vector(N-1 downto 0)
	);
end register_file;

architecture Behavorial of register_file is 
	type bank is array(0 to 7) of std_logic_vector(N-1 downto 0);
	signal R : bank;
	signal wen : std_logic_vector(7 downto 0);

begin
	gerador: for i in 0 to 7 generate
		wen(i) <= '1' when Rd_sel=i and Rd_wr='1' else '0';
		RX : entity work.register_16
			generic map(N=>16)
			port map(
				clk => clk,
				rst => rst,
				--ce  => wen(1),
				D   => Rd,
				Q   => R(i)
			);
	end generate;
	Rm <= R(conv_integer(Rm_sel));
	Rn <= R(conv_integer(Rn_sel));

end Behavorial;
