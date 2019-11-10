----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:36 11/10/2019 
-- Design Name: 
-- Module Name:    task5_4 - Behavioral 
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

entity task5_4 is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end task5_4;

architecture Behavioral of task5_4 is

signal S : std_logic;
begin
process(CLK, E)
begin	
	if E = '1' then	
		if rising_edge(CLK) then
			S <= D;
		end if;	
	end if;
end process;	
Q <= S;
end Behavioral;

