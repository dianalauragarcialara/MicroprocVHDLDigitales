--Código de modelado de una Unidad Lógica Aritmética

library ieee;--libreria
use ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;

entity alu is port(--puertos físicos en forma de vector
    S: in std_logic_vector(2 downto 0);
    A, B: in std_logic_vector(3 downto 0);
    F: out std_logic_vector(3 downto 0)
);
end alu;

architecture Behavioral of alu is--comportamiento
    begin
        process(S, A, B)--process para las entradas
        begin
            case S is--case si...
                when "000" => 
                F <= A;
                when "001" =>
                F <= A and B;
                when "010" =>
                F <= A or B;
                when "011" =>
                F <= not A;
                when "100" => 
                F <= A + B;
                when "101" =>
                F <= A - B;
                when "110" => 
                F <= A + 1;
                when OTHERS =>
                F <= A - 1;
            end case;
        end process;
end Behavioral;