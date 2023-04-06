
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity XOR_EDIT is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X : out STD_LOGIC);
end XOR_EDIT;

architecture Behavioral of XOR_EDIT is

begin
 
 X <= A xor B;

end Behavioral;
