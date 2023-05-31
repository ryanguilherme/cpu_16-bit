library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;

package pkg_mips is
    subtype reg32 is std_logic_vector(31 downto 0);
    subtype reg16 is std_logic_vector(15 downto 0);
    subtype reg8  is std_logic_vector( 7 downto 0);
    subtype reg4  is std_logic_vector( 3 downto 0);
    
    type inst_type is (ADDU, SUBU, AAND, OOR, XXOR, NNOR, LW, SW, ORI, invalid_instruction);
        
    type microinstruction is record
        en : std_logic;
        rw : std_logic;
        i : inst_type;
        wreg : std_logic;
    end record;
    
    -- definição do tipo 'memoria', que será utilizado para as memórias de dados/instruções
    constant MEMORY_SIZE : integer := 2048;     
    type memory is array(0 to MEMORY_SIZE) of reg8;
    
    constant TAM_LINHA : integer := 200;
    
    -- converte um caracter de uma dada linha em um std_logic_vector
    function CONV_VECTOR(letra:string(1 to TAM_LINHA); pos:integer) return std_logic_vector;
    
    procedure readFileLine(file in_file: TEXT; outStrLine: out string);

end pkg_mips;

package body pkg_mips is
    -- converte um caracter de uma dada linha em um std_logic_vector
    function CONV_VECTOR(letra:string(1 to TAM_LINHA); pos:integer) return std_logic_vector is
        variable bin: reg4;
    begin
        case(letra(pos))is
            when '0' => bin := "0000";
            when '1' => bin := "0001";
            when '2' => bin := "0010";
            when '3' => bin := "0011";
            when '4' => bin := "0100";
            when '5' => bin := "0101";
            when '6' => bin := "0110";
            when '7' => bin := "0111";
            when '8' => bin := "1000";
            when '9' => bin := "1001";
            when 'A'|'a' => bin := "1010";
            when 'B'|'b' => bin := "1011";
            when 'C'|'c' => bin := "1100";
            when 'D'|'d' => bin := "1101";
            when 'E'|'e' => bin := "1110";   
            when 'F'|'f' => bin := "1111";
            when others  => bin := "0000";     
        end case;
        
        return bin;
    end CONV_VECTOR;
    
    procedure readFileLine(file in_file: TEXT; outStrLine: out string) is
            variable localLine: line;
            variable localChar: character;
            variable isString: boolean;
        begin
            readLine(in_file,localLine);
            
            for i in outStrLine'range loop
                outStrLine(i) := ' ';
            end loop;
            
            for i in outStrLine'range loop
                read(localLine,localChar,isString);
                outStrLine(i) := localChar;
                if not isString then -- encontrar o fim da linha
                    exit;
                end if;                
            end loop;
    end readFileLine;
end pkg_mips;

