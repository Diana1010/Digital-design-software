----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:25 09/29/2019 
-- Design Name: 
-- Module Name:    task2 - Behavioral 
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

entity task2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           Z : out  STD_LOGIC;
           Z1 : out  STD_LOGIC);
end task2;

architecture Behavioral of task2 is

begin
	Z<= ((A and (not B)) or (S and B));
	Z1<= ((A1 and (not B1)) or (S and B1));

end Behavioral;

