
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity TESTBENCH_MULTI is

end TESTBENCH_MULTI;

architecture Behavioral of TESTBENCH_MULTI is
  component MULTIPLICADOR
        Port ( A : in unsigned(0 to 1);
           B : in unsigned(0 to 1);
           P : out unsigned(0 to 3));
           
          end component;
          
  signal A, B : unsigned(0 to 1);
  signal P : unsigned(0 to 3);      
    
begin
   DUT : MULTIPLICADOR port map(A=>A, B=>B, P=>P);
   processando : process
   
    begin
         A <= "01";
         B <= "11";
         
         wait for 10 ns;
         
         A <= "00";
         B <= "10";
         
         wait for 10 ns;
         
         A <= "01";
         B <= "01";
         
         
         wait for 10 ns;
         
         
         A <= "11";
         B <= "11";
         
         wait for 10 ns; 
         
         
     end process;
         
end Behavioral;
