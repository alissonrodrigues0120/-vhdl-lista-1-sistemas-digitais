library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity NOR_EDIT is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X : out STD_LOGIC);
end NOR_EDIT;

architecture Behavioral of NOR_EDIT is

begin

X <= A nor B;

end Behavioral;
