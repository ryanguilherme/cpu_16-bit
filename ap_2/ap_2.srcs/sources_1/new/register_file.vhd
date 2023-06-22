library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity register_file is
    generic(
        N_BITS : integer := 16;         -- REGISTER SIZE
        N_REGS : integer := 8           -- BANK SIZE
    );
    Port ( clock        : in    STD_LOGIC;
           enable       : in    STD_LOGIC;
           write_enable : in    STD_LOGIC;
           rA_select    : in    STD_LOGIC_VECTOR(2 downto 0);
           rB_select    : in    STD_LOGIC_VECTOR(2 downto 0);
           rD_select    : in    STD_LOGIC_VECTOR(2 downto 0);
           rD_data_in   : in    STD_LOGIC_VECTOR(N_BITS-1 downto 0);
           rA_data_out  : out   STD_LOGIC_VECTOR(N_BITS-1 downto 0);
           rB_data_out  : out   STD_LOGIC_VECTOR(N_BITS-1 downto 0)
    );
end register_file;

architecture Behavioral of register_file is
    type bank is array(0 to N_REGS-1) of STD_LOGIC_VECTOR(N_BITS-1 downto 0);
    signal registers : bank;
    
begin
    process(clock)
    begin
        if rising_edge(clock) then
            if enable = '1' then
                if write_enable = '1' then
                    registers(to_integer(unsigned(rD_select))) <= rD_data_in;
                end if;
                rA_data_out <= registers(to_integer(unsigned(rA_select)));
                rB_data_out <= registers(to_integer(unsigned(rB_select)));
            end if;
        end if;
    end process;

end Behavioral;










