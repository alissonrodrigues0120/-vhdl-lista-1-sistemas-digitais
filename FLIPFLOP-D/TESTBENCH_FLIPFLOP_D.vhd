library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TESTBENCH_FLIPFLOP_D is
    
end TESTBENCH_FLIPFLOP_D;

architecture Behavioral of TESTBENCH_FLIPFLOP_D is
     component FLIPFLOP_D
        Port ( D : in STD_LOGIC;
           CLK, RESET: in STD_LOGIC;
           QD : out STD_LOGIC;
           QND : out STD_LOGIC);
           
      end component;
      
      signal D, CLK, RESET, QD, QND : std_logic;
begin
   DUT : FLIPFLOP_D port map(D, CLK, RESET, QD, QND);
   
   RESET <= '1' after 0 ns, '0' after 6 ns;
   
  process
    begin
     CLK <= '0'; 
     wait for 8 ns;
     CLK <= '1';
    wait for 8 ns;
    
    end process;
    
    process
      begin
      
       d <= '0';
       wait for 12 ns;
      
       d<= '1';
      
       wait for 12 ns;
      
      end process;
    
   

end Behavioral;
