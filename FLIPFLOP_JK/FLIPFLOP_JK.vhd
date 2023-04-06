

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FLIPFLOP_JK is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : inout STD_LOGIC;
           QN : inout STD_LOGIC);
end FLIPFLOP_JK;

architecture Behavioral of FLIPFLOP_JK is

begin
  process(CLK)
   begin
   
     if falling_edge(CLK) then
         if J = '0' and K = '0' then
            Q <= Q;
            QN <= not Q;
            
         elsif J = '0' and K = '1' then
              Q <= '1';
              QN <= not Q;
              
         elsif J = '1' and K = '0' then
              Q  <= '0';
              QN <= not Q;
              
         elsif J = '1' and K = '1' then
             Q <= not Q;
             QN <= not Q;
             
         end if;
         
     end if;
     
     
  end process;
            


end Behavioral;
