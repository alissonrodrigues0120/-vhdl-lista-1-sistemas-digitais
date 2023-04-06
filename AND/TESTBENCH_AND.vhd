library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TESTBENCH_AND is
    
end TESTBENCH_AND;

architecture Behavioral of TESTBENCH_AND is
    component AND_EDIT
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X : out STD_LOGIC);
    end component;
    signal A, B, X: std_logic;
    constant tempinho : time := 100 ns;
    
begin
    DUT: AND_EDIT port map(A=>A,B=>B, X=>X);
    
    pulsos: process
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
