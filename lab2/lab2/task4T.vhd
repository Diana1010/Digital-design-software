--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:27:00 10/06/2019
-- Design Name:   
-- Module Name:   E:/labXilinxWork/lab2_2/lab2/task4T.vhd
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
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         B0 : IN  std_logic;
         B1 : IN  std_logic;
         C : OUT  std_logic;
         Z0 : OUT  std_logic;
         Z1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal B0 : std_logic := '0';
   signal B1 : std_logic := '0';

 	--Outputs
   signal C_beh : std_logic;
   signal Z0_beh : std_logic;
   signal Z1_beh : std_logic;
	signal C_str : std_logic;
   signal Z0_str : std_logic;
   signal Z1_str : std_logic;
	signal error : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	behavioral : entity Work.task4(Behavioral) 
      PORT MAP (
       A0 => A0,
       A1 => A1,
       B0 => B0,
       B1 => B1,
		 Z0 => Z0_beh,
		 Z1 => Z1_beh,
		 C => C_beh
        );
      
   structural : entity Work.task4(Struct) 
      PORT MAP (
			 A0 => A0,
			 A1 => A1,
			 B0 => B0,
			 B1 => B1,
			 Z0 => Z0_str,
			 Z1 => Z1_str,
			 C => C_str
        );
		  

   A0 <= not A0 after 2 ns;
   A1 <= not A1 after 4 ns;
   B0 <= not B0 after 8 ns;
	B1 <= not B1 after 16 ns;
	
	error <= (z0_beh xor Z0_str) or (Z1_beh xor Z1_str) or (C_beh xor C_str);

END;
