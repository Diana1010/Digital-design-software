--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:14:18 10/06/2019
-- Design Name:   
-- Module Name:   E:/labXilinxWork/lab2_2/lab2/task2T.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task2
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
 
ENTITY task2T IS
END task2T;
 
ARCHITECTURE behavior OF task2T IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task2
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         A1 : IN  std_logic;
         B1 : IN  std_logic;
         S : IN  std_logic;
         Z : OUT  std_logic;
         Z1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal A1 : std_logic := '0';
   signal B1 : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Z_beh : std_logic;
   signal Z1_beh : std_logic;
	signal Z_str : std_logic;
   signal Z1_str : std_logic;
	signal error : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
	
 
BEGIN
		behavioral : entity Work.task2(Behavioral) 
      PORT MAP (
       A => A,
       B => B,
       S => S,
		 A1 => A1,
       B1 => B1,
       Z => Z_beh,
		 Z1 => Z1_beh
        );
      
   structural : entity Work.task2(Struct) 
      PORT MAP (
       A => A,
       B => B,
       S => S,
		 A1 => A1,
       B1 => B1,
       Z => Z_str,
		 Z1 => Z1_str
        );
		  
	error <= (Z_beh xor Z_str) or (Z1_beh xor Z1_str);

   A <= not A after 2 ns;
   B <= not B after 4 ns;
   S <= not S after 8 ns;
	A1 <= not A1 after 16 ns;
   B1 <= not B1 after 32 ns;
	
END;
