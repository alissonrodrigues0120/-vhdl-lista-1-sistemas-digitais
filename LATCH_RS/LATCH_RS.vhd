

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity LATCH_RS is
    Port ( R : in STD_LOGIC;
           S : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : inout STD_LOGIC;
           QN : inout STD_LOGIC);
end LATCH_RS;

architecture Behavioral of LATCH_RS is

begin
  process(CLK)
   begin
   
     if falling_edge(CLK) then
         if R = '0' and S = '0' then
            Q <= Q;
            QN <= not Q;
            
         elsif R = '0' and S = '1' then
              Q <= '1';
              QN <= not Q;
              
         elsif R = '1' and S = '0' then
              Q  <= '0';
              QN <= not Q;
             
         end if;
         
     end if;
     
     
  end process;
            


end Behavioral;
