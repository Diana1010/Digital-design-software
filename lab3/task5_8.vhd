----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:24:56 11/10/2019 
-- Design Name: 
-- Module Name:    task5_8 - Behavioral 
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

entity task5_8 is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end task5_8;

architecture Behavioral of task5_8 is

signal s: STD_LOGIC;
begin
process(J, K, CLK)
begin
	if rising_edge(CLK) then 
		if (J = '1' and K = '1') then
			s <= not s;
		elsif K = '1' then
			s <= '0';
		elsif J = '1' then
			s <= '1';
		end if; 
	end if;
end process; 
Q <= s;

end Behavioral;

