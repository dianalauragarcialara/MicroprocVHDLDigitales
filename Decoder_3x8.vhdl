--DECODER 3 TO 8

--Dominguez Hernandez Hugo Zuriel

--Especificacion de las librerias y paquetes que se usan
--Uso del paquete STD_LOGIC_1164 que incluyen tipos de datos y operaciones comunesi
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--se define la entidad con las entradas y salidas 
ENTITY Decoder_3x8 IS 
    PORT(
        A: IN STD_LOGIC; -- Señal que habilita el decoder
        B: IN STD_LOGIC_VECTOR (2 DOWNTO 0); -- entrada de 3 bits
        C: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- vector de 8 bits, salida de datos
    ); 
END Decoder_3x8;

ARCHITECTURE Behavioral OF Decoder_3x8  IS
BEGIN
    PROCESS (A, B)
    BEGIN
        -- Se verifica si A esta en bajo
        IF (A = '0') THEN 
            -- si es asi...
            C <= (OTHERS => '0'); -- vector de 8 bits valor 0
        -- si esta en alto
        ELSE
            -- se usa CASE para establecer la salida C en un valor que corresponda a la entrada B
            CASE B IS 
                WHEN "000" => C <= "00000001"; -- si B es 000 then c=00000001
                WHEN "001" => C <= "00000010"; -- si B es 001 then c=00000010
                WHEN "010" => C <= "00000100";
                WHEN "011" => C <= "00001000";
                WHEN "100" => C <= "00010000";
                WHEN "101" => C <= "00100000";
                WHEN "110" => C <= "01000000";
                WHEN "111" => C <= "10000000";
                WHEN OTHERS => NULL; -- si B no tiene ninguno de los valores, C se pondra en NULL
            END CASE;
        END IF;
    END PROCESS;
END Behavioral;
