library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity eight_bit_tristate_buffer_tb is
end eight_bit_tristate_buffer_tb;

architecture eight_bit_tristate_buffer_tb_arch of eight_bit_tristate_buffer_tb is

    component eight_bit_tristate_buffer 
        port 
        (
          signal_IN  : in std_logic_vector(7 downto 0);
          enable     : in std_logic;
          signal_OUT : out std_logic_vector(7 downto 0)
        ) ;   
    end component;

    signal signal_IN_tb : std_logic_vector(7 downto 0);
    signal enable_tb : std_logic;
    signal signal_OUT_tb : std_logic_vector(7 downto 0);

begin

    uut : eight_bit_tristate_buffer
    port map
    (
        signal_IN(7 downto 0) => signal_IN_tb(7 downto 0),
        enable => enable_tb,
        signal_OUT(7 downto 0) => signal_OUT_tb(7 downto 0)
    );

    Test_bench_process : process
    begin 

        --start Value
        --to_integer(signal_IN_tb) = 255;
        --for i in 0 to 255 loop 55
        --    if signal_IN_tb < 255 then
        --        to_integer(signal_IN_tb(i)) = to_integer(signal_IN_tb(i-1)) + 1 ;              
        --    end if ;
        --end loop;

        

        
        --signal_IN_tb <= x"00"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"01"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"02"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"03"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"04"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"05"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"06"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"07"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"08"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"09"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"0A"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"0B"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"0C"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"0D"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"0E"; enable_tb <= '0'; wait for 10 ns;
        --signal_IN_tb <= x"0F"; enable_tb <= '0'; wait for 10 ns;
--
        -------------------------------------------------------
--
        --signal_IN_tb <= x"00"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"10"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"20"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"30"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"40"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"50"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"60"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"70"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"80"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"90"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"A0"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"B0"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"C0"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"D0"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"E0"; enable_tb <= '1'; wait for 10 ns;
        --signal_IN_tb <= x"F0"; enable_tb <= '1'; wait for 10 ns;
    end process;

end eight_bit_tristate_buffer_tb_arch ; -- eight_bit_tristate_buffer_tb_arch