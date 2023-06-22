library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity datapath is
	generic(N : integer := 16);
	Port (
		clk       : in std_logic;
		rst       : in std_logic;
		RF_sel    : in std_logic_vector(1 downto 0);
		Rd_sel    : in std_logic_vector(2 downto 0);
		Rd_wr     : in std_logic := '0';
		Rm_sel    : in std_logic_vector(2 downto 0);
		Rn_sel    : in std_logic_vector(2 downto 0);
		Immed     : in std_logic_vector(N-1 downto 0);
		ula_op    : in std_logic_vector(3 downto 0);
		ram_d     : in std_logic_vector(N-1 downto 0);
		ram_q     : out std_logic_vector(N-1 downto 0);
		ram_addr  : out std_logic_vector(N-1 downto 0);
		ram_sel   : in std_logic
	);
end datapath;

architecture Behavorial of datapath is
	signal s_Rd    : std_logic_vector(N-1 downto 0);
	signal s_Rm    : std_logic_vector(N-1 downto 0);
	signal s_Rn    : std_logic_vector(N-1 downto 0);
	signal s_ram_q : std_logic_vector(N-1 downto 0);
begin
	mux_2x1 : ram_q <= s_Rn   when ram_sel='0'    else Immed;
	mux_4x1 : s_Rd <= s_Rm    when rf_sel="00"    else
		              s_ram_q when rf_sel="01"    else
			          Immed   when rf_sel ="10"   else
			          s_Rn;
	RF : entity work.register_file
		generic map(N=>16)
		Port map(
			clk => clk,
			rst => rst,
			Rd_sel => Rd_sel,
			Rd_wr => Rd_wr,
			Rm_sel => Rm_sel,
			Rn_sel => Rn_sel,
			Rd => s_Rd,
			RM => s_Rm,
			Rn => s_Rn
		);

	ula : entity work.ula
		generic map(N=>16)
		Port map(
			A  => s_Rm,
			B  => s_Rn,
			--Q  => s_ula_op,
			op => ula_op
		);

	


end Behavorial;
