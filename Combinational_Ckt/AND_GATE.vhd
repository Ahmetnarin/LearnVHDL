library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AND_gatter is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           F1 : out STD_LOGIC);
end AND_gatter;

architecture Behavioral of AND_gatter is

begin
    and_gate : process( A,B )
    begin
        F1 <= A and B;        
    end process ; -- and_gate
end Behavioral;
