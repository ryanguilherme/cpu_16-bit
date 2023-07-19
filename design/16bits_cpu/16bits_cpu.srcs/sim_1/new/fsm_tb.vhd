-- 16 bits processor final state machine simulation
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_tb is
    Generic
    (
        N : integer := 16
    );
end fsm_tb;

architecture Simulation of fsm_tb is
    signal clk_sim     : std_logic;                        -- clock signal
    signal rst_sim     : std_logic;                        -- reset signal
    signal ROM_en_sim  : std_logic;                        -- enable ROM signal
    signal PC_clr_sim  : std_logic;                        -- reset PC signal
    signal PC_inc_sim  : std_logic;                        -- PC increment (+2) signal
    signal IR_load_sim : std_logic;                        -- enable IR to load instruction from ROM signal
    signal IR_data_sim : std_logic_vector(N-1 downto 0);   -- instruction data received from ROM (16 bits) signal
    signal Immed_sim   : std_logic_vector(N-1 downto 0);   -- Immediate value signal
    signal RAM_sel_sim : std_logic;                        -- RAM value selector (immediate or register) signal
    signal RAM_we_sim  : std_logic;                        -- enable RAM write signal
    signal RF_sel_sim  : std_logic_vector(1 downto 0);     -- select Register File Rd input signal
    signal Rd_sel_sim  : std_logic_vector(2 downto 0);     -- Register file Rd selector signal
    signal Rd_wr_sim   : std_logic;                        -- Register file Rd enable signal
    signal Rm_sel_sim  : std_logic_vector(2 downto 0);     -- Register file Rm selector signal
    signal Rn_sel_sim  : std_logic_vector(2 downto 0);     -- Register file Rn selector signal
    signal ula_op_sim  : std_logic_vector(3 downto 0);     -- ULA operation signal
    signal state_signal : std_logic_vector(3 downto 0);
begin
    FSM : entity work.fsm           -- FSM instatiate for simulation
        Generic map
        (
            N => N
        )
        Port map
        (
            clk     => clk_sim,
            rst     => rst_sim,
            ROM_en  => ROM_en_sim,
            PC_clr  => PC_clr_sim,
            PC_inc  => PC_inc_sim,
            IR_load => IR_load_sim,
            IR_data => IR_data_sim,
            Immed   => Immed_sim,
            RAM_sel => RAM_sel_sim,
            RAM_we  => RAM_we_sim,
            RF_sel  => RF_sel_sim,
            Rd_sel  => Rd_sel_sim,
            Rd_wr   => Rd_wr_sim,
            Rm_sel  => Rm_sel_sim,
            Rn_sel  => Rn_sel_sim,
            ula_op  => ula_op_sim,
            state   => state_signal
        );
    
    clk_process : process           -- clock process
    begin
        while now < 1000 ns loop
            clk_sim <= '0';
            wait for 5 ns;
            clk_sim <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;
    
    rst:process
    begin
        rst_sim <= '1';
        wait for 2*5 ns;
        rst_sim <= '0';
        wait;
    end process;
    
    stimulus_process : process      -- stimulus process
    begin
        wait until rst_sim = '0';
        -- TEST 1 :
        IR_data_sim <= x"47f1";
        wait for 10 ns;
        
        -- TEST 2 :
        IR_data_sim <= "0001001110100100";
        wait for 10 ns;
        
        -- TEST 3 :
        IR_data_sim <= "1011010000000010";
        wait for 10 ns;
        
        -- TEST 4 :
        IR_data_sim <= "0000000000000000";
        wait for 10 ns;
        
        -- TEST 5 :
        IR_data_sim <= "1111111111111111";
        wait for 10 ns;
        
        -- END SIMULATION
        wait;
    end process;

end Simulation;











