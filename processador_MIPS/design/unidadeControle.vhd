library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.pkg_mips.ALL;

entity unidadeControle is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           uins : out microinstrucoes;
           instruction : in bus32;
           i_address : out bus32);
end unidadeControle;

architecture Behavioral of unidadeControle is
    signal incpc, pc : bus32;
    signal i: inst_tipo;
begin
  rpc: entity work.registrador generic map (INIT_VALUE=>X"00400000")
    port map(clk=>clk, rst=>rst, en=>'1', D=>incpc, Q=>pc);
  incpc <= pc + 4;  
  -- decodificacao de instrucoes
  i_address <= pc;
  uins.i <= i;
  i <= ADDU when instruction(31 downto 26)="000000"   and instruction(10 downto 0)="00000100001" else
       SUBU   when instruction(31 downto 26)="000000" and instruction(10 downto 0)="00000100011" else
       AAND   when instruction(31 downto 26)="000000" and instruction(10 downto 0)="00000100100" else
       OOR    when instruction(31 downto 26)="000000" and instruction(10 downto 0)="00000100101" else
       XXOR   when instruction(31 downto 26)="000000" and instruction(10 downto 0)="00000100110" else
       NNOR   when instruction(31 downto 26)="000000" and instruction(10 downto 0)="00000100111" else
       ORI    when instruction(31 downto 26)="001101" 						 else
       LW     when instruction(31 downto 26)="100011" 						 else
       SW     when instruction(31 downto 26)="101011" 						 else
       inst_invalida ; -- condicao "default"
         
  assert i/= inst_invalida
    report "Instrução invalida"
    severity error;
  -- gerador de sinais de controle para acesso a memoria externa
  uins.en	<= '1' when i=SW or i=LW else '0';
  uins.rw	<= '0' when i=SW else '1';
  uins.wreg	<= '0' when i=SW else '1';
  

end Behavioral;
