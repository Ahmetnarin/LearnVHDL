library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity eigth_bit_adder is
port 
(
    A : in std_logic_vector(7 downto 0);
    B : in std_logic_vector(7 downto 0);
    Z : out std_logic_vector(7 downto 0);
    Y : out std_logic_vector(15 downto 0)
   
);
end eigth_bit_adder;

architecture eigth_bit_adder_arch of eigth_bit_adder is

begin
    Z (7 downto 0) <= A (7 downto 0) + B (7 downto 0);
    Y (15 downto 0) <= A (7 downto 0) * B (7 downto 0);

end eigth_bit_adder_arch ; -- eigth_bit_adder_arch