----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:38:07 11/10/2019 
-- Design Name: 
-- Module Name:    task5_9 - Behavioral 
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

entity task5_9 is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end task5_9;

architecture Behavioral of task5_9 is

signal S: std_logic := '0';
begin
process(T, CLK)
begin
if T = '1' then
	if rising_edge(CLK) then
		S <= not S;	 
	end if;
end if;
end process; 
Q <= S;

end Behavioral;

