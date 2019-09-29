library ieee; 
use ieee.std_logic_1164.all;

entity buf_tb is 
end buf_tb;

architecture buf_tb_arch of buf_tb is 

component buf
port( a : in std_logic;
      b : out std_logic
);
end component;

signal a_tb : std_logic;
signal b_tb : std_logic;

begin 
dut : buf
port map(
    a => a_tb,
    b => b_tb
    );

    stimuli_proc : process
    begin 
    a_tb <= '0'; wait for 10 ns;
    a_tb <= '0'; wait for 10 ns;
    a_tb <= '0'; wait for 10 ns;
    a_tb <= '1'; wait for 10 ns;
    ------------------------------------
    a_tb <= '0'; wait for 10 ns;
    a_tb <= '1'; wait for 10 ns;
    a_tb <= '0'; wait for 10 ns;
    a_tb <= '0'; wait for 10 ns;
    ------------------------------------------
    a_tb <= '0'; wait for 10 ns;
    a_tb <= '0'; wait for 10 ns;
    a_tb <= '1'; wait for 10 ns;
    a_tb <= '1'; wait for 10 ns;

    end process;

end architecture;

