-- 16 bits processor RAM simulation
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ram_tb is
    Generic
    (
        addr_width : integer := 16;
        data_width : integer := 16
    );
end ram_tb;

architecture Simulation of ram_tb is
    signal clk_sim      : std_logic;                                    -- clock signal
    signal we_sim       : std_logic;                                    -- write enable signal
    signal stack_en_sim : std_logic;                                    -- stack enable signal
    signal addr_sim     : std_logic_vector(addr_width-1 downto 0);      -- address signal
    signal din_sim      : std_logic_vector(data_width-1 downto 0);      -- data input signal
    signal dout_sim     : std_logic_vector(data_width-1 downto 0);      -- data output signal
begin
    RAM : entity work.ram          -- instantiate a RAM component for simulation
        Generic map
        (
            addr_width => addr_width,
            data_width => data_width
        )
        Port map
        (
            clk      => clk_sim,
            we       => we_sim,
            stack_en => stack_en_sim,
            addr     => addr_sim,
            din      => din_sim,
            dout     => dout_sim
        );
    
    clk_process : process           -- clock process
    begin
        while now < 100 ns loop
            clk_sim <= '0';
            wait for 5 ns;
            clk_sim <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;
    
    stimulus_process : process      -- stimulus process
    begin
        -- TEST 1 : write data 0xFAFB to address 0x0F10
        we_sim      <= '1';
        addr_sim    <= x"0F10";
        din_sim     <= x"FAFB";
        wait for 10 ns;
        
        -- TEST 2 : read data from 0x0F10 address, return must be 0xFAFB
        we_sim      <= '0';
        addr_sim    <= x"0F10";
        wait for 10 ns;
        
        -- TEST 3 : write data 0x1234 to address 0x3F3F
        we_sim      <= '1';
        addr_sim    <= x"3F3F";
        din_sim     <= x"1234";
        wait for 10 ns;
        
        -- TEST 4 : read data from 0x3F3F address, return must be 0x1234
        we_sim      <= '0';
        addr_sim    <= x"3F3F";
        wait for 10 ns;
        
        -- TEST 5 : read data from 0xFFAA address, return must be 0x0000 because this address is not written yet
        we_sim      <= '0';
        addr_sim    <= x"FFAA";
        wait for 10 ns;
        
        -- END SIMULATION
        wait;
    end process;

end Simulation;













