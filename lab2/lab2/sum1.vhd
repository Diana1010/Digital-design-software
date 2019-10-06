----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:01:21 10/06/2019 
-- Design Name: 
-- Module Name:    sum1 - Behavioral 
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

entity sum1 is
    Port ( A0 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           S0 : out  STD_LOGIC;
           P0 : out  STD_LOGIC);
end sum1;

architecture Behavioral of sum1 is

begin
	S0 <= (A0 or B0) and (not(A0 and B0));
	P0 <= A0 and B0;
	
	
	

end Behavioral;

