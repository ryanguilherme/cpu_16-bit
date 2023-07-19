-- 16 bits processor final state machine
-- author: Ryan Guilherme 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_arith.ALL;

entity fsm is
    Generic
    (
        N : integer := 16
    );
    Port 
    (
        clk      : std_logic;                            -- clock
        rst      : std_logic;                            -- reset
        zero     : out std_logic;                        -- ZERO flag
        carry    : out std_logic;                        -- CARRY flag
        ROM_en   : out std_logic;                        -- enable ROM
        PC_clr   : out std_logic;                        -- reset PC
        PC_inc   : out std_logic;                        -- PC increment (+2)
        IR_load  : out std_logic;                        -- enable IR to load instruction from ROM
        IR_data  : in  std_logic_vector(N-1 downto 0);   -- instruction data received from ROM (16 bits)
        Immed    : out std_logic_vector(N-1 downto 0);   -- Immediate value
        RAM_sel  : out std_logic;                        -- RAM value selector (immediate or register)
        RAM_we   : out std_logic;                        -- enable RAM write
        stack_en : out std_logic;                        -- enable RAM Stack
        stack_op : out std_logic_vector(1 downto 0);     -- RAM Stack operator (01 - PUSH, 10 - POP)
        RF_sel   : out std_logic_vector(1 downto 0);     -- select Register File Rd input
        Rd_sel   : out std_logic_vector(2 downto 0);     -- Register file Rd selector
        Rd_wr    : out std_logic;                        -- Register file Rd enable
        Rm_sel   : out std_logic_vector(2 downto 0);     -- Register file Rm selector
        Rn_sel   : out std_logic_vector(2 downto 0);     -- Register file Rn selector
        ula_op   : out std_logic_vector(3 downto 0);     -- ULA operation
        state    : out std_logic_vector(3 downto 0);     -- state debug port
        jump_en  : out std_logic;                        -- JUMP enable
        jump_op  : out std_logic_vector(1 downto 0)      -- JUMP Operator (00 - JMP; 01 - JEQ; 10 - JLT; 11 - JGT)
    );
end fsm;

architecture Behavioral of fsm is
    type states is (init, fetch, decode, exec_nop, exec_halt, exec_mov, exec_load, exec_store, exec_ula, exec_stack, exec_jump);
    signal NS, PS : states;
    
    signal instruction : std_logic_vector(N-1 downto 0);
    

