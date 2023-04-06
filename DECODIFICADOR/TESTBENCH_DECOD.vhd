

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TESTBENCH_DECOD is
   
end TESTBENCH_DECOD;

architecture Behavioral of TESTBENCH_DECOD is
  component DECOD
      Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           D1 : out STD_LOGIC;
           D2 : out STD_LOGIC;
           D3 : out STD_LOGIC;
           D4 : out STD_LOGIC);
           
   end component;
   signal A, B, D1, D2, D3, D4: std_logic;
   constant tempinho : time := 100 ns;
   

begin
  DUT : DECOD port map (A=>A, B=>B, D1=>D1, D2=>D2, D3=>D3, D4=>D4);
  
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
