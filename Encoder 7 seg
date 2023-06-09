library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_segment_encoder is
    Port ( 
        input_value : in  STD_LOGIC_VECTOR (3 downto 0);
        segment_output : out STD_LOGIC_VECTOR (6 downto 0)
    );
end seven_segment_encoder;

architecture Behavioral of seven_segment_encoder is

begin
    process(input_value)
    begin
        case input_value is
            when "0000" => segment_output <= "1000000"; -- Display 0
            when "0001" => segment_output <= "1111001"; -- Display 1
            when "0010" => segment_output <= "0100100"; -- Display 2
            when "0011" => segment_output <= "0110000"; -- Display 3
            when "0100" => segment_output <= "0011001"; -- Display 4
            when "0101" => segment_output <= "0010010"; -- Display 5
            when "0110" => segment_output <= "0000010"; -- Display 6
            when "0111" => segment_output <= "1111000"; -- Display 7
            when "1000" => segment_output <= "0000000"; -- Display 8
            when "1001" => segment_output <= "0010000"; -- Display 9
            when others => segment_output <= "1111111"; -- Display OFF
        end case;
    end process;

end Behavioral;
