--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:14:26 09/25/2019
-- Design Name:   
-- Module Name:   E:/labs_Xilinx/Digital-design-software/lab1_2/lab1_v2/lab1aT.vhd
-- Project Name:  lab1_v2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab1a
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
 
ENTITY lab1aT IS
END lab1aT;
 
ARCHITECTURE behavior OF lab1aT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab1a
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab1a PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          Z => Z
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
      --wait for 100 ns;	
		
		wait for 50 ns;	
		A<= '0';
		B<= '0';
		C<= '0';
		D<= '0';
		
		wait for 50 ns;
			D<= '1';
		
					wait for 50 ns;
						D<= '0';
						C<= '1';
					wait for 50 ns; 
							D<= '1';
							
							wait for 50 ns;
							B<= '1';
							D<= '0';
							C<= '0';
							
							wait for 50 ns;
							D<= '1';
							
								wait for 50 ns;
								D<= '0';
								C<= '1';
								
								wait for 50 ns;
								D<='1';
								
								wait for 50 ns;
									D<= '0';
									C<= '0';
									B<= '0';
									A<= '1';
									
									wait for 50 ns;
										D<= '1';
										
										wait for 50 ns;
											D<= '0';
											C<= '1';
											
											wait for 50 ns;
												D<= '1';
												
												wait for 50 ns;
												B<= '1';
												C<= '0';
												D<= '0';
													
													wait for 50 ns;
													D<= '1';
													
													wait for 50 ns;
													C<= '1';
													D<= '0';
														wait for 50 ns;
														D<= '1';
							

		

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
