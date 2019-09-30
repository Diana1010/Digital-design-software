--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:53:05 09/30/2019
-- Design Name:   
-- Module Name:   E:/labs_Xilinx/Digital-design-software/lab2/lab2/task4T.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task4
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY task4T IS
END task4T;
 
ARCHITECTURE behavior OF task4T IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task4
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         A1 : IN  std_logic;
         B1 : IN  std_logic;
         P : OUT  std_logic;
         S : OUT  std_logic;
         S1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal A1 : std_logic := '0';
   signal B1 : std_logic := '0';

 	--Outputs
   signal P_1 : std_logic;
   signal S_1 : std_logic;
   signal S1_1 : std_logic;
	signal P_2 : std_logic;
   signal S_2 : std_logic;
   signal S1_2 : std_logic;
	signal error : std_logic; 
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   behavior: task4 PORT MAP (
          A => A,
          B => B,
          A1 => A1,
          B1 => B1,
          P => P_1,
          S => S_1,
          S1 => S1_1
        );
		  
	 struct: task4 PORT MAP (
          A => A,
          B => B,
          A1 => A1,
          B1 => B1,
          P => P_2,
          S => S_2,
          S1 => S1_2
        );
		  
		A <= not A after 2 ns;
		B <= not B after 4 ns;
		A1 <= not A1 after 8 ns;
		B1 <= not B1 after 16 ns;
			
		error <= ((S1_1 xor S1_2) or (S_1 xor S_2) or (P_1 xor P_2));
END;
