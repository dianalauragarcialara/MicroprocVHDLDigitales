LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY shifter IS PORT (
  SHSel: IN std_logic_vector(1 downto 0); -- select for operations
  input: IN std_logic_vector(7 downto 0); -- input
  output: OUT std_logic_vector(7 downto 0)); -- output
END shifter;

ARCHITECTURE Behavior OF shifter IS
BEGIN
  process(SHSel, input)
  begin
     CASE SHSel IS
     WHEN "00" => -- pass through
         output <= input;
     WHEN "01" => -- shift left with 0
         output <= input(6 downto 0) & '0';
     WHEN "10" => -- shift right with 0
         output <= '0' & input(7 downto 1);
     WHEN OTHERS => -- rotate right
         output <= input(0) & input(7 downto 1);
     END CASE;
  END PROCESS;
END Behavior;