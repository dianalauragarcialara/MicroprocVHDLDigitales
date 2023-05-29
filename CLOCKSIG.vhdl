LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY clockdiv IS PORT (
clock_25Mhz: IN STD_LOGIC;
clk: OUT STD_LOGIC);
END clockdiv;
    ARCHITECTURE Behavior OF clockdiv IS
    CONSTANT max: INTEGER := 25000000;
    CONSTANT half: INTEGER := max/2;
    SIGNAL count: INTEGER RANGE 0 TO max;
    SIGNAL toggle: STD_LOGIC;
    BEGIN
    PROCESS
        BEGIN
        WAIT UNTIL clock_25Mhz'EVENT and clock_25Mhz = '1';
        IF count < max THEN
        count <= count + 1;
        ELSE
        count <= 0;
        END IF;
        IF count < half THEN
        toggle <= '0';
        ELSE
toggle <= '1';
        END IF;
    clk <= toggle;
    END PROCESS;
END Behavior;