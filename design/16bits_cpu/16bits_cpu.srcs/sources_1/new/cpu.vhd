-- 16 bits CPU
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpu is
    Generic
    (
        N : integer := 16
    );
    Port
    (
        clk      : std_logic;                           -- clock
        rst      : std_logic                            -- reset       
    );
end cpu;

architecture Behavioral of cpu is
    signal ROM_addr : std_logic_vector(N-1 downto 0);
    signal ROM_dout : std_logic_vector(N-1 downto 0);
    signal ROM_en   : std_logic;
    signal Rn       : std_logic_vector(N-1 downto 0);
    signal s_Rn     : std_logic_vector(N-1 downto 0);  
    signal RAM_sel  : std_logic;
    signal Immed    : std_logic_vector(N-1 downto 0);
    signal RF_sel   : std_logic_vector(1 downto 0);
    signal Rd_sel   : std_logic_vector(2 downto 0);
    signal alu_op   : std_logic_vector(3 downto 0);
    signal Rd_wr    : std_logic; 
    signal Rm_sel   : std_logic_vector(2 downto 0);
    signal Rn_sel   : std_logic_vector(2 downto 0);
    signal RAM_din  : std_logic_vector(N-1 downto 0);  
    signal RAM_dout : std_logic_vector(N-1 downto 0);
    signal RAM_addr : std_logic_vector(N-1 downto 0); 
    signal RAM_we   : std_logic;
    signal stack_en : std_logic;
    signal stack_op : std_logic_vector(1 downto 0);

begin
    DATAPATH : entity work.datapath     -- datapath instantiate
        Generic map
        (
            N => 16
        )
        Port map
        (
            clk      => clk,
            rst      => rst,
            RF_sel   => RF_sel,
            Rd_sel   => Rd_sel,
            Rd_wr    => Rd_wr,
            Rm_sel   => Rm_sel,
            Rn_sel   => Rn_sel,
            Immed    => Immed,
            alu_op   => alu_op,
            RAM_sel  => RAM_sel,
            RAM_din  => RAM_din,
            RAM_dout => RAM_dout,
            RAM_addr => RAM_addr
        );
    
    CONTROL_UNIT : entity work.control_unit     -- control unit instantiate
        Generic map
        (
            N => 16
        )
        Port map
        (
            clk      => clk,
            rst      => rst,
            Immed    => Immed,
            ROM_addr => ROM_addr,
            RAM_sel  => RAM_sel,
            RAM_we   => RAM_we,
            ROM_en   => ROM_en,
            RF_sel   => RF_sel,
            Rd_sel   => Rd_sel,
            Rd_wr    => Rd_wr,
            Rm_sel   => Rm_sel,
            Rn_sel   => Rn_sel,
            alu_op   => alu_op
        );
        
    ROM : entity work.rom                       -- ROM instantiate
        Port map
        (
            clk  => clk,
            en   => ROM_en,
            addr => ROM_addr,
            dout => ROM_dout
        );

    RAM : entity work.ram                       -- RAM instantiate
        Port map
        (
            clk      => clk,
            we       => RAM_we,
            stack_en => stack_en,
            stack_op => stack_op,
            din      => RAM_din,
            addr     => RAM_addr,
            dout     => RAM_dout
        );
end Behavioral;
