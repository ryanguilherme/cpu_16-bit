-- 16 bits processor Control Unit
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control_unit is
    Generic
    (
        N : integer := 16
    );
    Port
    (
        clk      : std_logic;                               -- clock
        rst      : std_logic;                               -- reset
        Immed    : out std_logic_vector(N-1 downto 0);      -- Immediate value
        -- IR_data  : in  std_logic_vector(N-1 downto 0);      -- Instruction data from ROM
        ROM_addr : out std_logic_vector(N-1 downto 0);      -- ROM address to select instruction
        RAM_sel  : out std_logic;                           -- RAM data in selector
        RAM_we   : out std_logic;                           -- RAM write enable
        ROM_en   : out std_logic;                           -- ROM enable
        RF_sel   : out std_logic_vector(1 downto 0);        -- Register File Rd in selector
        Rd_sel   : out std_logic_vector(2 downto 0);        -- Register File Rd selector
        Rd_wr    : out std_logic;                           -- Register File write
        Rm_sel   : out std_logic_vector(2 downto 0);        -- Register File Rm register selector
        Rn_sel   : out std_logic_vector(2 downto 0);        -- Register File Rn register selector
        alu_op   : out std_logic_vector(3 downto 0)        -- ula operation
        -- state    : out std_logic_vector(3 downto 0)         -- state (init, fetch, decode, ...)
    );
end control_unit;

architecture Behavioral of control_unit is
    -- auxiliar registers signals, PC and IR, both update ROM instruction
    signal PC_inc   : std_logic;
    signal PC_D     : std_logic_vector(N-1 downto 0);
    signal PC_Q     : std_logic_vector(N-1 downto 0);
    signal PC_clr   : std_logic;

    signal IR_load  : std_logic;
    signal IR_D     : std_logic_vector(N-1 downto 0);
    signal IR_Q     : std_logic_vector(N-1 downto 0);
begin   
    PC : entity work.reg16      -- PC register instantiate
        Generic map
        (
            N => 16
        )
        Port map
        (
            clk     => clk,
            rst     => PC_clr,
            en      => PC_inc,
            D       => PC_D,
            Q       => PC_Q
        );
        PC_Q <= PC_D + 2;
        
    IR : entity work.reg16      -- IR register instantiate
        Generic map
        (
            N => 16
        )
        Port map
        (
            clk     => clk,
            rst     => rst,
            en      => IR_load,
            D       => IR_D,
            Q       => IR_Q
        );
        
    FSM : entity work.fsm       -- Final State Machine instantiate
        Generic map
        (
            N => 16
        )
        Port map
        (
            clk     => clk,
            rst     => rst,
            IR_data => IR_Q,
            ROM_en  => ROM_en,
            PC_clr  => PC_clr,
            PC_inc  => PC_inc,
            IR_load => IR_load,
            Immed   => Immed,
            RAM_sel => RAM_sel
        );

end Behavioral;







