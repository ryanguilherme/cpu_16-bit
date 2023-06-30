----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2018 18:50:05
-- Design Name: 
-- Module Name: delay - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity delay is
	generic
	(
		bits	:	integer		:=	8;
		delay	:	integer		:=	1
	);
	port
	(
		a			:	in	std_logic_vector(bits-1 downto 0);
		clk			:	in	std_logic;
		a_delayed	:	out	std_logic_vector(bits-1 downto 0) := (others=>'0')
	);
end delay;

architecture behav of delay is
	type intermediate is array (delay-1 downto 0) of std_logic_vector(bits-1 downto 0);
	signal int	:	intermediate;
begin
	process (clk)
	begin
        if (rising_edge(clk)) then
			int(0) <= a;
			for i in 1 to delay-1 loop
				int(i) <= int(i-1);
			end loop;
		end if;
	end process;
	a_delayed <= int(delay-1);
end behav;
