--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:49:08 09/30/2019
-- Design Name:   
-- Module Name:   E:/labs_Xilinx/Digital-design-software/lab2/lab2/sum1T.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sum1
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
 
ENTITY sum1T IS
END sum1T;
 
ARCHITECTURE behavior OF sum1T IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sum1
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         P0 : IN  std_logic;
         P : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal P0 : std_logic := '0';

 	--Outputs
   signal P : std_logic;
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sum1 PORT MAP (
          A => A,
          B => B,
          P0 => P0,
          P => P,
          S => S
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     -- wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 
		wait for 50 ns;	
		A<= '0';
		B<= '0';
		P0<= '0';
		
		
		wait for 50 ns;
			P0<= '1';
		
					wait for 50 ns;
						P0<= '0';
						B<= '1';
					wait for 50 ns; 
							P0<= '1';
							
							wait for 50 ns;
							A<= '1';
							P0<= '0';
							B<= '0';
							
							wait for 50 ns;
							P0<= '1';
							
								wait for 50 ns;
								P0<= '0';
								B<= '1';
								
								wait for 50 ns;
								P0<='1';
		
		

      wait;
   end process;

END;
