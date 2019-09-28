library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity eigth_bit_adder_tb is
end eigth_bit_adder_tb;

architecture eigth_bit_adder_tb_arch of eigth_bit_adder_tb is

    component eigth_bit_adder
        port 
        (
            A : in std_logic_vector(7 downto 0);
            B : in std_logic_vector(7 downto 0);
            Z : out std_logic_vector(7 downto 0);
            Y : out std_logic_vector(15 downto 0)
            
        );
    end component;

    signal A_tb : std_logic_vector(7 downto 0);
    signal B_tb : std_logic_vector(7 downto 0);
    signal Z_tb : std_logic_vector(7 downto 0);
    signal Y_tb : std_logic_vector(15 downto 0);
    

begin

    DUT : eigth_bit_adder port map(A => A_tb, B => B_tb , Z => Z_tb , Y => Y_tb);

    stimulus : process 
    begin 
        A_tb <= x"01"; B_tb <= x"02"; wait for 10 ns;
        A_tb <= x"03"; B_tb <= x"04"; wait for 10 ns;
        A_tb <= x"05"; B_tb <= x"06"; wait for 10 ns;
        A_tb <= x"07"; B_tb <= x"08"; wait for 10 ns;
        A_tb <= x"09"; B_tb <= x"10"; wait for 10 ns;
        A_tb <= x"11"; B_tb <= x"12"; wait for 10 ns;
        A_tb <= x"13"; B_tb <= x"14"; wait for 10 ns;
        A_tb <= x"15"; B_tb <= x"16"; wait for 10 ns;
        A_tb <= x"17"; B_tb <= x"18"; wait for 10 ns;
    end process;

end eigth_bit_adder_tb_arch ; -- eigth_bit_adder_tb_arch