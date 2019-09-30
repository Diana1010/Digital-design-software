----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:31:41 09/29/2019 
-- Design Name: 
-- Module Name:    task22 - Behavioral 
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

entity task22 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           z : out  STD_LOGIC;
           z1 : out  STD_LOGIC);
end task22;

architecture struct of task22 is

component task1 is
	port(
	a, b, s: in std_logic;
	z: out std_logic
	);
end component;

begin

	MUX0: task1 port map(a, b, s, z);
	MUX1: task1 port map(a1, b1, s, z1);
end struct;

