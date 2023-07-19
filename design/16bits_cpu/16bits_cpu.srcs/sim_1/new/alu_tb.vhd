-- 16 bit Arithmetic Logic Unit testbench
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_tb is
    Generic
    (
        N : integer := 16
    );
end alu_tb;

architecture Simulation of alu_tb is
    signal A_sim     : std_logic_vector(N-1 downto 0);
    signal B_sim     : std_logic_vector(N-1 downto 0);
    signal Immed_sim : std_logic_vector(N-1 downto 0);
    signal zero_sim  : std_logic;
    signal carry_sim : std_logic;
    signal op_sim    : std_logic_vector(3 downto 0);
    signal Q_sim     : std_logic_vector(N-1 downto 0);

begin
    
    -- +-----+--------+
    -- | OP  | SIGNAL |
    -- +-----+--------+
    -- | ADD |  0100  |
    -- | SUB |  0101  |
    -- | MUL |  0110  |
    -- | AND |  0111  |
    -- | OR  |  1000  |
    -- | NOT |  1001  |
    -- | XOR |  1010  |
    -- +-----+--------+

    ALU : entity work.alu       -- initialize a ALU component for simulation
        Port map
        (
            A     => A_sim,
            B     => B_sim,
            Immed => Immed_sim,
            zero  => zero_sim,
            carry => carry_sim,
            op    => op_sim,
            Q     => Q_sim
        );
    
    stimulus_proc : process
    begin
        -- initialize values
        A_sim   <= x"0000";
        B_sim   <= x"0000";
        op_sim  <= "0000";
        
        -- TEST 1 : ADD ( A = 15, B = 20 ) result must be 35 (x0023)
        A_sim   <= x"000F";
        B_sim   <= x"0014";
        op_sim  <= "0100";
        wait for 10 ns;
        
        -- TEST 2 : SUB ( A = 35, B = 25 ) result must be 10 (x000A)
        A_sim   <= x"0023";
        B_sim   <= x"0019";
        op_sim  <= "0101";
        wait for 10 ns;
        
        -- TEST 3 : MUL ( A = 6, B = 3 ) result must be 18 (x0012)
        A_sim   <= x"0006";
        B_sim   <= x"0003";
        op_sim  <= "0110";
        wait for 10 ns;
        
        -- TEST 4 : AND ( A = FFFF, B = FFFF ) result must be FFFF
        A_sim   <= x"FFFF";
        B_sim   <= x"FFFF";
        op_sim  <= "0111";
        wait for 10 ns;
        
        -- TEST 5 : AND ( A = FFFF, B = FFF0 ) result must be FFF0
        A_sim   <= x"FFFF";
        B_sim   <= x"FFF0";
        op_sim  <= "0111";
        wait for 10 ns;
        
        -- TEST 6 : OR ( A = FBC8, B = CB64 ) result must be FBEC
        A_sim   <= x"FBC8";
        B_sim   <= x"CB64";
        op_sim  <= "1000";
        wait for 10 ns;
        
        -- TEST 7 : NOT ( A = CCBA, B = BFBA ) result must be 3345 (not A, B is not used on this operation)
        A_sim   <= x"CCBA";
        B_sim   <= x"BFBA";
        op_sim  <= "1001";
        wait for 10 ns;
        
        -- TEST 8 : XOR ( A = FA8A, B = 0F18 ) result must be F592
        A_sim   <= x"FA8A";
        B_sim   <= x"0F18";
        op_sim  <= "1010";
        wait for 10 ns;
        
    end process;

end Simulation;









