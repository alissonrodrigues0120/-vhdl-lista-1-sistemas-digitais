library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TESTBENCH_MUX is
   
end TESTBENCH_MUX;

architecture Behavioral of TESTBENCH_MUX is
  component MUX4_EDIT
      Port ( A1 : in std_logic_vector (0 To 3);
           A2 : in std_logic_vector (0 To 3);
           A3 : in std_logic_vector (0 To 3);
           A4 : in std_logic_vector (0 To 3);
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           X : out std_logic_vector (0 To 3));
           
   end component;
   signal S1, S2: std_logic;
   signal A1, A2, A3, A4, X: std_logic_vector(0 to 3);

   constant tempinho : time := 100 ns;
   

begin
  DUT : MUX4_EDIT port map (A1, A2, A3, A4, S1, S2, X);
  
  processando: process
  begin
    A1 <= "0001";
    A2 <="0010";
    A3 <= "0011";
    A4 <= "0100";
    
    S1 <= '0';
    S2 <= '0';
    
    wait for tempinho;
    
    S1 <= '0';
    S2 <= '1';
    
    wait for tempinho;
    
    S1 <= '1';
    S2 <= '0';
    
    wait for tempinho;
    
    S1 <= '1';
    S2 <= '1';
    
    wait for tempinho;

  end process;

end Behavioral;

