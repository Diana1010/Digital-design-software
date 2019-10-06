----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:41:23 10/06/2019 
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
           A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Z : out  STD_LOGIC;
           Z1 : out  STD_LOGIC);
end task2;

architecture Behavioral of task2 is

begin
	Z <= (A and (not B)) or (B and S);
	Z1 <= (A1 and (not B1)) or (B1 and S);

end Behavioral;

architecture Struct of task2 is

component task1 is
		port (A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end component;

begin

	U1: task1 port map(A => A, B => B, S => S, Z => Z);
	U2: task1 port map(A => A1, B => B1, S => S, Z => Z1);

end Struct;

