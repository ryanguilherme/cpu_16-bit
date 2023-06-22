library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_decoder is
    generic(N : integer := 16);
    Port ( 
           clock            : in STD_LOGIC;
           enable           : in STD_LOGIC;
           instruction_in   : in STD_LOGIC_VECTOR(N-1 downto 0);
           alu_op           : out STD_LOGIC_VECTOR(3 downto 0);
           immediate        : out STD_LOGIC_VECTOR(7 downto 0);
           write_enable     : out STD_LOGIC;
           rA_select        : out STD_LOGIC_VECTOR(2 downto 0);
           rB_select        : out STD_LOGIC_VECTOR(2 downto 0);
           rD_select        : out STD_LOGIC_VECTOR(2 downto 0)      
    );
end instruction_decoder;

architecture Behavioral of instruction_decoder is

begin
    process(clock)
    begin
        if rising_edge(clock) then
            if enable = '1' then
                case instruction_in(15 downto 12) is
                    -- TYPE: ADD
                    -- FORMAT: RRR
                    when "0000" =>
                        alu_op <= "0000";
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= instruction_in(4 downto 2);
                        rD_select <= instruction_in(11 downto 9);
                    -- TYPE: SUB
                    -- FORMAT: RRR
                    when "0001" =>
                        alu_op <= "0000";
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= instruction_in(4 downto 2);
                        rD_select <= instruction_in(11 downto 9);
                    -- TYPE: OR
                    -- FORMAT: RRR
                    when "0010" =>
                        alu_op <= "0000";
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= instruction_in(4 downto 2);
                        rD_select <= instruction_in(11 downto 9);
                    -- TYPE: XOR
                    -- FORMAT: RRR
                    when "0011" =>
                        alu_op <= "0000";
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= instruction_in(4 downto 2);
                        rD_select <= instruction_in(11 downto 9);
                    -- TYPE: AND
                    -- FORMAT: RRR
                    when "0100" =>
                        alu_op <= "0000";
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= instruction_in(4 downto 2);
                        rD_select <= instruction_in(11 downto 9);
                    -- TYPE: NOT
                    -- FORMAT: RRd
                    when "0101" =>
                        alu_op <= (others => '0');
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= (others => '0');
                        rD_select <= instruction_in(11 downto 9);
                    -- TYPE: READ
                    -- FORMAT: RRd
                    when "0110" =>
                        alu_op <= (others => '0');
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= (others => '0');
                        rD_select <= instruction_in(11 downto 9);
                    -- TYPE: WRITE
                    -- FORMAT: RRs
                    when "0111" =>
                        alu_op <= (others => '0');
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= instruction_in(4 downto 2);
                        rD_select <= (others => '0');
                    -- TYPE: LOAD
                    -- FORMAT: RImm
                    when "1000" =>
                        alu_op <= (others => '0');
                        immediate <= instruction_in(7 downto 0);
                        rA_select <= (others => '0');
                        rB_select <= (others => '0');
                        rD_select <= instruction_in(11 downto 9);
                    -- TYPE: CMP
                    -- FORMAT: RRR
                    when "1001" =>
                        alu_op <= "0000";
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= instruction_in(4 downto 2);
                        rD_select <= instruction_in(11 downto 9);
                    -- FORMAT: SHL
                    -- FORMAT: RRR
                    when "1010" =>
                        alu_op <= "0000";
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= instruction_in(4 downto 2);
                        rD_select <= instruction_in(11 downto 9);
                    -- TYPE: SHR
                    -- FORMAT: RRR
                    when "1011" =>
                        alu_op <= "0000";
                        immediate <= (others => '0');
                        rA_select <= instruction_in(7 downto 5);
                        rB_select <= instruction_in(4 downto 2);
                        rD_select <= instruction_in(11 downto 9);
                end case;
            end if;
        end if;
    end process;
end Behavioral;







