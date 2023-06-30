-- 16 bits processor final state machine
-- author: Ryan Guilherme 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fsm is
    Generic
    (
        N : integer := 16
    );
    Port 
    (
        clk     : std_logic;                            -- clock
        rst     : std_logic;                            -- reset
        ROM_en  : out std_logic;                        -- enable ROM
        PC_clr  : out std_logic;                        -- reset PC
        PC_inc  : out std_logic;                        -- PC increment (+2)
        IR_load : out std_logic;                        -- enable IR to load instruction from ROM
        IR_data : in  std_logic;                        -- instruction data received from ROM (16 bits)
        Immed   : out std_logic_vector(N-1 downto 0);   -- Immediate value
        RAM_sel : out std_logic;                        -- RAM value selector (immediate or register)
        RAM_we  : out std_logic;                        -- enable RAM write
        RF_sel  : out std_logic_vector(1 downto 0);     -- select Register File Rd input
        Rd_sel  : out std_logic_vector(2 downto 0);     -- Register file Rd selector
        Rd_wr   : out std_logic;                        -- Register file Rd enable
        Rm_sel  : out std_logic_vector(2 downto 0);     -- Register file Rm selector
        Rn_sel  : out std_logic_vector(2 downto 0);     -- Register file Rn selector
        ula_op  : out std_logic_vector(3 downto 0)      -- ULA operation
    );
end fsm;

architecture Behavioral of fsm is
    type states is (init, fetch, decode, exec_nop, exec_halt, exec_mov, exec_load, exec_store, exec_ula);
    signal NS, PS : states;
    
    signal instruction : std_logic_vector(N-1 downto 0);
    

begin
    process(clk, rst)
    begin
        if rst = '1' then
            PS <= init;
        elsif clk'event and clk = '1' then
            PS <= NS;
        end if;
    end process;
    
    process(PS)
    begin
        case PS is
            when init  =>
                PC_clr  <= '1';
                PC_inc  <= '0';
                ROM_en  <= '0';
                IR_load <= '0';
                Immed   <= x"0000";
                RAM_sel <= '0';
                RAM_we  <= '0';
                RF_sel  <= "00";
                Rd_sel  <= "000";
                Rd_wr   <= '0';
                Rm_sel  <= "000";
                Rn_sel  <= "000";
                ula_op  <= "0000";
                
            when fetch  =>
                PC_clr  <= '0';
                PC_inc  <= '1';
                ROM_en  <= '1';
                IR_load <= '1';
                Immed   <= x"0000";
                RAM_sel <= '0';
                RAM_we  <= '0';
                RF_sel  <= "00";
                Rd_sel  <= "000";
                Rd_wr   <= '0';
                Rm_sel  <= "000";
                Rn_sel  <= "000";
                ula_op  <= "0000";
            
            when decode =>
                PC_clr  <= '0';
                PC_inc  <= '0';
                ROM_en  <= '0';
                IR_load <= '0';
                Immed   <= x"0000";
                RAM_sel <= '0';
                RAM_we  <= '0';
                RF_sel  <= "00";
                Rd_sel  <= "000";
                Rd_wr   <= '0';
                Rm_sel  <= "000";
                Rn_sel  <= "000";
                ula_op  <= "0000";
 
