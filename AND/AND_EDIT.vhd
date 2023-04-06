library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity AND_EDIT is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X : out STD_LOGIC);
end AND_EDIT;

architecture Behavioral of AND_EDIT is

begin
   x <= A and B;
end Behavioral;
