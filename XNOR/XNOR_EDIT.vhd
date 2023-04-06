

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity XNOR_EDIT is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X : out STD_LOGIC);
end XNOR_EDIT;

architecture Behavioral of XNOR_EDIT is

begin

X <= A xnor B;

end Behavioral;
