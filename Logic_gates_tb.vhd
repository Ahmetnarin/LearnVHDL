library ieee;
use ieee.std_logic_1164.all;

entity tb_AND_gate is
end tb_AND_gate;

architecture tb of tb_AND_gate is

    component AND_gate
        port (clk : in std_logic;
              x   : in std_logic;
              y   : in std_logic;
              F : out STD_LOGIC_VECTOR(0 to 6);
              reset : in std_logic);
    end component;

    signal clk : std_logic;
    signal x   : std_logic;
    signal y   : std_logic;
    signal F   : STD_LOGIC_VECTOR(0 to 6);
    signal reset : std_logic;

    constant TbPeriod : time := 1 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : AND_gate
    port map (clk => clk,
              reset => reset,
              x   => x,
              y   => y,
              F   => F);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed

        reset <= '1';wait for 5 ns;
        reset <= '0';
        x <= '0'; y <= '0'; wait for 10 ns;
        x <= '0'; y <= '1'; wait for 10 ns;
        x <= '1'; y <= '0'; wait for 10 ns;
        x <= '1'; y <= '1'; wait for 10 ns;
       
        reset <= '1'; x<='0'; y <= '0'; wait for 5 ns;
              

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;