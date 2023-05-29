LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY AddSub IS
GENERIC(n: NATURAL :=8); -- default number of bits = 8
PORT(A: IN std_logic_vector(n-1 downto 0);
B: IN std_logic_vector(n-1 downto 0);
subtract: IN std_logic;
carry: OUT std_logic;
sum: OUT std_logic_vector(n-1 downto 0));
END AddSub;
ARCHITECTURE Behavioral OF AddSub IS
-- temporary result with one extra bit for carry
SIGNAL result: std_logic_vector(n downto 0);
BEGIN
PROCESS(subtract, A, B)
BEGIN
IF (subtract = '0') THEN -- addition
--add the two operands with one extra bit for carry
result <= ('0' & A)+('0' & B);
sum <= result(n-1 downto 0); -- extract the n-bit result
carry <= result(n); -- extract the carry bit from result
ELSE -- subtraction
result <= ('0' & A)-('0' & B);
sum <= result(n-1 downto 0); -- extract the n-bit result
carry <= result(n); -- extract the borrow bit from result
END IF;
END Behavioral;