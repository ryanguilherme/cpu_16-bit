library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity controlUnit is
	generic(N : integer := 16);
	Port (
		clk			:   std_logic;
		rst 		:   std_logic;
		Immed 		: 	out std_logic_vector(N-1 downto 0);
		ROM_addr 	: 	out std_logic;
		RAM_sel 	: 	out std_logic;
		RAM_we 		: 	out std_logic;
		ROM_en      :   out std_logic;
		RF_sel 		: 	out std_logic_vector(1 downto 0);
		Rd_sel 		: 	out std_logic_vector(2 downto 0);
		Rd_wr 		: 	out std_logic;
		Rm_sel 		: 	out std_logic_vector(2 downto 0);
		Rn_sel 		: 	out std_logic_vector(2 downto 0);
		ula_op 		: 	out std_logic_vector(3 downto 0);
		estado 		: 	out std_logic_vector(3 downto 0) 
	);
end controlUnit;

architecture Behavorial of controlUnit is
	signal PC_inc 	: std_logic;
	signal PC_D 	: std_logic_vector(N-1 downto 0);
	signal PC_Q 	: std_logic_vector(N-1 downto 0);
	signal PC_clr   : std_logic;
	
	signal Ir_load 	: std_logic;
	signal Ir_D 	: std_logic_vector(N-1 downto 0);
	signal Ir_Q 	: std_logic_vector(N-1 downto 0);
begin
	PC : entity work.register_16
		generic map(N=>16)
		port map(
			clk		=> clk,
			rst		=> pc_clr,
			--ce		=> pc_inc,
			D		=> PC_D,
			Q		=> PC_Q
		);
		pc_q <= pc_d + 2;
	
	reg_inst_IR : entity work.register_16
		generic map(N=>16)
		port map(
			clk		=> clk,
			rst		=> rst,
			--ce		=> Ir_load,
			D		=> Ir_D,
			Q		=> Ir_Q
		);
	controle_fsm : entity work.fsm
		generic map(N=>16)
		port map(
			clk		=> clk,
			rst		=> rst,
			Ir_data	=> Ir_Q,
			ROM_en	=> ROM_en,
			PC_clr 	=> PC_clr,
			PC_inc	=> PC_inc,
			Ir_load	=> Ir_load,
			Immed	=> Immed,
			RAM_sel	=> RAM_sel
		);
			
		
end Behavorial;
