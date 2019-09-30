----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:33:32 09/29/2019 
-- Design Name: 
-- Module Name:    sum4 - Behavioral 
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

entity sum4 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           P : out  STD_LOGIC;
           S : out  STD_LOGIC;
           P0 : in  STD_LOGIC);
end sum4;

architecture Behavioral of sum4 is

begin
	S <= ((A or B) and (not P0));
	P<= (A and B);

end Behavioral;

