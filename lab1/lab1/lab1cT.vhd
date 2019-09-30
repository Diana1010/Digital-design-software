--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:21:50 09/25/2019
-- Design Name:   
-- Module Name:   E:/labs_Xilinx/Digital-design-software/lab1_2/lab1_v2/lab1cT.vhd
-- Project Name:  lab1_v2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab1c
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
 
ENTITY lab1cT IS
END lab1cT;
 
ARCHITECTURE behavior OF lab1cT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab1c
    PORT(
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         in3 : IN  std_logic;
         in4 : IN  std_logic;
         Q : OUT  std_logic;
         nQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal in3 : std_logic := '0';
   signal in4 : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal nQ : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab1c PORT MAP (
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          Q => Q,
          nQ => nQ
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
      wait for 100 ns;	

     -- wait for <clock>_period*10;

		 wait for 50 ns;
			in4<= '1';
		
					wait for 50 ns;
						in4<= '0';
						in3<= '1';
					wait for 50 ns; 
							in4<= '1';
							
							wait for 50 ns;
							in2<= '1';
							in4<= '0';
							in3<= '0';
							
							wait for 50 ns;
							in4<= '1';
							
								wait for 50 ns;
								in4<= '0';
								in3<= '1';
								
								wait for 50 ns;
								in4<='1';
								
								wait for 50 ns;
									in4<= '0';
									in3<= '0';
									in2<= '0';
									in1<= '1';
									
									wait for 50 ns;
										in4<= '1';
										
										wait for 50 ns;
											in4<= '0';
											in3<= '1';
											
											wait for 50 ns;
												in4<= '1';
												
												wait for 50 ns;
												in2<= '1';
												in3<= '0';
												in4<= '0';
													
													wait for 50 ns;
													in4<= '1';
													
													wait for 50 ns;
													in3<= '1';
													in4<= '0';
														wait for 50 ns;
														in4<= '1';	
      -- insert stimulus here 

      wait;
   end process;

END;
