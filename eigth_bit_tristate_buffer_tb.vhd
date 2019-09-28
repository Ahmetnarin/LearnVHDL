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

        
        signal_IN_tb <= x"00"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"01"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"02"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"03"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"04"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"05"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"06"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"07"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"08"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"09"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0A"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0B"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0C"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0D"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0E"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0F"; enable <= '0'; wait for 10 ns;

        -----------------------------------------------------

        signal_IN_tb <= x"00"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"01"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"02"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"03"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"04"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"05"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"06"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"07"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"08"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"09"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0A"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0B"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0C"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0D"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0E"; enable <= '0'; wait for 10 ns;
        signal_IN_tb <= x"0F"; enable <= '0'; wait for 10 ns;
    end process;

end eight_bit_tristate_buffer_tb_arch ; -- eight_bit_tristate_buffer_tb_arch