-- +---------+--------+---------+----------+-----------+----------+-----------+------------+----------+
-- | signal  |        |  0000   |   0001   |   0011    |   0100   |   0101    |    0110    |   0111   |
-- +---------+--------+---------+----------+-----------+----------+-----------+------------+----------+
-- | states  |  init  |  fetch  |  decode  | exec_halt | exec_mov | exec_load | exec_store | exec_ula |
-- +---------+--------+---------+----------+-----------+----------+-----------+------------+----------+
-- | PC_clr  |    1   |    0    |     0    |     -     |     -    |     -     |     -      |    -     |
-- | PC_inc  |    0   |    1    |     0    |     -     |     -    |     -     |     -      |    -     |
-- | ROM_en  |    0   |    1    |     0    |     -     |     -    |     -     |     -      |    -     |
-- | IR_ld   |    0   |    1    |     0    |     -     |     -    |     -     |     -      |    -     |
-- | Immed   | x"0000"| x"0000" |  x"0000" |     -     |     -    |     -     |     -      |    -     |
-- | RAM_sel |    0   |    0    |     0    |     -     |     -    |     -     |     -      |    -     |
-- | RAM_we  |    0   |    0    |     0    |     -     |     -    |     -     |     1      |    -     |
-- | RF_sel  |   00   |   00    |    00    |     -     |  10 / 00 |    01     |     -      |    11    |
-- | Rd_sel  |   000  |   000   |    000   |     -     |     -    |     -     |     -      |    -     |
-- | Rm_sel  |   000  |   000   |    000   |     -     |     -    |     -     |     -      |    -     |
-- | Rn_sel  |   000  |   000   |    000   |     -     |     -    |     -     |     -      |    -     |
-- | ula_op  |  0000  |  0000   |   0000   |     -     |     -    |     -     |     -      |    -     |
-- +---------+--------+---------+----------+-----------+----------+-----------+------------+----------+

-- +----------+--------+--------------------+             +------------+---------+--------------------+ 
-- |          | RF_sel |                    |             |            | RAM_sel |                    |
-- +----------+--------+--------------------+             +------------+---------+--------------------+
-- | exec_mov |   10   | Rd = x"00" + immed |             | exec_store |    1    | Rm = x"00" + immed |
-- |          |   00   | Rd = Rm_sel        |             |            |    0    | Rm = Rn_sel        |
-- +----------+--------+--------------------+             +------------+---------+--------------------+

