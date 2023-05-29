LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY C_AND_tb IS
END ENTITY;
 ARCHITECTURE behavior OF C_AND_tb IS 
     -- Component Declaration for the Unit Under Test (UUT)
     COMPONENT C_AND
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
  --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
--Outputs
signal c : std_logic;
BEGIN
uut: C_AND PORT MAP (
          a => a,
          b => b,
          c => c
        );
  a<= '0','1' after 100 ns,'0' after 200 ns,'1' after 300 ns;
  b <= '0','1' after 150 ns,'0' after 250 ns;
   stim_proc: process
  
   begin		
      wait;
   end process;
END;

