library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TESTBENCH_ADDER is
   
end TESTBENCH_ADDER;

architecture Behavioral of TESTBENCH_ADDER is
  component HALF_ADDER_EDIT
      Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC;
           COUT : out STD_LOGIC);

   end component;
   signal A, B, S, COUT: std_logic;
   constant tempinho : time := 100 ns;
   

begin
  DUT : HALF_ADDER_EDIT port map (A=>A, B=>B, S=>S, COUT=>COUT);
  
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
