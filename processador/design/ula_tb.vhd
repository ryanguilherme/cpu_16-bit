library IEEE;
use IEEE_STD_LOGIC_1164.ALL;
use IEEE_STD_LOGIC_arith.ALL;

entity ula_tb is
	-- Port ( );
end ula_tb;

architecture Behavorial of ula_tb is
	constant N: integer := 16;
	signal clk : std_logic := 0;
	signal rst : std_logic;
	signal A, B : std_logic_vector(N-1 downto 0);
	signal op : std_logic_vector(3 downto 0);
	signal Q : std_logic_vector(N-1 downto 0);

	constant periodo: time := 100 ns;
begin
	DUT: entity work.ula
		generic map(N => 16)
		port map(A,B,Q,op);
	
	clk <= not clk after periodo/2;
	
	process
	begin
		rst <= '1';
		wait for 2*periodo;
		rst <= '0';
		wait;
	end process;

	estimulos : process
	-- poderia ter um wait until rst='0';
	begin
		A <= x"0003";
		B <= x"0002";

		for i in 4 to 10 loop
			op <= conv_std_logic_vector(i, 4);
			wait for periodo;	
		end loop;
	end process;

end Behavorial;
