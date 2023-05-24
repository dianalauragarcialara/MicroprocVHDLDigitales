-- A 4-to-1 8-bit wide multiplexer
LIBRARY ieee;
USE IEEE.std_logic_1164.all;
ENTITY Multiplexer IS
PORT(S: IN std_logic_vector(1 DOWNTO 0); -- select lines
D0, D1, D2, D3: IN std_logic_vector(7 DOWNTO 0); -- data bus input
Y: OUT std_logic_vector(7 DOWNTO 0)); -- data bus output
END Multiplexer;
-- Behavioral level code
ARCHITECTURE Behavioral OF Multiplexer IS
BEGIN
PROCESS (S,D0,D1,D2,D3)
BEGIN
CASE S IS
WHEN "00" => Y <= D0;
WHEN "01" => Y <= D1;
WHEN "10" => Y <= D2;
WHEN "11" => Y <= D3;
WHEN OTHERS => Y <= (OTHERS => 'U'); -- 8-bit vector of U
END CASE;
END PROCESS;
END Behavioral;