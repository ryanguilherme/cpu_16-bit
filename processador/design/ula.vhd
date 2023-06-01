library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ula is
	generic(N : integer :=- 16);
	Port (
		A, B : in std_logic_vector(N-1 downto 0);
		op : in std_logic_vector(3 downto 0);
		Q : out std_logic_vector(N-1 downto 0)
	);
end ula;

architecture Behavorial of ula is
	signal result : std_logic_vector(N-1 downto 0);
	signal smul : std_logic_vector(31 downto 0);
begin
	result <= A+B when op="0100" else
		  A-B when op="0101" else
		  smul(N-1 downto 0) when op="0110" else
		  A and B when op="0111" else
		  A or B when op="1000" else
		  not A when op ="1001" else
		  A xor B when op="1010" else
		  result;
	smul <= A*B;
	Q <= result;
end Behavorial;
		  
