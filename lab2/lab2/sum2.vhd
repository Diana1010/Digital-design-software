----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:11:27 10/06/2019 
-- Design Name: 
-- Module Name:    sum2 - Behavioral 
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

entity sum2 is
    Port ( A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           P0 : in  STD_LOGIC;
           S1 : out  STD_LOGIC;
           P1 : out  STD_LOGIC);
end sum2;

architecture Behavioral of sum2 is

begin
	
	S1 <= ((not ((A1 and B1) or ((A1 and P0) or (B1 and P0)))) and (A1 or (B1 or P0))) or (A1 and B1 and P0);
	P1 <= (A1 and B1) or (A1 and P0) or (B1 and P0);

end Behavioral;

