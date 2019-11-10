--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:56:04 11/09/2019
-- Design Name:   
-- Module Name:   E:/labXilinxWork/lab3/lab3/task3Test.vhd
-- Project Name:  lab3
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
 
ENTITY task3Test IS
END task3Test;
 
ARCHITECTURE behavior OF task3Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task3
    PORT(
         D : IN  std_logic;
         Q : OUT  std_logic;
         nQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';

 	--Outputs
   signal Q_struct : std_logic;
   signal nQ_struct : std_logic;
	signal Q_beh : std_logic;
   signal nQ_beh : std_logic; 
	signal Q_param : std_logic;
   signal nQ_param : std_logic;
  
 
  
 
BEGIN
 
	  Behavioral: entity Work.task3(Behavioral) PORT MAP (
          D => D,
          Q => Q_beh,
          nQ => nQ_beh
        );
		  
	Struct: entity Work.task3(Struct) PORT MAP (
          D => D,
          Q => Q_struct,
          nQ => nQ_struct
        );
	
	Param: entity Work.task3(Param) PORT MAP (
          D => D,
          Q => Q_param,
          nQ => nQ_param
        );
	
	D <= not D after 100 ns;

END;
