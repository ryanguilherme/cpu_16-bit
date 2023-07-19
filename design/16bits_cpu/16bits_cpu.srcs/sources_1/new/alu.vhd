-- 16 bits processor Arithmetic Logic Unit
-- author: Ryan Guilherme

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity alu is
    Generic
    (
        N : integer := 16
    );
    Port 
    (
        A     : in  std_logic_vector(N-1 downto 0);     -- Input operand
        B     : in  std_logic_vector(N-1 downto 0);     -- Input operand
        Immed : in  std_logic_vector(N-1 downto 0);     -- Input immediate value 
        zero  : out std_logic;                          -- ZERO? flag (1 when A [Rm] = B [Rn])
        carry : out std_logic;                          -- CARRY flag (1 when A [Rm] < B [Rn] else 0)
        op    : in  std_logic_vector(3 downto 0);       -- Input operator
        Q     : out std_logic_vector(N-1 downto 0)      -- Output result
    );
end alu;

architecture Behavioral of alu is
    signal result : std_logic_vector(N-1 downto 0);
    signal mul    : std_logic_vector((N*2)-1 downto 0);
    signal msb    : std_logic;
    signal lsb    : std_logic;
    
begin
    msb <= A(N-1);
    lsb <= A(0);
    
    zero  <= '1' when (A = B) else '0';
    carry <= '1' when (A < B) else '0';
    
    -- +-----+--------+
    -- | OP  | SIGNAL |
    -- +-----+--------+----+
    -- | CMP |  0000  | 11 |
    -- | ADD |  0100  +----+
    -- | SUB |  0101  |
    -- | MUL |  0110  |
    -- | AND |  0111  |
    -- | OR  |  1000  |
    -- | NOT |  1001  |
    -- | XOR |  1010  |
    -- | SHR |  1011  |
    -- | SHL |  1100  |
    -- | ROR |  1101  |
    -- | ROL |  1110  |
    -- +-----+--------+
    
    mul <= A*B;     -- mul is a signal to handle a overflow when multiply
    
    result <=
        A + B                   when op = "0100"    else    -- ADD Rd, Rm, Rn   |   Operation: Rd = Rm + Rn
        A - B                   when op = "0101"    else    -- SUB Rd, Rm, Rn   |   Operation: Rd = Rm - Rn
        mul(N-1 downto 0)       when op = "0110"    else    -- MUL Rd, Rm, Rn   |   Operation: Rd = Rm * Rn
        A and B                 when op = "0111"    else    -- AND Rd, Rm, Rn   |   Operation: Rd = Rm and Rn
        A or B                  when op = "1000"    else    -- ORR Rd, Rm, Rn   |   Operation: Rd = Rm or Rn
        not A                   when op = "1001"    else    -- NOT Rd, Rm       |   Operation: Rd = ¬Rm
        A xor B                 when op = "1010"    else    -- XOR Rd, Rm, Rn   |   Operation: Rd = Rm xor Rn
        shr(A, Immed)           when op = "1011"    else    -- SHR Rd, Rm, Imm  |   Operation: Rd = Rm >> #Im
        shl(A, Immed)           when op = "1100"    else    -- SHL Rd, Rm, Imm  |   Operation: Rd = Rm << #Im
        lsb & A(N-1 downto 1)   when op = "1101"    else    -- ROR Rd, Rm       |   Operation: Rd = Rm <r 1
        A(N-1-1 downto 0) & msb when op = "1110"    else    -- ROL Rd, Rm       |   Operation: Rd = Rm >r 1
        (others => '0');                        -- Fill Result with x"0000" as default
    
    Q <= result;

end Behavioral;







