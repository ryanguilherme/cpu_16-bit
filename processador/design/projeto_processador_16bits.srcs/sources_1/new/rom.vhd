library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rom is
  generic(addr_width : integer := 8;
          data_width : integer := 16);
  Port (
        clk     :       in  std_logic;
        en      :       in  std_logic;
        addr    :       in  std_logic_vector(addr_width-1 downto 0);
        dout    :       out std_logic_vector(data_width-1 downto 0)
    );
end rom;

architecture Behavioral of rom is
    type mem is array (0 to (2**addr_width)-1) of std_logic_vector(data_width-1 downto 0);
    signal rom_block : mem:=(others=>(others=>'0')); 
    --colocar aqueles enderecos terminando em others=>'0'
begin
    process(clk)
    begin
        if(clk'event and clk='1') then
            if(en='1') then
                dout <= rom_block(TO_INTEGER(unsigned(addr)));
            end if;
        end if;
    end process;

end Behavioral;
