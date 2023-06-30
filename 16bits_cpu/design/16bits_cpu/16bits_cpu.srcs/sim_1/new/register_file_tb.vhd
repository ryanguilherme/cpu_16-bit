-- 16 bits processor Register File Simulation
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_file_tb is
    Generic
    (
        N : integer := 16
    );
end register_file_tb;

architecture Simulation of register_file_tb is
    -- SIGNALS
    signal clk_sim     : std_logic;                        -- clock signal
    signal rst_sim     : std_logic;                        -- reset signal
    signal Rd_sim      : std_logic_vector(N-1 downto 0);   -- Register Rd input signal
    signal Rd_sel_sim  : std_logic_vector(2 downto 0);     -- Register Rd selector signal
    signal Rd_wr_sim   : std_logic;                        -- Register Rd write enable signal
    signal Rm_sel_sim  : std_logic_vector(2 downto 0);     -- Register Rm selector signal
    signal Rn_sel_sim  : std_logic_vector(2 downto 0);     -- Register Rn selector signal
    signal Rm_sim      : std_logic_vector(N-1 downto 0);   -- Rm output signal
    signal Rn_sim      : std_logic_vector(N-1 downto 0);   -- Rn output signal
    
begin
    REGISTER_FILE : entity work.register_file              -- initialize a Register File component for simulation
        Port map
        (
            clk     => clk_sim,
            rst     => rst_sim,
            Rd      => Rd_sim,
            Rd_sel  => Rd_sel_sim,
            Rd_wr   => Rd_wr_sim,
            Rm_sel  => Rm_sel_sim,
            Rn_sel  => Rn_sel_sim,
            Rm      => Rm_sim,
            Rn      => Rn_sim
        );

    clk_process : process               -- clock process
    begin
        while now < 1000 ns loop
            clk_sim <= '0';
            wait for 5 ns;
            clk_sim <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;
    
    stimulus_process : process          -- stimulus process
    begin
        -- initialize inputs
        rst_sim     <= '1';
        Rd_sim      <= (others => '0');
        Rd_sel_sim  <= (others => '0');
        Rd_wr_sim   <= '0';
        Rm_sel_sim  <= (others => '0');
        Rn_sel_sim  <= (others => '0');
        wait for 10 ns;
        rst_sim     <= '0';

        -- TEST 1 :
        wait for 20 ns;
        Rd_sim      <= "1111000011110000";  -- set input data
        Rd_sel_sim  <= "000";               -- select register 0
        Rm_sel_sim  <= "001";               -- select register 1
        Rn_sel_sim  <= "010";               -- select register 2
        Rd_wr_sim   <= '1';                 -- enable write
        wait for 10 ns;
        
        -- TEST 2 :
        wait for 20 ns;
        Rd_sim      <= "0000111100001111";  -- set input data
        Rd_sel_sim  <= "011";               -- select register 3
        Rm_sel_sim  <= "100";               -- select register 4
        Rn_sel_sim  <= "101";               -- select register 5
        Rd_wr_sim   <= '1';                 -- enable write
        wait for 10 ns;
        
        -- TEST 3 :
        wait for 20 ns;
        Rd_sim      <= "0101010101010101";  -- set input data
        Rd_sel_sim  <= "110";               -- select register 6
        Rm_sel_sim  <= "111";               -- select register 7
        Rn_sel_sim  <= "000";               -- select register 0
        Rd_wr_sim   <= '1';                 -- enable write
        wait for 10 ns;
        
        -- TEST 4 :
        wait for 20 ns;
        Rd_sim      <= "0011001100110011";  -- set input data
        Rd_sel_sim  <= "001";               -- select register 1
        Rm_sel_sim  <= "010";               -- select register 2
        Rn_sel_sim  <= "011";               -- select register 3
        Rd_wr_sim   <= '1';                 -- enable write
        wait for 10 ns;
        
        -- TEST 5 :
        wait for 20 ns;
        Rd_sim      <= "1111000011110000";  -- set input data
        Rd_sel_sim  <= "100";               -- select register 4
        Rm_sel_sim  <= "101";               -- select register 5
        Rn_sel_sim  <= "110";               -- select register 6
        Rd_wr_sim   <= '1';                 -- enable write
        wait for 10 ns;
        
        -- TEST 6 :
        wait for 20 ns;
        Rd_sim      <= "1010010001000010";  -- set input data
        Rd_sel_sim  <= "111";               -- select register 7
        Rm_sel_sim  <= "000";               -- select register 0
        Rn_sel_sim  <= "001";               -- select register 1
        Rd_wr_sim   <= '1';                 -- enable write
        wait for 10 ns;
        
    end process;
        
end Simulation;