-- +----------------+-----------------+-------+-------------+----+---------------------------------------------+
-- | INSTRUCTION    | OPERATION       | TYPE  | 15 14 13 12 | 11 | 10  9   8   7   6   5   4   3   2   1   0   |
-- +----------------+-----------------+-------+-------------+----+---------------------------------------------+
-- | NOP            | nop             | NOP   | 0  0  0  0  | 0  | 0   0   0   0   0   0   0   0   0   0   0   |
-- | HALT           | halt            | HALT  | 1  1  1  1  | 1  | 1   1   1   1   1   1   1   1   1   1   1   |
-- | MOV Rd, Rm     | Rd = Rm         | MOV   | 0  0  0  1  | 0  | Rd2 Rd1 Rd0 Rm2 Rm1 Rm0 -   -   -   -   -   |
-- | MOV Rd, #Im    | Rd = #Im        | MOV   | 0  0  0  1  | 1  | Rd2 Rd1 Rd0 Im7 Im6 Im5 Im4 Im3 Im2 Im1 Im0 |
-- | STR [Rm], Rn   | [Rm] = Rn       | STORE | 0  0  1  0  | 0  | -   -   -   Rm2 Rm1 Rm0 Rn2 Rn1 Rn0 -   -   |
-- | STR [Rm], #Im  | [Rm] = #Im      | STORE | 0  0  1  0  | 1  | Im7 Im6 Im5 Rm2 Rm1 Rm0 Im4 Im3 Im2 Im1 Im0 |
-- | LDR Rd, [Rm]   | Rd = [Rm]       | LOAD  | 0  0  1  1  | -  | Rd2 Rd1 Rd0 Rm2 Rm1 Rm0 -   -   -   -   -   |
-- | ADD Rd, Rm, Rn | Rd = Rm + Rn    |  ALU  | 0  1  0  0  | -  | Rd2 Rd1 Rd0 Rm2 Rm1 Rm0 Rn2 Rn1 Rn0 -   -   |
-- | SUB Rd, Rm, Rn | Rd = Rm - Rn    |  ALU  | 0  1  0  1  | -  | Rd2 Rd1 Rd0 Rm2 Rm1 Rm0 Rn2 Rn1 Rn0 -   -   |
-- | MUL Rd, Rm, Rn | Rd = Rm * Rn    |  ALU  | 0  1  1  0  | -  | Rd2 Rd1 Rd0 Rm2 Rm1 Rm0 Rn2 Rn1 Rn0 -   -   |
-- | AND Rd, Rm, Rn | Rd = Rm and Rn  |  ALU  | 0  1  1  1  | -  | Rd2 Rd1 Rd0 Rm2 Rm1 Rm0 Rn2 Rn1 Rn0 -   -   |
-- | ORR Rd, Rm, Rn | Rd = Rm or Rn   |  ALU  | 1  0  0  0  | -  | Rd2 Rd1 Rd0 Rm2 Rm1 Rm0 Rn2 Rn1 Rn0 -   -   |
-- | NOT Rd, Rm     | Rd = ¬Rm        |  ALU  | 1  0  0  1  | -  | Rd2 Rd1 Rd0 Rm2 Rm1 Rm0 -   -   -   -   -   |
-- | XOR Rd, Rm, Rn | Rd = Rm xor Rn  |  ALU  | 1  0  1  0  | -  | Rd2 Rd1 Rd0 Rm2 Rm1 Rm0 Rn2 Rn1 Rn0 -   -   |
-- +----------------+-----------------+-------+-------------+----+---------------------------------------------+
            
            if instruction(15 downto 0) = x"0000" then
                NS <= exec_nop;
            elsif instruction(15 downto 0) = x"FFFF" then
                NS <= exec_halt;
            elsif instruction(15 downto 12) = "0001" then
                NS <= exec_mov;
            elsif instruction(15 downto 12) = "0010" then
                NS <= exec_store;
            elsif instruction(15 downto 12) = "0011" then
                NS <= exec_load;
            elsif instruction(15 downto 12) = "0100" or 
                  instruction(15 downto 12) = "0101" or 
                  instruction(15 downto 12) = "0110" or
                  instruction(15 downto 12) = "0111" or
                  instruction(15 downto 12) = "1000" or
                  instruction(15 downto 12) = "1001" or
                  instruction(15 downto 12) = "1010" then
                NS <= exec_ula;
            else
                NS <= exec_nop;
            end if;
            
            when exec_nop =>
                NS <= fetch;
            
            when exec_halt =>
                NS <= exec_halt;
            
            when exec_mov =>
                if    instruction(11) = '0' then
                    Rd_sel <= instruction(10 downto 8);
                    Rm_sel <= instruction(7 downto 5);
                    Rd_sel <= instruction(7 downto 5);
                    RF_sel <= "00";
                elsif instruction(11) = '1' then
                    Rd_sel <= instruction(10 downto 8);
                    Immed  <= instruction(7 downto 0);
                    Rd_sel <= instruction(7 downto 0);
                    RF_sel <= "10";
                end if;
                NS <= fetch;
            
            when exec_store =>
                if    instruction(11) = '0' then
                    Rm_sel <= instruction(7 downto 5);
                    Rn_sel <= instruction(4 downto 2);
                elsif instruction(11) = '1' then
                    Rm_sel <= instruction(7 downto 5);
                    Immed  <= x"00" & instruction(10 downto 8) & instruction(4 downto 0);
                end if;
                RAM_we  <= '1';
                RAM_sel <= instruction(11); 
                NS <= fetch;
                
            when exec_load =>
                Rd_sel <= instruction(10 downto 8);
                Rm_sel <= instruction(7 downto 5);
                RF_sel <= "01";
                Rd_wr  <= '1';
            
            when exec_ula =>
                Rd_sel <= instruction(10 downto 8);
                Rm_sel <= instruction(7 downto 5);
                Rn_sel <= instruction(4 downto 2);
                RF_sel <= "11";
                Rd_wr  <= '1';
            
            when others =>
                NS <= fetch;
        
        end case;
    end process;
end Behavioral;











