library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.pkg_mips.ALL;

entity datapath is
    Port ( clk         : in STD_LOGIC;
           rst         : in STD_LOGIC;
           uins        : in microinstruction;
           d_address   : out reg32;
           data        : inout reg32;
           instruction : in reg32);
end datapath;

architecture Behavioral of datapath is
    signal result, r1, r2, ext32, reg_dest, op2 : reg32;
    signal adD : std_logic_vector(4 downto 0);
    signal instR, zero : std_logic;
begin
    instR <= '1' when uins.i=ADDU or uins.i=SUBU or uins.i=AAND or uins.i=OOR or uins.i=XXOR or uins.i=NNOR else '0';
    -- instrução  com formato R
    m1: adD <= instruction(15 downto 11) when instR='1' else instruction(20 downto 16);
    
    -- escolha da instrucao de execucao
    REGS: entity work.bancoRegistradores port map
	(clk=>clk, rst=>rst, en=>uins.wreg, AdRP1=>instruction(25 downto 21),
	AdRP2=>instruction(20 downto 16), AdWP=>adD,
        DataWP=>reg_dest, DataRP1=>r1, DataRP2=>r2);
    
    -- extensao de 32 bits 
    m2: ext32 <= x"FFFF" & instruction(15 downto 0) when instruction(15)='1' and (uins.i=LW or uins.i=SW) else
	     x"0000" & instruction(15 downto 0);
    -- sinal da ula 
    m3: op2 <= r2 when instR='1' else ext32;
    inst_ula: entity work.ula port map(op1=>r1, op2=>op2, resultado=>result, zero=>zero, op_ula=>uins.i);
    -- operacoes de memoria de dados
    d_address <= result;
    
    data <= r2 when uins.en='1' and uins.rw='0' else (others=>'Z');
    
    m4: reg_dest <= data when uins.i=LW else result;
    
end Behavioral;
