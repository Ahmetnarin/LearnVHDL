library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity One_Bit_Buffer_tb is
end One_Bit_Buffer_tb;

architecture One_Bit_Buffer_tb_arch of One_Bit_Buffer_tb is

    component One_Bit_Buffer
    port 
    (
        Signal_IN  : in std_logic;
        Enable     : in std_logic;
        Signal_OUT : out std_logic
    );
    end component;

    signal Signal_IN_tb : std_logic;
    signal Enable_tb : std_logic;
    signal Signal_OUT_tb : std_logic;

begin

    -- unit under test
    uut : One_Bit_Buffer 
    port map
    (
        Signal_IN=>Signal_IN_tb,
        Enable=>Enable_tb,
        Signal_OUT=>Signal_OUT_tb

    );

    testbench_process : process
    begin 
        Signal_IN_tb <= '0'; Enable_tb <= '0'; wait for 10 ns;
        Signal_IN_tb <= '0'; Enable_tb <= '1'; wait for 10 ns;
        Signal_IN_tb <= '1'; Enable_tb <= '0'; wait for 10 ns;
        Signal_IN_tb <= '1'; Enable_tb <= '1'; wait for 10 ns;
    end process;

end One_Bit_Buffer_tb_arch ; -- One_Bit_Buffer_tb_arch