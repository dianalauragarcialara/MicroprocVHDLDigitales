library IEEE;
use IEEE.std_logic_1164.all;
-- Entidad del Demultiplexor 1 a 4 (Demultiplexor_1a4) --
entity Demultiplexor_1a4 is
    port (
        Entrada : in std_logic;                    -- Entrada de datos
        Sel : in std_logic_vector(1 downto 0);  -- Seleccion de salida
        Salida_0 : out std_logic;                  -- Salida 0
        Salida_1 : out std_logic;                  -- Salida 1
        Salida_2 : out std_logic;                  -- Salida 2
        Salida_3 : out std_logic                   -- Salida 3
    );
end entity Demultiplexor_1a4;


-- Arquitectura del Demultiplexor 1 a 4 (Demultiplexor_1a4) --
architecture Behavioral of Demultiplexor_1a4 is
begin
    process (Entrada, Sel)
    begin
        -- Implementación del Demultiplexor 1 a 4
        case Sel is
            when "00" =>
                Salida_0 <= Entrada;  -- La salida 0 se activa si Select es "00"
                Salida_1 <= '0';      -- Las demás salidas se desactivan
                Salida_2 <= '0';
                Salida_3 <= '0';
            when "01" =>
                Salida_0 <= '0';
                Salida_1 <= Entrada;  -- La salida 1 se activa si Select es "01"
                Salida_2 <= '0';
                Salida_3 <= '0';
            when "10" =>
                Salida_0 <= '0';
                Salida_1 <= '0';
                Salida_2 <= Entrada;  -- La salida 2 se activa si Select es "10"
                Salida_3 <= '0';
            when "11" =>
                Salida_0 <= '0';
                Salida_1 <= '0';
                Salida_2 <= '0';
                Salida_3 <= Entrada;  -- La salida 3 se activa si Select es "11"
            when others =>
                Salida_0 <= '0';      -- Todas las salidas se desactivan si Select no es ninguna de las combinaciones anteriores
                Salida_1 <= '0';
                Salida_2 <= '0';
                Salida_3 <= '0';
        end case;
    end process;
end architecture Behavioral;