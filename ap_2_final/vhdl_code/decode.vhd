library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.pkg_processor.all;

entity decode is
    Port ( I_clk        : in   STD_LOGIC;
           I_en         : in   STD_LOGIC;
           I_dataInst   : in   STD_LOGIC_VECTOR (15 downto 0); -- Instruction para ser decodificada
           O_selA       : out  STD_LOGIC_VECTOR (2 downto 0);     -- Selecionar saída para regA
           O_selB       : out  STD_LOGIC_VECTOR (2 downto 0);     -- Selecionar saída para regB
           O_selD       : out  STD_LOGIC_VECTOR (2 downto 0);     -- Selecionar saída para regD
           O_dataIMM    : out  STD_LOGIC_VECTOR (15 downto 0); -- Immediate valor de saída
           O_regDwe     : out  STD_LOGIC;                       -- RegD habilitar gravação
           O_aluop      : out  STD_LOGIC_VECTOR (3 downto 0)     -- Opcode da ULA
    );
end decode;

architecture Behavioral of decode is

begin

process(I_clk, I_en)
begin
    if rising_edge(I_clk) then
        if I_en = '1' then
            case I_dataInst(15 downto 12) is
                    -- TYPE: ADD
                    -- FORMAT: RRR
                    when "0000" =>
                        O_aluop     <= "0000";
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '1';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= I_dataInst(4 downto 2);
                        O_selD      <= I_dataInst(11 downto 9);
                    -- TYPE: SUB
                    -- FORMAT: RRR
                    when "0001" =>
                        O_aluop     <= "0001";
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '1';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= I_dataInst(4 downto 2);
                        O_selD      <= I_dataInst(11 downto 9);
                    -- TYPE: OR
                    -- FORMAT: RRR
                    when "0010" =>
                        O_aluop     <= "0010";
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '1';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= I_dataInst(4 downto 2);
                        O_selD      <= I_dataInst(11 downto 9);
                    -- TYPE: XOR
                    -- FORMAT: RRR
                    when "0011" =>
                        O_aluop     <= "0011";
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '1';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= I_dataInst(4 downto 2);
                        O_selD      <= I_dataInst(11 downto 9);
                    -- TYPE: AND
                    -- FORMAT: RRR
                    when "0100" =>
                        O_aluop     <= "0100";
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '1';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= I_dataInst(4 downto 2);
                        O_selD      <= I_dataInst(11 downto 9);
                    -- TYPE: NOT
                    -- FORMAT: RRd
                    when "0101" =>
                        O_aluop     <= (others => '0');
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '1';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= (others => '0');
                        O_selD      <= I_dataInst(11 downto 9);
                    -- TYPE: READ
                    -- FORMAT: RRd
                    when "0110" =>
                        O_aluop     <= (others => '0');
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '0';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= (others => '0');
                        O_selD      <= I_dataInst(11 downto 9);
                    -- TYPE: WRITE
                    -- FORMAT: RRs
                    when "0111" =>
                        O_aluop     <= (others => '0');
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '1';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= I_dataInst(4 downto 2);
                        O_selD      <= (others => '0');
                    -- TYPE: LOAD
                    -- FORMAT: RImm
                    when "1000" =>
                        O_aluop     <= (others => '0');
                        O_dataIMM   <= x"00" & I_dataInst(7 downto 0);
                        O_regDwe    <= '1';
                        O_selA      <= (others => '0');
                        O_selB      <= (others => '0');
                        O_selD      <= I_dataInst(11 downto 9);
                    -- TYPE: CMP
                    -- FORMAT: RRR
                    when "1001" =>
                        O_aluop     <= (others => '0');
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '0';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= I_dataInst(4 downto 2);
                        O_selD      <= I_dataInst(11 downto 9);
                    -- FORMAT: SHL
                    -- FORMAT: RRR
                    when "1010" =>
                        O_aluop     <= (others => '0');
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '1';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= I_dataInst(4 downto 2);
                        O_selD      <= I_dataInst(11 downto 9);
                    -- TYPE: SHR
                    -- FORMAT: RRR
                    when "1011" =>
                        O_aluop     <= (others => '0');
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '1';
                        O_selA      <= I_dataInst(7 downto 5);
                        O_selB      <= I_dataInst(4 downto 2);
                        O_selD      <= I_dataInst(11 downto 9);
                    when others =>
                        O_aluop     <= (others => '0');
                        O_dataIMM   <= (others => '0');
                        O_regDwe    <= '0';
                        O_selA      <= (others => '0');
                        O_selB      <= (others => '0');
                        O_selD      <= (others => '0');
                end case;
            end if;
        end if;
end process;

end Behavioral;
