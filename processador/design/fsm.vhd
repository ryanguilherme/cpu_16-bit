library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm is
	generic(N: integer := 16);
	Port (
		clk: 		in std_logic;
		rst: 		in std_logic;
		IR_data: 	in std_logic_vector(N-1 downto 0);
		ROM_en: 	out std_logic;
		PC_clr: 	out std_logic;
		PC_inc: 	out std_logic;
		IR_load: 	out std_logic;
		Immed: 		out std_logic_vector(N-1 downto 0);
		RAM_sel: 	out std_logic;
		RAM_we: 	out std_logic;
		Rm_sel: 	out std_logic_vector(2 downto 0);
		Rn_sel: 	out std_logic_vector(2 downto 0);
		RF_sel: 	out std_logic_vector(1 downto 0);
		Rd_sel: 	out std_logic_vector(2 downto 0);
		Rd_wr: 		out std_logic;
		ula_op:		out std_logic_vector(3 downto 0)
	);
end fsm;

architecture Behavorial of fsm is
	type estados is (init, fetch, decode, exec_nop, exec_halt, exec_mov, exec_load, exec_store, exec_ula);
	signal PN,NS,PS : estados;

	signal instruction : std_logic_vector(N-1 downto 0);
	signal sinal_estado : std_logic_vector(3 downto 0);
begin
	process(clk, rst)
	begin
		if(rst='1') then
			PS<=init;
		elsif(clk'event and clk='1') then
			PS<=NS;
		end if;
	end process;
	
	process(PS)
	begin
		case PS is
			when init 		=>
				PC_clr 		<= '1'; 
				PC_inc 		<= '0';
				ROM_en 		<= '0';
				IR_load 	<= '0';
				Immed 		<= x"0000";
				RAM_sel 	<= '0';
				RAM_we 		<= '0';
				RF_sel 		<= "00";
				Rd_sel 		<= "00";
				Rd_wr 		<= '0';
				Rm_sel 		<= "000";
				Rn_sel 		<= "000";
				ula_op 		<= "0000";
			when fetch 		=>
				PC_clr      <= '0';
                PC_inc      <= '1';
                ROM_en      <= '1';
                IR_load     <= '1';
                Immed       <= x"0000";
                RAM_sel     <= '0';
                RAM_we      <= '0';
                RF_sel      <= "00";
                Rd_sel      <= "00";
                Rd_wr       <= '0';
                Rm_sel      <= "000";
                Rn_sel      <= "000";
                ula_op      <= "0000";
			when decode 	=>
				PC_clr      <= '0';
                PC_inc      <= '0';
                ROM_en      <= '0';
                IR_load     <= '0';
                Immed       <= x"0000";
                RAM_sel     <= '0';
                RAM_we      <= '0';
                RF_sel      <= "00";
                Rd_sel      <= "00";
                Rd_wr       <= '0';
                Rm_sel      <= "000";
                Rn_sel      <= "000";
                ula_op      <= "0000";
				
				if		(instruction(15 downto 0)=x"0000") 										then
					NS <= exec_nop;
				elsif	(instruction(15 downto 0)=x"ffff") 										then
					NS <= exec_halt;
				elsif	(instruction(15 downto 12)="0001") 										then
					NS <= exec_mov;
				elsif	(instruction(15 downto 12)="0010") 										then
					NS <= exec_store;
				elsif	(instruction(15 downto 12)="0011") 										then
					NS <= exec_load;
				elsif	(instruction(15 downto 12)="0001") or instruction(15 downto 12)="1010" 	then
					NS <= exec_ula;
				else 
					NS <= exec_nop;
				end if;
			when exec_nop 	=>
				NS 		<= fetch;
			when exec_halt 	=>
				NS 		<= exec_halt;
			when exec_mov 	=>
				Immed 	<= x"00" & instruction(7 downto 0);
				Rd_sel	<= instruction(10 downto 8);
				Rm_sel	<= instruction(7 downto 5);
				Rd_wr	<= '1';
				Rf_sel  <= instruction(11) & '0'; 
				NS 		<= fetch;
			when exec_load 	=>
				Rd_sel	<= instruction(10 downto 8);
				Rm_sel	<= instruction(7 downto 5);
				NS 		<= fetch;
			when exec_store =>
				Immed   <= x"00" & instruction(10 downto 8) & instruction(4 downto 0);
                Rm_sel  <= instruction(7 downto 5);
                RAM_we  <= '1';
				RAM_sel <= instruction(11);
   				NS 		<= fetch;
			when exec_ula   =>
		end case;
	end process;	


end Behavorial;










