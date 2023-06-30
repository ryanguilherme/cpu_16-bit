-- 16 bits processor Arithmetic Logic Unit
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
    Generic
    (
        N : integer := 16
    );
    Port 
    (
        A   : in  std_logic_vector(N-1 downto 0);   -- Input operand
        B   : in  std_logic_vector(N-1 downto 0);   -- Input operand
        op  : in  std_logic_vector(3 downto 0);     -- Input operator
        Q   : out std_logic_vector(N-1 downto 0)    -- Output result
    );
end alu;

architecture Behavioral of alu is
    signal result : std_logic_vector(N-1 downto 0);
    signal mul    : std_logic_vector((N*2)-1 downto 0);
begin

    -- +-----+--------+
    -- | OP  | SIGNAL |
    -- +-----+--------+
    -- | ADD |  0100  |
    -- | SUB |  0101  |
    -- | MUL |  0110  |
    -- | AND |  0111  |
    -- | OR  |  1000  |
    -- | NOT |  1001  |
    -- | XOR |  1010  |
    -- +-----+--------+
    
    mul <= A*B;     -- mul is a signal to handle a overflow when multiply
    
    result <=
        A + B       when op = "0100"    else    -- ADD Rd, Rm, Rn   |   Operation: Rd = Rm + Rn
        A - B       when op = "0101"    else    -- SUB Rd, Rm, Rn   |   Operation: Rd = Rm - Rn
        mul(N-1 downto 0)         when op = "0110"    else    -- MUL Rd, Rm, Rn   |   Operation: Rd = Rm * Rn
        A and B     when op = "0111"    else    -- AND Rd, Rm, Rn   |   Operation: Rd = Rm and Rn
        A or B      when op = "1000"    else    -- ORR Rd, Rm, Rn   |   Operation: Rd = Rm or Rn
        not A       when op = "1001"    else    -- NOT Rd, Rm       |   Operation: Rd = ¬Rm
        A xor B     when op = "1010"    else    -- XOR Rd, Rm, Rn   |   Operation: Rd = Rm xor Rn
        
        (others => '0');                        -- Fill Result with x"0000" as default

    Q <= result;

end Behavioral;







