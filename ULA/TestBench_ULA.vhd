

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity TestBench_ULA is
    
end TestBench_ULA;

architecture Behavioral of TestBench_ULA is
   component ULA
            Port ( A : in signed(0 to 2);
           B : in signed(0 to 2);
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           AM : out std_logic;
           EQ : out std_logic;
           BM : out std_logic;
           SAIDA : out signed(0 to 2));
           
        end component;
        
    signal A, B, SAIDA: signed(0 to 2);
    signal S1, S2, AM, EQ, BM: STD_LOGIC;
   constant tempinho : time := 100 ns;
begin

DUT : ULA port map(A=>A, B=>B, S1=>S1, S2=>S2, AM => AM, EQ => EQ, BM => BM, SAIDA=>SAIDA);
   processando: process
  begin
    A <= "101";
    B <= "001";
    
    S1 <= '0';
    S2 <= '0';
    
    wait for tempinho;
    
    A <= "101";
    B <= "001";
    
    S1 <= '0';
    S2 <= '1';
    
    wait for tempinho;
    
    A <= "101";
    B <= "001";
    
    S1 <= '1';
    S2 <= '0';
    
    wait for tempinho;
    
    A <= "101";
    B <= "001";
    
    S1 <= '1';
    S2 <= '1';
    
    wait for tempinho;
    
     A <= "111";
     B <= "111";
    
    S1 <= '1';
    S2 <= '1';

    wait for tempinho;
    
    A <= "101";
    B <= "111";
    
    S1 <= '1';
    S2 <= '1';
    
    wait for tempinho;
  end process;


end Behavioral;
