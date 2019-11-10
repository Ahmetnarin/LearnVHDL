library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;


entity comb_ckt is
    Port ( input1 : in STD_LOGIC;
           input2 : in STD_LOGIC;
           input3 : in STD_LOGIC;
           output : out STD_LOGIC);
end comb_ckt;

architecture Behavioral of comb_ckt is

    component AND_gatter is
        port(
            A, B : in std_logic;
            F1 : out std_logic
        );
    end component;

    component Or_GATE is
        port(
            X, Y: in std_logic;
            F2 : out std_logic
        );
    end component;

    signal wire: std_logic;


begin

    GATE1 : AND_gatter port map(A=> input1, B=> input2, F1=> wire);
    GATE2 : OR_GATE port map(X=> wire , Y=> input3, F2 => output);


end Behavioral;
