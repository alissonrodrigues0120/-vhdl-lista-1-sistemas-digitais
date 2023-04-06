library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity MUX4_EDIT is
    Port ( A1 : in std_logic_vector (0 To 3);
           A2 : in std_logic_vector (0 TO 3);
           A3 : in std_logic_vector (0 TO 3);
           A4 : in STD_LOGIC_vector (0 TO 3);
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           X : out STD_LOGIC_vector (0 TO 3));
end MUX4_EDIT;

architecture Behavioral of MUX4_EDIT is

begin
    X <= A1 when (S1='0') and (S2='0') else
    A2 when (S1= '0') and (S2 = '1') else 
    A3 when (S1='1') and (S2= '0') else
    A4 when (S1= '1') and (S2= '1');

end Behavioral;
