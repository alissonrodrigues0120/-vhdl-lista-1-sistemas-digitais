

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TESTBENCH_COMPARADOR is
   
end TESTBENCH_COMPARADOR;

architecture Behavioral of TESTBENCH_COMPARADOR is
  component COMPARADOR
      Port ( A : in std_logic_vector(0 to 3);
           B : in std_logic_vector(0 to 3);
           AM, EQ, BM : out STD_LOGIC);
           
   end component;
   signal AM, BM, EQ: std_logic;
   signal A, B: std_logic_vector(0 to 3);
   
   constant tempinho : time := 100 ns;
   

begin
  DUT : COMPARADOR port map(A=>A, B=>B, AM=>AM, EQ=>EQ, BM=>BM);
  
  processando: process
  begin
    A <= "0000";
    B <= "0001";
    
    wait for tempinho;
    
    A <= "1001";
    B <= "1001";
    
    wait for tempinho;
    
    A <= "1100";
    B <= "0010";
    
    wait for tempinho;
    
    A <= "1111";
    B <= "1111";
    
    wait for tempinho;

  end process;

end Behavioral;
