

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TESTBENCH_FULL_ADDER is
   
end TESTBENCH_FULL_ADDER;

architecture Behavioral of TESTBENCH_FULL_ADDER is
  component FULL_ADDER
       port(A: in std_logic;
        B: in std_logic;
        CIN: in std_logic;
        COUT: out std_logic;
        SOMA: out STD_LOGIC);
           
   end component;
   signal A, B, CIN, COUT, SOMA: std_logic;
   constant tempinho : time := 100 ns;
   

begin
  DUT : FULL_ADDER port map (A=>A, B=>B, CIN=>CIN, COUT => COUT, SOMA => SOMA);
  
  processando: process
  begin
    A <= '0';
    B <= '0';
    CIN <= '0';
    
    wait for tempinho;
    
    A <= '0';
    B <= '1';
    CIN <='1';
    
    wait for tempinho;
    
    A <= '1';
    B <= '0';
    CIN <= '0';
    
    wait for tempinho;
    
    A <= '1';
    B <= '1';
    CIN <= '0';
    
    wait for tempinho;

  end process;

end Behavioral;
