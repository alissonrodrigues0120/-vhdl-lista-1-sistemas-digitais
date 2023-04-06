

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TESTBENCH_NOT is
   
end TESTBENCH_NOT;

architecture Behavioral of TESTBENCH_NOT is
  component NOT_EDIT
      Port ( A : in STD_LOGIC;
           X : out STD_LOGIC);
           
   end component;
   signal A, X: std_logic;
   constant tempinho : time := 100 ns;
   

begin
  DUT : NOT_EDIT port map (A=>A, X=>X);
  
  processando: process
  begin
    A <= '0';
   
    wait for tempinho;
   
    A <= '1';
    
    
    wait for tempinho;

  end process;

end Behavioral;


