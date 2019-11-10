library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Component1 

entity OR_GATE is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           F2 : out STD_LOGIC);
end OR_GATE;

architecture Behavioral of OR_GATE is

begin
    process(X,Y)
    begin
        F2 <= X or Y;
    end process;
end Behavioral;
