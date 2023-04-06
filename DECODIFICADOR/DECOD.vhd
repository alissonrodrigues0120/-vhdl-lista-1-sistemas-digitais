library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DECOD is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           D1 : out STD_LOGIC;
           D2 : out STD_LOGIC;
           D3 : out STD_LOGIC;
           D4 : out STD_LOGIC);
end DECOD;

architecture Behavioral of DECOD is

begin

D1 <='1' when (A='0') and ( B='0') else '0';
D2 <= '1' when (A='0')and (B='1') else '0'; 
D3 <= '1' when (A='1') and (B='0') else '0';
D4 <= '1' when (A='1') and (B='1') else '0';

end Behavioral;
