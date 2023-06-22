LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.pkg_processor.all;

entity FSM is
  Port ( I_clk      : in  STD_LOGIC;
         I_reset    : in  STD_LOGIC;
         O_state    : out  STD_LOGIC_VECTOR (3 downto 0);
         selA       : out STD_LOGIC_VECTOR(2 downto 0);
         selB       : out STD_LOGIC_VECTOR(2 downto 0);
         selD       : out STD_LOGIC_VECTOR(2 downto 0);
         aluop      : out STD_LOGIC_VECTOR(3 downto 0);
         dataIMM    : out STD_LOGIC_VECTOR(15 downto 0);
         dataDwe    : out STD_LOGIC 
         );
end FSM;

architecture Behavioral of FSM is
  signal s_state: STD_LOGIC_VECTOR(3 downto 0) := "0001";
begin
  process(I_clk)
  begin
    if rising_edge(I_clk) then
      if I_reset = '1' then
        s_state <= "0001";
      else
        case s_state is
            
        end case;
      end if;
    end if;
  end process;

  O_state <= s_state;
end Behavioral;