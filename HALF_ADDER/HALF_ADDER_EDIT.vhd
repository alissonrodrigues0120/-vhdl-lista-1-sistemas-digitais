library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity HALF_ADDER_EDIT is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC;
           COUT : out STD_LOGIC);
end HALF_ADDER_EDIT;

architecture Behavioral of HALF_ADDER_EDIT is

begin
   S <= A xor B;
   COUT <= A and B;

end Behavioral;
