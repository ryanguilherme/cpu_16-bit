 library ieee;
 use ieee.std_logic_1164.all;
 
 entity shift_register is
    generic (N : integer := 10);
    port (clk: in std_logic;
          din: in std_logic_vector(N-1 downto 0);
          dout: out std_logic);
 end shift_register;
 
 architecture behav of shift_register is
    signal data_bits: std_logic_vector(N-1 downto 0);
 
 begin
     process (clk)
        variable count: integer range 0 to N;
     begin
         if rising_edge(clk) then
            
            count := count + 1;
            
            if (count = (N-1)) then
                data_bits <= din;
             elsif (count = N) then
                count := 0;
             end if;
             
            dout <= data_bits(count);
         end if;
     end process;
end behav;
 -------------------------------------------------