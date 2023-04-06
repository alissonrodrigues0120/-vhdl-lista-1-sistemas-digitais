

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity NAND_EDIT is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X : out STD_LOGIC);
end NAND_EDIT;

architecture Behavioral of NAND_EDIT is

begin
 
 X <= A nand B;

end Behavioral;
