library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity COMPARADOR is
    Port ( A : in std_logic_vector(0 to 3);
           B : in std_logic_vector(0 to 3);
           AM : out STD_LOGIC;
           EQ : out STD_LOGIC;
           BM : out STD_LOGIC);
end COMPARADOR;

architecture Behavioral of COMPARADOR is

begin
    AM <= '1' when (A > B ) else '0';
    EQ <='1' when (A = B) else '0';
    BM <= '1' when (A < B) else '0';
end Behavioral;
