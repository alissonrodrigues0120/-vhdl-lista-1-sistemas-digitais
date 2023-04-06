

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TESTBENCH_NAND is
   
end TESTBENCH_NAND;

architecture Behavioral of TESTBENCH_NAND is
  component NAND_EDIT
      Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X : out STD_LOGIC);
           
   end component;
   signal A, B, X: std_logic;
   constant tempinho : time := 100 ns;
   

begin
  DUT : NAND_EDIT port map (A=>A, B=>B, X=>X);
  
  processando: process
  begin
    A <= '0';
    B <= '0';
    
    wait for tempinho;
    
    A <= '0';
    B <= '1';
    
    wait for tempinho;
    
    A <= '1';
    B <= '0';
    
    wait for tempinho;
    
    A <= '1';
    B <= '1';
    
    wait for tempinho;

  end process;

end Behavioral;