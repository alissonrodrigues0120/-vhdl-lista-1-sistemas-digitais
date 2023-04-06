library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity ULA is
    Port ( A : in signed(0 to 2);
           B : in signed(0 to 2);
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           AM : out std_logic;
           EQ : out std_logic;
           BM : out std_logic;
           SAIDA : out signed(0 to 2));
end ULA;



architecture Behavioral of ULA is

begin
    
 SAIDA <= A + B when (S1 = '0') and (S2 = '0') else
 A - B when  (S1 = '0') and (S2 = '1') else
  not A when (S1 = '1') and (S2 = '0') else
 "001" when (S1 = '1') and (S2 = '1');
 
 AM <= '1' when (S1 = '1') and (S2 = '1') and (A > B) else '0';
 EQ <= '1' when (S1 = '1') and (S2 = '1') and (A = B) else '0';
 BM <= '1' when (S1 = '1') and (S2 = '1') and (A < B) else '0';
 

 
 
 
end Behavioral;
