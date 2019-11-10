----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:55:30 11/10/2019 
-- Design Name: 
-- Module Name:    task5_6 - Behavioral 
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

entity task5_6 is
    Port ( PRE : in  STD_LOGIC;
           D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end task5_6;

architecture Behavioral of task5_6 is

signal s: std_logic;
begin
	process( PRE, D, CLK)
	begin
	
		if PRE = '1' then
			s <= '1';
		elsif rising_edge(CLK) then
			s <= D;	 
		end if;
	end process; 
	
	Q <= s;

end Behavioral;

