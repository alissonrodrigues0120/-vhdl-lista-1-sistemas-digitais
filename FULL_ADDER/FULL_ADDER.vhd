

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FULL_ADDER is
  port(A: in std_logic;
        B: in std_logic;
        CIN: in std_logic;
        COUT: out std_logic;
        SOMA: out STD_LOGIC);
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is

begin
    SOMA <= (A xor B) xor CIN;
    COUT <= (A and B) or (CIN and  (A xor B));

end Behavioral;
