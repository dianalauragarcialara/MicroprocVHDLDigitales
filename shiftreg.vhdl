LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY shiftreg IS PORT (
    Clock: IN STD_LOGIC;
    SHSel: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    Serial_in: IN STD_LOGIC;
    D: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    Serial_out: OUT STD_LOGIC;
    Q: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END shiftreg;

ARCHITECTURE Behavioral OF shiftreg IS
    SIGNAL content: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    PROCESS(Clock)
    BEGIN
        IF (Clock'EVENT AND Clock='1') THEN
            CASE SHSel IS
            WHEN "01" => -- load
                content <= D;
            WHEN "10" => -- shift right, pad with bit from Serial_in
                content <= Serial_in & content(3 DOWNTO 1);
            WHEN OTHERS =>
                NULL;
            END CASE;
        END IF;
    END PROCESS;
    Q <= content;
    Serial_out <= content(0);
END Behavioral;