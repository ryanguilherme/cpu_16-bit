library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity processador is
	generic(N : integer := 16);
	Port (
		clk       : std_logic;
		rst       : std_logic;
		ROM_addr  : out std_logic_vector(N-1 downto 0);
		ROM_en    : out std_logic;
		ROM_out   : in  std_logic_vector(N-1 downto 0);
		RAM_D     : out std_logic_vector(N-1 downto 0);
		RAM_Q     : out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture Behavorial of processador is

begin
	DP : entity work.register_16
		generic map(N=>16)
		Port map(
			clk => clk,
			rst => rst,
			Rd_sel => Rd_sel,
			Rd_wr => Rd_wr,
			Rm_sel => Rm_sel,
			Rn_sel => Rn_sel,
			Immed => Immed		
        );
	UC : entity work.controlUnit
		generic map(N=>16)
		Port map(
			clk => clk,
			rst => rst,
			Ir_data => Ir_data,
			ROM_en => ROM_en,
			ROM_addr => ROM_addr,
			Immed => Immed,
			RAM_sel => RAM_sel,
			RAM_we => RAM_we,
			RF_sel => RF_sel,
			Rd_sel => Rd_sel,
			Rd_wr => Rd_wr,
			Rm_sel => Rm_sel
        );     

end Behavorial;







