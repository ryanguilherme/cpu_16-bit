library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity instruction_decoder_testbench is
--  Port ( );
end instruction_decoder_testbench;

architecture Simulation of instruction_decoder_testbench is
    
    -- SIGNALS
    signal clock_signal             : STD_LOGIC := '0';
    signal enable_signal            : STD_LOGIC := '0';
    signal instruction_in_signal    : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal alu_op_signal            : STD_LOGIC_VECTOR(3 downto 0);
    signal immediate_signal         : STD_LOGIC_VECTOR(7 downto 0);
    signal write_enable_signal      : STD_LOGIC;
    signal rA_select_signal         : STD_LOGIC_VECTOR(2 downto 0);
    signal rB_select_signal         : STD_LOGIC_VECTOR(2 downto 0);
    signal rD_select_signal         : STD_LOGIC_VECTOR(2 downto 0);
    
begin
    -- INSTRUCTION DECODER INSTANCE
    DUT: entity work.instruction_decoder
        Port map (
            clock => clock_signal,
            enable => enable_signal,
            instruction_in => instruction_in_signal,
            alu_op => alu_op_signal,
            immediate => immediate_signal,
            write_enable => write_enable_signal,
            rA_select => rA_select_signal,
            rB_select => rB_select_signal,
            rD_select => rD_select_signal
        );
        
    -- CLOCK PROCESS
    clock_process : process
    begin
        while now < 1000 ns loop
            clock_signal <= '0';
            wait for 5 ns;
            clock_signal <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;
    
    -- TESTS
    tests_process : process
    begin
        -- TEST 1 : RRR instruction
        instruction_in_signal <= "0000111100100000";
        enable_signal         <= '1';
        wait for 10 ns;
        
        -- TEST 2 : RRd instruction
        instruction_in_signal <= "0101101100010000";
        enable_signal         <= '1';
        wait for 10 ns;

        -- TEST 3 : RRs instruction
        instruction_in_signal <= "0111100100110000";
        enable_signal         <= '1';
        wait for 10 ns;

        -- TEST 4 : RRR instruction
        instruction_in_signal <= "0011110100000000";
        enable_signal         <= '1';
        wait for 10 ns;

        -- TEST 5 : RImm instruction
        instruction_in_signal <= "0100101111111111";
        enable_signal         <= '1';
        wait for 10 ns;
    end process;

end Simulation;






