----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:03:16 11/10/2019 
-- Design Name: 
-- Module Name:    task5_7 - Behavioral 
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

entity task5_7 is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end task5_7;

architecture Behavioral of task5_7 is

signal x: STD_LOGIC;
begin
process(R, S, CLK)
begin
if rising_edge(CLK) then 
	if r = '1' then 
		 x <= '0';
		 if s = '1' then x <= '1'; else x <= '0'; end if;
	elsif s = '1' then x <= '1'; else x <= x;
	end if;
end if;
end process; 
Q <= x; 

end Behavioral;

