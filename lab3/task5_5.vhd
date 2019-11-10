----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:06 11/10/2019 
-- Design Name: 
-- Module Name:    task5_5 - Behavioral 
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

entity task5_5 is
    Port ( D : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end task5_5;

architecture Behavioral of task5_5 is

signal S: std_logic;
begin
	process(CLR, D, CLK)
	begin
		if CLR = '1' then
			S <= '0';
		elsif rising_edge(CLK) then
			S <= D;	 
		end if;
	end process; 
	
	Q <= S;

end Behavioral;

