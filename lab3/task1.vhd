----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:10 11/03/2019 
-- Design Name: 
-- Module Name:    task1 - Behavioral 
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

entity task1 is
    Port ( Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end task1;

architecture Struct of task1 is

component invertor
		port (
			A: in std_logic;
			Q: out std_logic
			);
	end component; 

signal x : std_logic := '0';
signal nx : std_logic;

begin
	el1 : invertor port map (A => x, Q => nx);
	nQ <= nx;
	el2 : invertor port map (A => nx, Q => Q);

end Struct;

