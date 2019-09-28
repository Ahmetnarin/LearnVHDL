library ieee;
use ieee.std_logic_1164.all;

entity D_Latch_tb is
end D_Latch_tb;

architecture tb of tb_D_Latch is

    component D_Latch
        port (D   : in std_logic;
              clk : in std_logic;
              Q   : out std_logic);
    end component;

    signal D   : std_logic;
    signal clk : std_logic;
    signal Q   : std_logic;

    constant TbPeriod : time := 5 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : D_Latch
    port map (D   => D,
              clk => clk,
              Q   => Q);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        D <= '0'; wait for 10 ns;
        D <= '1'; wait for 10 ns;
        D <= '1'; wait for 10 ns;
        D <= '1'; wait for 10 ns;
        D <= '1'; wait for 10 ns;
        D <= '0'; wait for 10 ns;
        D <= '0'; wait for 10 ns;
        D <= '0'; wait for 10 ns;
        D <= '1'; wait for 10 ns;

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        --TbSimEnded <= '1';
        wait;
    end process;

end tb;