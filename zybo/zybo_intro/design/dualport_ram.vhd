LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

USE ieee.numeric_std.ALL;
 
ENTITY dualport_ram IS
   generic(data_width : integer:= 16;
           addr_width : integer:= 16
   );
   port
   (
      clk:     IN   std_logic;
      r_addr: IN   STD_LOGIC_VECTOR(addr_width-1 downto 0);
      w_addr: IN   STD_LOGIC_VECTOR(addr_width-1 downto 0);
	  din:     IN   STD_LOGIC_VECTOR(data_width-1 downto 0);
      we:      IN   std_logic;
      dout:    OUT  STD_LOGIC_VECTOR(data_width-1 DOWNTO 0)
   );
END dualport_ram;
 
 
ARCHITECTURE rtl OF dualport_ram IS
   signal read_a : STD_LOGIC_VECTOR(addr_width-1 downto 0);
   TYPE mem IS ARRAY(0 TO 2**addr_width-1) OF std_logic_vector(data_width-1 DOWNTO 0);
   SIGNAL ram_block : mem := (others => (others => '1'));	

BEGIN
   PROCESS(clk)
   BEGIN
      IF rising_edge(clk) THEN
         IF we = '1' THEN
            ram_block(to_integer(unsigned(w_addr))) <= din;
         END IF;
         read_a <= r_addr;
      END IF;
   END PROCESS;
	dout <= ram_block(to_integer(unsigned(read_a)));
	
END rtl;
 
