library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TESTBENCH_FLIPFLOP_JK is
    
end TESTBENCH_FLIPFLOP_JK;

architecture Behavioral of TESTBENCH_FLIPFLOP_JK is
     component FLIPFLOP_JK
         Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : inout STD_LOGIC;
           QN : inout STD_LOGIC);
           
      end component;
      
      signal J, K, CLK, Q, QN : std_logic;
begin
   DUT : FLIPFLOP_JK port map(J, K, CLK, Q, QN);
   
  
   
  process
    begin
     CLK <= '0'; 
     wait for 8 ns;
     CLK <= '1';
    wait for 8 ns;
    
    end process;
    
    process
      begin
       
       
       J <= '0';
       K <= '0';
       wait for 12 ns;
       J <= '0';
       K <= '1';
      
       wait for 12 ns;
       J <= '1';
       K <= '0';
       
       wait for 12 ns;
       
       J <= '1';
       K <= '1';
       
       wait for 12 ns;
      end process;
    
   

end Behavioral;
