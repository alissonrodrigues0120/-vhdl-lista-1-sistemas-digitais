library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity OR_EDIT is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X : out STD_LOGIC);
end OR_EDIT;

architecture Behavioral of OR_EDIT is

begin
 X <= A or B;

end Behavioral;
