library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Required entity declaration
entity IntMatMulCore is
    port
    (
        Reset           : in std_logic;
        clock           : in std_logic;
        WriteEnable     : in std_logic;
        BufferSel       : in std_logic;
        WriteAddress    : in std_logic_vector(9 downto 0);
        WriteData       : in std_logic_vector(15 downto 0);
        ReadAddress     : in std_logic_vector(9 downto 0);
        ReadEnable      : in std_logic;
        ReadData        : out std_logic_vector(63 downto 0);
        DataReady       : out std_logic
    );  
end IntMatMulCore;

architecture IntMatMulCore_arch of IntMatMulCore is
    
component dpram1024x16
port 
(
    clka    : in std_logic;
    wea     : in std_logic_vector(0 downto 0);
    addra   : in std_logic_vector(9 downto 0);
    dina    : in std_logic_vector(15 downto 0);
    clkb    : in std_logic;
    enb     : in std_logic;
    addrb   : in std_logic_vector(9 downto 0);
    doutb   : out std_logic_vector(15 downto 0)
);
end component;

component dpram1024x64
port
(
    clka    : in std_logic;
    wea     : in std_logic_vector(0 downto 0);
    addra   : in std_logic_vector(9 downto 0);
    dina    : in std_logic_vector(63 downto 0);
    clkb    : in std_logic;
    enb     : in std_logic;
    addrb   : in std_logic_vector(9 downto 0);
    doutb   : out std_logic_vector(63 downto 0)
);
end component;

type stateType is (stIdle, stWriteBufferA, stWriteBufferB, stReadBufferAB, stSaveData, stWriteBufferC, stComplete);

-- Signals
signal presState            : stateType;
signal nextState            : stateType;
signal iReadEnableAB        : std_logic;
signal iCountReset          : std_logic;
signal iCountEnable         : std_logic;
signal iCountEnableAB       : std_logic;
signal iCountResetAB        : std_logic;
signal iWriteEnableA        : std_logic_vector(0 downto 0);
signal iWriteEnableB        : std_logic_vector(0 downto 0);
signal iWriteEnableC        : std_logic_vector(0 downto 0);
signal iReadDataA           : std_logic_vector(15 downto 0);
signal iReadDataB           : std_logic_vector(15 downto 0);
signal iWriteDataC          : std_logic_vector(63 downto 0);
signal iCount               : unsigned(9 downto 0);
signal iReadAddrA           : unsigned(9 downto 0);
signal iReadAddrB           : unsigned(9 downto 0);
signal iRowA                : unsigned(9 downto 0);
signal CountAT              : unsigned(9 downto 0);
signal CountBT              : unsigned(9 downto 0);
signal iColB                : unsigned(19 downto 0);
signal irow                 : unsigned(4 downto 0);
signal icol                 : unsigned(4 downto 0);
signal iCountA              : unsigned(4 downto 0);
signal iCountB              : unsigned(4 downto 0);
signal iCountEnableAB_d1    : std_logic;
signal iCountEnableAB_d2    : std_logic;
signal iCountEnableAB_d3    : std_logic;

begin
    --Write Enable for RAM A
    iWriteEnableA(0) <= WriteEnable and BufferSel;
    --Write Enable for RAM B
    iWriteEnableB(0) <= WriteEnable and (not BufferSel);
    -- Input BufferA Instance
    InputBufferA : dpram1024x16
    port map 
    (
        clka    => clock ,
        wea     => iWriteEnableA ,
        addra   => WriteAddress   ,
        dina    => WriteData       ,
        clkb    => clock           ,
        enb     => iReadEnableAB    ,
        addrb   => std_logic_vector(iReadAddrA),
        doutb   => iReadDataA
    );

    InputBufferB : dpram1024x64
    port map 
    (
        clka    => clock           ,
        wea     => iWriteEnableC    ,
        addra   => std_logic_vector(iCount)   ,
        dina    => iWriteDataC      ,
        clkb    => clock           ,
        enb     => ReadEnable    ,
        addrb   => ReadAddress,
        doutb   => ReadData
    );

    process(clock, Reset)
    begin 
        if rising_edge(clock) then 
            if Reset = '1'  then 
                iCountEnableAB_d1 <= '0';
                iCountEnableAB_d2 <= '0';
            else 
                iCountEnableAB_d1 <= iCountEnable;
                iCountEnableAB_d2 <= iCountEnableAB_d1;
            end if;
        end if;
    end process;

    process(clock)
    begin 
        if rising_edge(clock) then 
            if Reset = '1' then 
                presState <= stIdle; 
                iCountA <= (others => '0');
                iCountB <= (others => '0');
            else 
                presState <= nextState ; 
                if iCountResetAB = '1' then
                    iCountA <= (others => '0');
                    iCountB <= (others => '0');
                elsif iCountEnableAB = '1' then 
                    iCountA <= iCountA + 1 ;
                    iCountB <= iCountB + 1 ;                    
                end if ;
            end if ;
            if iCountReset = '1' then 
                    iCount <= (others => '0');
            elsif iCountEnable = '1' then 
                    iCount <= iCount + 1 ;
            end if;
        end if;
    end process;

    ----------------------------------------- 21.09.2019 17:37
    
end IntMatMulCore_arch ; -- IntMatMulCore_arch

