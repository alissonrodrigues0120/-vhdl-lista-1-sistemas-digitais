

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity MULTIPLICADOR is
    Port ( A : in unsigned(0 to 1);
           B : in unsigned(0 to 1);
           P : out unsigned(0 to 3));
end MULTIPLICADOR;

architecture Behavioral of MULTIPLICADOR is

begin

  P <= (A * B);

end Behavioral;
