library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package pkg_processor is
    -- Opcodes
    constant OPCODE_ADD:    std_logic_vector(3 downto 0) :=  "0000";	-- ADD
    constant OPCODE_SUB:    std_logic_vector(3 downto 0) :=  "0001";	-- SUB 
    constant OPCODE_OR:     std_logic_vector(3 downto 0) :=  "0010";	-- OR 
    constant OPCODE_XOR:    std_logic_vector(3 downto 0) :=  "0011";	-- XOR 
    constant OPCODE_AND:    std_logic_vector(3 downto 0) :=  "0100";	-- AND 
    constant OPCODE_NOT:    std_logic_vector(3 downto 0) :=  "0101";	-- NOT 
    constant OPCODE_READ:   std_logic_vector(3 downto 0) :=  "0110";	-- READ 
    constant OPCODE_WRITE:  std_logic_vector(3 downto 0) :=  "0111";	-- WRITE 
    constant OPCODE_LOAD:   std_logic_vector(3 downto 0) :=  "1000";	-- LOAD 
    constant OPCODE_CMP:    std_logic_vector(3 downto 0) :=  "1001";	-- CMP 
    constant OPCODE_SHL:    std_logic_vector(3 downto 0) :=  "1010";	-- SHL 
    constant OPCODE_SHR:    std_logic_vector(3 downto 0) :=  "1011";    -- SHR 
    constant OPCODE_JUMP:   std_logic_vector(3 downto 0) :=  "1100";	-- JUMP 
    constant OPCODE_JUMPEQ: std_logic_vector(3 downto 0) :=  "1101";	-- JUMPEQ 
    constant OPCODE_SPEC:   std_logic_vector(3 downto 0) :=  "1110";	-- SPECIAL
    constant OPCODE_RES2:   std_logic_vector(3 downto 0) :=  "1111";    -- RESERVED 
end package;
