-- 16 bits processor ROM simulation
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rom_tb is
    Generic
    (
        width : integer := 16
    );
end rom_tb;

architecture Behavioral of rom_tb is
    signal clk_sim  : std_logic;
    signal en_sim   : std_logic;
    signal addr_sim : std_logic_vector(width-1 downto 0);
    signal dout_sim : std_logic_vector(width-1 downto 0);

begin
    ROM : entity work.rom
        Generic map
        (
            addr_width => 16,
            data_width => 16
        )
        Port map
        (
            clk  => clk_sim,
            en   => en_sim,
            addr => addr_sim,
            dout => dout_sim
        );
    
    clk_process : process       -- clock process
    begin
        while now < 1000 ns loop
            clk_sim <= '0';
            wait for 5 ns;
            clk_sim <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;
    
    -- ROM CURRENTY FILL
    -- +--------------+
    -- |     ROM      |
    -- +------+-------+
    -- | ADDR | VALUE |
    -- +------+-------+
    -- |  0   | x1234 |
    -- |  1   | x5678 |
    -- |  2   | x9041 |
    -- |  3   | xFFFF |
    -- |  4   | xA1B2 |
    -- |  5   | xF1D1 |
    -- |others|   0   |
    -- +------+-------+
    
    stimulus_process : process  -- stimulus process
    begin
        en_sim <= '1';
        
        -- READ 1
        addr_sim <= "0000000000000000";
        wait for 10 ns;
        
        -- READ 2
        addr_sim <= "0000000000000001";
        wait for 10 ns;
        
        -- READ 3
        addr_sim <= "0000000000000010";
        wait for 10 ns;
        
        -- READ 4
        addr_sim <= "0000000000000011";
        wait for 10 ns;
        
        -- READ 5
        addr_sim <= "0000000000000100";
        wait for 10 ns;
        
        -- READ 6
        addr_sim <= "0000000000000101";
        wait for 10 ns;
        
        -- READ FAILURE TEST (read should fail because en is '0'
        en_sim   <= '0';
        addr_sim <= "0000000000000000";
        
        wait;
    end process;

end Behavioral;













