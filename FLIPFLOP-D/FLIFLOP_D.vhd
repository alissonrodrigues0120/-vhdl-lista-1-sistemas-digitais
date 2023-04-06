

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FLIPFLOP_D is
    Port ( D : in STD_LOGIC;
           CLK, RESET: in STD_LOGIC;
           QD : out STD_LOGIC;
           QND : out STD_LOGIC);
end FLIPFLOP_D;

architecture Behavioral of FLIPFLOP_D is

begin
    process(CLK, RESET)
      begin 
        if RESET = '1' then
           QD <= '0';
           QND <= '1';
           
         elsif falling_edge (CLK) then
            QD <= D;
            QND <= not D;
            
       end if;
       
     end process;

end Behavioral;
