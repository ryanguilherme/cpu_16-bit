library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package pkg_mips is
    --barramento 32 bits
    subtype bus32 is std_logic_vector(31 downto 0);
    
    --type instrucoes ADDU, SUBU, AND, OR, XOR, NOR, LW, SW e ORI
    type inst_tipo is (ADDU, SUBU, AAND, OOR, XXOR, NNOR, LW, SW, ORI, inst_invalida);
    
    --microinstrucoes de acesso a memoria e as instrucoes
    type microinstrucoes is record
        en, rw : std_logic;
        i : inst_tipo;
        wreg : std_logic;
    end record;
end pkg_mips;