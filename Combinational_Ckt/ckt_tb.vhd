library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity ckt_tb is
end ckt_tb;

architecture Behavioral of ckt_tb is

    component comb_ckt
    Port ( input1 : in STD_LOGIC;
           input2 : in STD_LOGIC;
           input3 : in STD_LOGIC;
           output : out STD_LOGIC);
    end component;

    signal T_input1, T_input2, T_input3, T_output: std_logic;
begin
    uut : comb_ckt port map (T_input1, T_input2, T_input3, T_output);

    process
        variable err_cnt : integer :=0;

    begin
        --Test case 1
        T_input1 <= '0'; T_input2 <= '0'; T_input3 <= '0'; wait for 10 ns;
        assert (T_output = ((T_input1 or T_input2) and T_input3))
        report "Failed Case1" severity error;
            if(T_output /= ((T_input1 or T_input2) and T_input3)) then
                err_cnt := err_cnt +  1;
            end if;

            --Test case 2
        T_input1 <= '0'; T_input2 <= '0'; T_input3 <= '1'; wait for 10 ns;
        assert (T_output = ((T_input1 or T_input2) and T_input3))
        report "Failed Case2" severity error;
            if(T_output /= ((T_input1 or T_input2) and T_input3)) then
                err_cnt := err_cnt +  1;
            end if;

            --Test case 3
        T_input1 <= '0'; T_input2 <= '1'; T_input3 <= '0'; wait for 10 ns;
        assert (T_output = ((T_input1 or T_input2) and T_input3))
        report "Failed Case3" severity error;
            if(T_output /= ((T_input1 or T_input2) and T_input3)) then
                err_cnt := err_cnt +  1;
            end if;

        --Test case 4
        T_input1 <= '0'; T_input2 <= '1'; T_input3 <= '1'; wait for 10 ns;
        assert (T_output = ((T_input1 or T_input2) and T_input3))
        report "Failed Case4" severity error;
            if(T_output /= ((T_input1 or T_input2) and T_input3)) then
                err_cnt := err_cnt +  1;
            end if;

            --Test case 5
        T_input1 <= '1'; T_input2 <= '0'; T_input3 <= '0'; wait for 10 ns;
        assert (T_output = ((T_input1 or T_input2) and T_input3))
        report "Failed Case5" severity error;
            if(T_output /= ((T_input1 or T_input2) and T_input3)) then
                err_cnt := err_cnt +  1;
            end if;

            --Test case 6
        T_input1 <= '1'; T_input2 <= '0'; T_input3 <= '1'; wait for 10 ns;
        assert (T_output = ((T_input1 or T_input2) and T_input3))
        report "Failed Case6" severity error;
            if(T_output /= ((T_input1 or T_input2) and T_input3)) then
                err_cnt := err_cnt +  1;
            end if;

            --Test case 7
        T_input1 <= '1'; T_input2 <= '1'; T_input3 <= '0'; wait for 10 ns;
        assert (T_output = ((T_input1 or T_input2) and T_input3))
        report "Failed Case7" severity error;
            if(T_output /= ((T_input1 or T_input2) and T_input3)) then
                err_cnt := err_cnt +  1;
            end if;

        --Test case 8
        T_input1 <= '1'; T_input2 <= '1'; T_input3 <= '1'; wait for 10 ns;
        assert (T_output = ((T_input1 or T_input2) and T_input3))
        report "Failed Case8" severity error;
            if(T_output /=( (T_input1 or T_input2) and T_input3)) then
                err_cnt := err_cnt +  1;
            end if;

        
    end process;


end Behavioral;