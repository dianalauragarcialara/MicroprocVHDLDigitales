library ieee;
use ieee.std_logic_1164.all;

entity Encoder_4x2 is
    port (
        En_in : in std_logic_vector(3 downto 0);
        Salida_out : out std_logic_vector(1 downto 0)
    );
end entity Encoder_4x2;

architecture Behavioral of Encoder_4x2 is
begin
    process (En_in)
    begin
        case En_in is
            when "0001" =>
                Salida_out <= "00";
            when "0010" =>
                Salida_out <= "01";
            when "0100" =>
                Salida_out <= "10";
            when "1000" =>
                Salida_out <= "11";
            when others =>
                Salida_out <= "00"; 
        end case;
    end process;
end Behavioral;
