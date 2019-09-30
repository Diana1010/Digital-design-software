--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:25:57 09/30/2019
-- Design Name:   
-- Module Name:   E:/labs_Xilinx/Digital-design-software/lab2/lab2/task2T.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task22
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
 
ENTITY task2T IS
END task2T;
 
ARCHITECTURE behavior OF task2T IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task22
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         a1 : IN  std_logic;
         b1 : IN  std_logic;
         s : IN  std_logic;
         z : OUT  std_logic;
         z1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal a1 : std_logic := '0';
   signal b1 : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal z : std_logic;
   signal z1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task22 PORT MAP (
          a => a,
          b => b,
          a1 => a1,
          b1 => b1,
          s => s,
          z => z,
          z1 => z1
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
    --  wait for 100 ns;	

     -- wait for <clock>_period*10;

      -- insert stimulus here 
		
			wait for 50 ns;	
		a<= '0';
		b<= '0';
		a1<= '0';
		b1<= '0';
		s<= '0';
	
		
		wait for 10 ns;
			s<= '1';
		
					wait for 10 ns;
						s<= '0';
						b1<= '1';
					wait for 10 ns; 
							s<= '1';
							
							wait for 10 ns;
							a1<= '1';
							s<= '0';
							b1<= '0';
							
							wait for 10 ns;
							s<= '1';
							
								wait for 10 ns;
								s<= '0';
								b1<= '1';
								
								wait for 10 ns;
								s<='1';
								
											wait for 10 ns;
													a1<= '0';
													s<= '0';
													b1<= '0';
													b<= '1';
													
													wait for 10 ns;
													s<= '1';
													
														wait for 10 ns;
														s<= '0';
														b1<= '1';
														
														wait for 10 ns;
														s<='1';
														
														wait for 10 ns;
															a1<= '1';
															b1<='0';
															s <= '0';
															
															wait for 10 ns;
															s <= '1';
															
															wait for 10 ns;
																b1 <= '1';
																s <= '0';
															
															wait for 10 ns;
																	s <= '1';
																	
																	wait for 10 ns;
																		a<='1';
																		a1<= '0';
																		s<= '0';
																		b1<= '0';
																		b<= '0';
																				wait for 10 ns;
									s<= '1';
								
											wait for 10 ns;
												s<= '0';
												b1<= '1';
											wait for 10 ns; 
													s<= '1';
													
													wait for 10 ns;
													a1<= '1';
													s<= '0';
													b1<= '0';
													
													wait for 10 ns;
													s<= '1';
													
														wait for 10 ns;
														s<= '0';
														b1<= '1';
														
														wait for 10 ns;
														s<='1';
														
																	wait for 10 ns;
																			a1<= '0';
																			s<= '0';
																			b1<= '0';
																			b<= '1';
																			
																			wait for 10 ns;
																			s<= '1';
																			
																				wait for 10 ns;
																				s<= '0';
																				b1<= '1';
																				
																				wait for 10 ns;
																				s<='1';
																				
																				wait for 10 ns;
																					a1<= '1';
																					b1<='0';
																					s <= '0';
																					
																					wait for 10 ns;
																					s <= '1';
																					
																					wait for 10 ns;
																						b1 <= '1';
																						s <= '0';
																					
																					wait for 10 ns;
																							s <= '1';
      wait;
   end process;

END;
