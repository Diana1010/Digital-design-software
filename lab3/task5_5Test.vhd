--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:33:58 11/10/2019
-- Design Name:   
-- Module Name:   E:/labXilinxWork/lab3/lab3/task5_5Test.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task5_5
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
 
ENTITY task5_5Test IS
END task5_5Test;
 
ARCHITECTURE behavior OF task5_5Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task5_5
    PORT(
         D : IN  std_logic;
         CLR : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLR : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task5_5 PORT MAP (
          D => D,
          CLR => CLR,
          CLK => CLK,
          Q => Q
        );

   D <= not D after 40 ns;
	CLK <= not CLK after 20 ns;
	CLR <= '1' after 40 ns when CLR = '0' else '0' after 5 ns;

END;
