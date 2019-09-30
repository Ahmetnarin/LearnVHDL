library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity One_bit_Buffer is
 port 
 (
     Signal_IN  : in std_logic;
     Enable     : in std_logic;
     Signal_OUT : out std_logic
 );
end One_bit_Buffer;

architecture One_Bit_Buffer_arch of One_Bit_Buffer is

    

begin
    process(Signal_IN,Enable)
    begin 
        if Enable = '1' then
            Signal_OUT <= Signal_IN;
        else 
            Signal_OUT <= '0';
        end if ;

    end process;


end One_Bit_Buffer_arch ; -- One_Bit_Buffer_arch