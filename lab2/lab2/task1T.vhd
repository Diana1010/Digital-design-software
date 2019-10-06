--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:06:53 10/06/2019
-- Design Name:   
-- Module Name:   E:/labXilinxWork/lab2_2/lab2/task1T.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task1
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
 
ENTITY task1T IS
END task1T;
 
ARCHITECTURE behavior OF task1T IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task1
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

    --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Z1 : std_logic;
	signal Z2 : std_logic;
	signal error : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name  
 
BEGIN

	behavioral : entity Work.task1(Behavioral) 
      PORT MAP (
       A => A,
       B => B,
       S => S,
       Z => Z1
        );
      
   structural : entity Work.task1(Struct) 
      PORT MAP (
       A => A,
       B => B,
       S => S,
       Z => Z2
        );
		  
	

   A <= not A after 2 ns;
   B <= not B after 4 ns;
   S <= not S after 8 ns;

	error <= (Z1 xor Z2);
END;