begin
    instruction <= IR_data;
        
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
                PC_clr   <= '1';
                PC_inc   <= '0';
                ROM_en   <= '0';
                IR_load  <= '0';
                Immed    <= x"0000";
                RAM_sel  <= '0';
                RAM_we   <= '0';
                stack_en <= '0';
                stack_op <= "00";
                RF_sel   <= "00";
                Rd_sel   <= "000";
                Rd_wr    <= '0';
                Rm_sel   <= "000";
                Rn_sel   <= "000";
                ula_op   <= "0000";
                jump_en  <= '0';
                jump_op  <= "00";
                NS       <= fetch;
                state    <= "0001";                 
            when fetch  =>
                PC_clr   <= '0';
                PC_inc   <= '1';
                ROM_en   <= '1';
                IR_load  <= '1';
                Immed    <= x"0000";
                RAM_sel  <= '0';
                RAM_we   <= '0';
                stack_en <= '0';
                stack_op <= "00";
                RF_sel   <= "00";
                Rd_sel   <= "000";
                Rd_wr    <= '0';
                Rm_sel   <= "000";
                Rn_sel   <= "000";
                ula_op   <= "0000";
                jump_en  <= '0';
                jump_op  <= "00";
                NS       <= decode;
                state    <= "0010";
                             
            when decode =>
                PC_clr   <= '0';
                PC_inc   <= '0';
                ROM_en   <= '0';
                IR_load  <= '0';
                Immed    <= x"0000";
                RAM_sel  <= '0';
                RAM_we   <= '0';
                stack_en <= '0';
                stack_op <= "00";
                RF_sel   <= "00";
                Rd_sel   <= "000";
                Rd_wr    <= '0';
                Rm_sel   <= "000";
                Rn_sel   <= "000";
                ula_op   <= "0000";
                jump_en  <= '0';
                jump_op  <= "00";
 
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
            
            if    instruction(15 downto 0) = x"0000"  then
                NS <= exec_nop;
                state   <= "0011";
            elsif instruction(15 downto 0) = x"FFFF"  then
                NS <= exec_halt;
                state   <= "0100";
            elsif instruction(15 downto 12) = "0001"  then
                NS <= exec_mov;
                state   <= "0101";
            elsif instruction(15 downto 12) = "0010"  then
                NS <= exec_store;
                state   <= "0111";
            elsif instruction(15 downto 12) = "0011"  then
                NS <= exec_load;
                state   <= "1000";
            elsif (instruction(15 downto 11) = "00000" and instruction(1 downto 0) = "01") or 
                  (instruction(15 downto 11) = "00000" and instruction(1 downto 0) = "10") then
                NS <= exec_stack;
            elsif instruction(15 downto 11) = "00001" then
                NS <= exec_jump;
            elsif (instruction(15 downto 12) = "0000" and instruction(1 downto 0) = "11") or -- CMP
                   instruction(15 downto 12) = "0100" or     -- ADD
                   instruction(15 downto 12) = "0101" or     -- SUB
                   instruction(15 downto 12) = "0110" or     -- MUL
                   instruction(15 downto 12) = "0111" or     -- AND
                   instruction(15 downto 12) = "1000" or     -- ORR
                   instruction(15 downto 12) = "1001" or     -- NOT
                   instruction(15 downto 12) = "1010" or     -- XOR
                   instruction(15 downto 12) = "1011" or     -- SHR
                   instruction(15 downto 12) = "1100" or     -- SHL
                   instruction(15 downto 12) = "1101" or     -- ROR
                   instruction(15 downto 12) = "1110" then   -- ROL
                NS <= exec_ula;
                state   <= "1001";
            else
                NS <= exec_nop;
                state   <= "1010";
            end if;
            
            when exec_nop =>
                NS <= fetch;
                state   <= "0010";
            
            when exec_halt =>
                NS <= exec_halt;
                state   <= "1011";
            
            when exec_mov =>
                if    instruction(11) = '0' then
                    Rd_sel <= instruction(10 downto 8);
                    Rm_sel <= instruction(7 downto 5);
                    Rd_sel <= instruction(7 downto 5);
                    RF_sel <= "00";
                elsif instruction(11) = '1' then
                    Rd_sel <= instruction(10 downto 8);
                    Immed  <= x"00" & instruction(7 downto 0);
                    Rd_sel <= instruction(7 downto 5);
                    RF_sel <= "10";
                end if;
                NS <= fetch;
                state   <= "1100";
            
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
                state   <= "1101";
                
            when exec_load =>
                Rd_sel <= instruction(10 downto 8);
                Rm_sel <= instruction(7 downto 5);
                RF_sel <= "01";
                Rd_wr  <= '1';
                NS <= fetch;
                state   <= "1111";
            
            when exec_ula =>
                Rd_sel <= instruction(10 downto 8);
                Rm_sel <= instruction(7 downto 5);
                Rn_sel <= instruction(4 downto 2);
                RF_sel <= "11";
                Rd_wr  <= '1';
                ula_op <= instruction(15 downto 12);
                NS <= fetch;
                state   <= "1001";
                if (instruction(15 downto 12) = "1011" or instruction(15 downto 12) = "1100") then
                    Immed <= x"00" & "000" & instruction(4 downto 0);
                end if;
            when exec_stack =>
                Rn_sel   <= instruction(4 downto 2);
                Rd_sel   <= instruction(10 downto 8);
                RAM_sel  <= '0';
                RAM_we   <= '1';
                stack_en <= '1';
                stack_op <= instruction(1 downto 0);
                RF_sel   <= "01";
                
                NS <= fetch;
            when exec_jump =>
                jump_en <= '1';
                jump_op <= instruction(1 downto 0);
                Immed <= x"00" & instruction(10 downto 2);
                NS <= fetch;
            when others =>
                NS <= fetch;
                state   <= "0010";
        
        end case;
    end process;
end Behavioral;











