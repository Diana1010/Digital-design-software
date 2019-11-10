--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:44:49 11/10/2019
-- Design Name:   
-- Module Name:   E:/labXilinxWork/lab3/lab3/task5_9Test.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task5_9
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
 
ENTITY task5_9Test IS
END task5_9Test;
 
ARCHITECTURE behavior OF task5_9Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task5_9
    PORT(
         T : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task5_9 PORT MAP (
          T => T,
          CLK => CLK,
          Q => Q
        );
		  
   CLK <= not CLK after 2 ns;
	T <= not T after 4 ns;

END;
