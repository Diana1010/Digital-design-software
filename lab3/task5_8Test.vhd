--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:34:04 11/10/2019
-- Design Name:   
-- Module Name:   E:/labXilinxWork/lab3/lab3/task5_8Test.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task5_8
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
 
ENTITY task5_8Test IS
END task5_8Test;
 
ARCHITECTURE behavior OF task5_8Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task5_8
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task5_8 PORT MAP (
          J => J,
          K => K,
          CLK => CLK,
          Q => Q
        );

	CLK <= not CLK after 10 ns;
	J <= not J after 20 ns;
	K <= not K after 40 ns;

END;
