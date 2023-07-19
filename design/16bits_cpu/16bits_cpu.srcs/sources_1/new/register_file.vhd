-- 16 bits processor Register File
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity register_file is
    Generic
    (
        N : integer := 16
    );
    Port 
    (
        clk     : std_logic;                            -- clock
        rst     : std_logic;                            -- reset
        Rd      : in  std_logic_vector(N-1 downto 0);   -- Register Rd input
        Rd_sel  : in  std_logic_vector(2 downto 0);     -- Register Rd selector
        Rd_wr   : in  std_logic;                        -- Register Rd write enable
        Rm_sel  : in  std_logic_vector(2 downto 0);     -- Register Rm selector
        Rn_sel  : in  std_logic_vector(2 downto 0);     -- Register Rn selector
        Rm      : out std_logic_vector(N-1 downto 0);   -- Rm output
        Rn      : out std_logic_vector(N-1 downto 0)    -- Rn output
    );
end register_file;

architecture Behavioral of register_file is

    type storage is array(0 to 7) of std_logic_vector(N-1 downto 0);    -- storage for 8 16 bits Registers on register_file
    signal R    : storage;                                              -- signal to access register file from everywhere
    signal wen  : std_logic_vector(N-1 downto 0);

begin
    generator : for i in 0 to 7 generate
        wen(i) <= '1' when Rd_sel = i and Rd_wr = '1' else '0';
        Rx : entity work.reg16
            Generic map(N => 16)
            Port map
            (
                clk => clk,
                rst => rst,
                en  => wen(i),
                D   => Rd,
                Q   => R(i)
            );
    end generate;
    
    Rm <= R(conv_integer(Rm_sel));
    Rn <= R(conv_integer(Rn_sel));

end Behavioral;








