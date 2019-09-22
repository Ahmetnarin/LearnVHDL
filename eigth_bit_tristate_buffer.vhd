library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity eight_bit_tristate_buffer is
  port 
  (
    signal_IN  : in std_logic_vector(7 downto 0);
    enable     : in std_logic;
    signal_OUT : out std_logic_vector(7 downto 0)
  ) ;
end eight_bit_tristate_buffer;


architecture eight_bit_tristate_buffer_arch of eight_bit_tristate_buffer is


begin
    process(signal_IN, Enable)
    begin 
        if enable = '1' then 
            signal_OUT(7 downto 0) <= signal_IN(7 downto 0);
        else
            signal_OUT <= "ZZZZZZZZ";
        end if ;
    end process;

end eight_bit_tristate_buffer_arch ; -- eight_bit_tristate_buffer_arch