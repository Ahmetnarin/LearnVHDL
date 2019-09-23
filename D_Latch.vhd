library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity D_Latch is
  port 
  (
      D , clk : in std_logic;
      Q : out std_logic
  ) ;
end D_Latch;

architecture D_Latch_arch of D_Latch is 
begin
    
    if rising_edge(clk) = '1' then 
        Q <= D;
    end if ;


end architecture;