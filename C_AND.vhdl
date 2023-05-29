library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity C_AND is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end C_AND;
architecture Behavioral of C_AND is

begin
c<= a and b;
end Behavioral;