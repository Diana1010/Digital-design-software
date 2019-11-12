----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:10:20 11/11/2019 
-- Design Name: 
-- Module Name:    task2_2 - Behavioral 
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

entity task2_2 is
    Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end task2_2;

architecture Behavioral of task2_2 is

signal data: std_logic;
begin

main:process(R, S)
begin
	if R = '1' then
        data <= '0';
     elsif S = '1' then
        data <=  '1';
     else
        data <=  data;
     end if;
end process; 

Q <= data;
nQ <=  not data;

end Behavioral;


architecture Struct of task2_2 is

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
el4 : nor_element port map (A => R, B => nor_el1, Q => nor_el2);


Q <= nor_el2;
nQ <= nor_el1;
end Struct;


architecture Param of task2_2 is

signal data: std_logic;

begin

main: process( R, S )
   begin
     if R = '1' then
        data <= inertial '0' after 2 ns;
     elsif S = '1' then
        data <= inertial '1' after 2 ns;
     else
        data <= inertial data after 2 ns;
     end if;
   end process;

   Q <= transport data after 2 ns;
   nQ <= transport not data after 2 ns;
end Param;