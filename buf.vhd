library ieee; 
use ieee.std_logic_1164.all;

entity buf is 
port( a : in std_logic;
      b : out std_logic
);
end buf;

architecture buf_arch of buf is 
    begin 
    b <= transport a after 40 ns;
end architecture;