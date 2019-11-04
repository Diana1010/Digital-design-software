--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:58:01 11/04/2019
-- Design Name:   
-- Module Name:   E:/labXilinxWork/lab3/lab3/task2Test.vhd
-- Project Name:  lab3
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
 
ENTITY task2Test IS
END task2Test;
 
ARCHITECTURE behavior OF task2Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task2
    PORT(
         R : IN  std_logic;
         S : IN  std_logic;
         Q : OUT  std_logic;
         nQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Q_struct : std_logic;
   signal nQ_struct : std_logic;
	signal Q_beh : std_logic;
   signal nQ_beh : std_logic; 
	signal Q_param : std_logic;
   signal nQ_param : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
 	struct: entity Work.task2(Struct) PORT MAP (
          R => R,
          S => S,
          Q => Q_struct,
          nQ => nQ_struct
        );
		  
	 behav: entity Work.task2(Behavioral) PORT MAP (
          R => R,
          S => S,
          Q => Q_beh,
          nQ => nQ_beh
        );

	param: entity Work.task2(Param) PORT MAP (
          R => R,
          S => S,
          Q => Q_param,
          nQ => nQ_param
        );
	
	S <= not S after 30 ns;
   R <= not R after 60 ns;

   

END;
