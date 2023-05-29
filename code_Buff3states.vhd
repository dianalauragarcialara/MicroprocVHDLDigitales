
LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
ENTITY TriState_Buffer IS PORT (
    E: IN std_logic;
    d: IN std_logic_vector(7 DOWNTO 0);
    y: OUT std_logic_vector(7 DOWNTO 0));
END TriState_Buffer;

ARCHITECTURE Behavioral OF TriState_Buffer IS
BEGIN
        PROCESS (E, d)
        BEGIN
            IF (E = '1') THEN
                y <= d;
            ELSE
                y <= (OTHERS => 'Z'); -- to get 8 Z values
            END IF;
        END PROCESS;

END Behavioral;