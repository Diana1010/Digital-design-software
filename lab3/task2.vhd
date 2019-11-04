----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:17:35 11/04/2019 
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
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end task2;

architecture Struct of task2 is

component nor_element
		port (
			A: in std_logic;
			B: in std_logic;
			Q: out std_logic
			);
	end component;
	
	signal nor_el1, nor_el2 : std_logic;
begin

el3 : nor_element port map (A => S, B => nor_el2, Q => nor_el1);
nQ <= nor_el1;
el4 : nor_element port map (A => R, B => nor_el1, Q => nor_el2);
Q <= nor_el2;
end Struct;

architecture Behavioral of task2 is
signal nor1_el, nor2_el: std_logic;
begin

nor2_el <= R nor nor1_el;
nor1_el <= S nor nor2_el;
nQ <= nor1_el;
Q <= nor2_el;


end Behavioral;

architecture Param of task2 is

signal nor1_el, nor2_el: std_logic;

begin

nor2_el <= R nor nor1_el after 2 ns;
nor1_el <= S nor nor2_el after 2 ns;
nQ <= transport nor1_el after 2 ns;
Q <= transport nor2_el after 2 ns;

end Param;