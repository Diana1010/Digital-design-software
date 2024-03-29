----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:18:09 11/09/2019 
-- Design Name: 
-- Module Name:    task4 - Behavioral 
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

entity task4 is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end task4;

architecture Behavioral of task4 is
signal x : std_logic;
begin

   process( D, E )
   begin
     if  E = '1' then
        x <= D;
     end if;
   end process;
  
	Q <= x;
	nQ <= not x;

end Behavioral;

architecture Struct of task4 is

component and_el 
		port (
			A, B: in std_logic;
			Q : out std_logic);
	end component;
	
component task2_2
	 Port ( R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
	 end component;
	 
component invertor
		port (
			A: in std_logic;
			Q: out std_logic
			);
	end component;
	
signal nD, and1_el, and2_el : std_logic;
begin
nD <= not D;
u1 : invertor port map(D, nD);
u2 : and_el port map(D, E, and1_el);
u3 : and_el port map(nD, E, and2_el);
u4 : task2_2 port map(and2_el, and1_el, Q, nQ);
end Struct;

architecture Param of task4 is
signal x : std_logic;
begin
	main: process ( D, E )
  begin
    if E = '1' then
      x <= inertial D after 2 ns;
    end if;
  end process;

  Q <= transport x after 2 ns;
  nQ <= transport not x after 2 ns;
end Param;