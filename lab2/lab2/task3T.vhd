--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:42:45 10/06/2019
-- Design Name:   
-- Module Name:   E:/labXilinxWork/lab2_2/lab2/task3T.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task3
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
 
ENTITY task3T IS
END task3T;
 
ARCHITECTURE behavior OF task3T IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task3
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         Z : IN  std_logic;
         F : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Z : std_logic := '0';

 	--Outputs
   signal F1 : std_logic;
	signal F2 : std_logic;
	signal error : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	behavioral : entity Work.task3(Behavioral) 
      PORT MAP (
       X => X,
       Y => Y,
       Z => Z,
       F => F1
		
        );
      
   structural : entity Work.task3(Struct) 
      PORT MAP (
			 X => X,
			 Y => Y,
			 Z => Z,
			 F => F2
        );
		  
	

   X <= not X after 2 ns;
   Y <= not Y after 4 ns;
   Z <= not Z after 8 ns;
	
	error <= (F1 xor F2 );
END;
