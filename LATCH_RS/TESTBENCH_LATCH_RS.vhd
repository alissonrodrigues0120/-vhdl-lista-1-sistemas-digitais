library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TESTBENCH_LATCH_RS is
    
end TESTBENCH_LATCH_RS;

architecture Behavioral of TESTBENCH_LATCH_RS is
     component LATCH_RS
       Port ( R : in STD_LOGIC;
           S : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : inout STD_LOGIC;
           QN : inout STD_LOGIC);
           
      end component;
      
      signal R, S,CLK, Q, QN : std_logic;
begin
   DUT : LATCH_RS port map(R, S, CLK, Q, QN);
   
   
   
  process
    begin
     CLK <= '0'; 
     wait for 8 ns;
     CLK <= '1';
    wait for 8 ns;
    
    end process;
    
    process
      begin
      
       R <= '0';
       S <= '1';
       wait for 12 ns;
       
       
       R <= '0';
       S <= '0';
      
       wait for 12 ns;
       
       R <= '1';
       S <= '0';
       
       wait for 12 ns;
       
       R <= '0';
       S <=  '1';
       
       wait for 12 ns;
       
       R <= '1';
       S <= '1';
       
       wait for 12 ns;
      
      end process;
    
   

end Behavioral;
