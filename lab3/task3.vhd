----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:39:29 11/09/2019 
-- Design Name: 
-- Module Name:    task3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity task3 is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end task3;

architecture Behavioral of task3 is

signal data: STD_LOGIC;
begin

   process( D )
   begin
     if data /= D then
        data <= D;
     end if;
   end process;
	
	nQ <= not data;
	Q <= data;

end Behavioral;



architecture Struct of task3 is

signal nD : std_logic;

component task2_2
	 Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
	 end component;
component invertor
		port (
			A: in std_logic;
			Q: out std_logic
			);
	end component;

begin

el1: invertor port map (D, nD);
el2: task2_2 port map (nD, D, Q, nQ);

end Struct;

architecture Param of task3 is

signal data: std_logic;

begin			
		
	 process( D )
   begin
     if data /= D then
        data <= inertial D after 2 ns;
     end if;
   end process;
   
   Q <= transport data after 2 ns;
   nQ <= transport not data after 2 ns;

end Param;



