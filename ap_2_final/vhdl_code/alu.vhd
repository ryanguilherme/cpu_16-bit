library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;
use work.pkg_processor.all;

entity alu is 
    Port (
        I_clk           : in   STD_LOGIC;
        I_en            : in   STD_LOGIC;
        I_dataA         : in   STD_LOGIC_VECTOR (15 downto 0);
        I_dataB         : in   STD_LOGIC_VECTOR (15 downto 0);
        I_dataDwe       : in   STD_LOGIC;
        I_aluop         : in   STD_LOGIC_VECTOR (3 downto 0);
        I_PC            : in   STD_LOGIC_VECTOR (15 downto 0);
        I_dataIMM       : in   STD_LOGIC_VECTOR (15 downto 0);
        O_dataResult    : out  STD_LOGIC_VECTOR (15 downto 0);
        O_dataWriteReg  : out  STD_LOGIC
      );
end alu;

architecture Behavioral of alu is
    signal result_cmp : STD_LOGIC;
begin
    process(I_clk,I_en)
    begin
        if (I_clk'event and I_clk='1' and I_en = '1') then
            O_dataWriteReg <= I_dataDwe; 
                           
            case I_aluop(3 downto 0) is
                when OPCODE_ADD =>                     
                    O_dataResult <= std_logic_vector(I_dataA + I_dataB);
                when OPCODE_SUB =>                     
                    O_dataResult <= std_logic_vector(I_dataA - I_dataB);
                when OPCODE_OR =>                     
                    O_dataResult <= I_dataA or I_dataB;
                when OPCODE_XOR =>                     
                    O_dataResult <= I_dataA xor I_dataB;
                when OPCODE_AND => 	                    
                    O_dataResult <= I_dataA and I_dataB;
                when OPCODE_NOT =>                     
                    O_dataResult <= not I_dataA;
                when OPCODE_READ => 	
                    O_dataResult <= I_dataA;
                when OPCODE_WRITE => 
                    O_dataResult <= I_dataIMM;
                when OPCODE_LOAD =>                     
                    O_dataResult <= I_dataIMM;
                when OPCODE_CMP => 
                    if I_dataA = I_dataB then
                        result_cmp <= '1';
                    else
                        result_cmp <= '0';
                    end if;
                when OPCODE_SHL => 
                    --O_dataResult <= to_stdlogicvector(to_bitvector(I_dataA) sla to_integer(unsigned(I_dataB)));
                when OPCODE_SHR => 	
                    --O_dataResult <= to_stdlogicvector(to_bitvector(I_dataA) sra to_integer(unsigned(I_dataB)));
                when others =>
                    O_dataResult <= (others => '0');
            end case;
	  end if;
	end process;
	
	--O_dataResult <= 

end Behavioral;
