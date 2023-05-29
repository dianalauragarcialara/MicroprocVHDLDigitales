LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
ENTITY regfile IS PORT (
        clk: IN std_logic; 
        WE: IN std_logic; 
        WA: IN std_logic_vector(1 DOWNTO 0);
        input: IN std_logic_vector(7 DOWNTO 0); 
        RAE: IN std_logic; 
        RAA: IN std_logic_vector(1 DOWNTO 0);
        RBE: IN std_logic; 
        RBA: IN std_logic_vector(1 DOWNTO 0); 
        Aout, Bout: OUT std_logic_vector(7 DOWNTO 0)); 
END regfile;

ARCHITECTURE Behavioral OF regfile IS
    SUBTYPE reg IS std_logic_vector(7 DOWNTO 0);
    TYPE regArray IS array(0 TO 3) OF reg;
    SIGNAL RF: regArray; 
BEGIN
    WritePort: PROCESS (clk)
    BEGIN
        IF (clk'EVENT AND clk = '1') THEN
            IF (WE = '1') THEN
                RF(CONV_INTEGER(WA)) <= input;
            END IF;
        END IF;
    END PROCESS;

    ReadPortA: PROCESS (RAE, RAA)
    BEGIN
        IF (RAE = '1') then
            Aout <= RF(CONV_INTEGER(RAA)); 
        ELSE
            Aout <= (others => 'Z');
        END IF;
    END PROCESS;

    ReadPortB: PROCESS (RBE, RBA)
    BEGIN
        IF (RBE = '1') then
            Bout <= RF(CONV_INTEGER(RBA));
        ELSE
            Bout <= (others => 'Z');
        END IF;

    END PROCESS;
END Behavioral;