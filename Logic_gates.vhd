library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity AND_gate is
    Port ( reset : in std_logic;
           clk : in std_logic;
           x : in STD_LOGIC;
           y : in STD_LOGIC;
           F : out STD_LOGIC_VECTOR(0 to 6));
end AND_gate;

architecture Behavioral of AND_gate is

begin

    process(clk)
    begin 
        if rising_edge(clk) then
            if reset = '1' then
                F(0) <= '0';
                F(1) <= '0';
                F(2) <= '0';
                F(3) <= '0';
                F(4) <= '0';
                F(5) <= '0';
                F(6) <= '0';
            else
                F(0) <= x and y;
                F(1) <= x or y;
                F(2) <= not (x and y);
                F(3) <= x nor y;
                F(4) <= x xor y;
                F(5) <= x xnor y;
                F(6) <= not x;
            end if;
        end if;
    end process;
end Behavioral;
