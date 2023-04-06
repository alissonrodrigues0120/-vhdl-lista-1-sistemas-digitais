library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NOT_EDIT is
    Port ( A : in STD_LOGIC;
           X : out STD_LOGIC);
end NOT_EDIT;

architecture Behavioral of NOT_EDIT is

begin

X <= not A ;

end Behavioral;
