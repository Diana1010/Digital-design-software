----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:13:21 10/06/2019 
-- Design Name: 
-- Module Name:    task3 - Behavioral 
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

entity task3 is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           F : out  STD_LOGIC);
end task3;


architecture Struct of task3 is

component and3_el
	port(        					
		A, B, C: in std_logic; 
		Z: out std_logic
	);	
end component;

component or_el
	port(        					
		A, B: in std_logic; 
		Z: out std_logic
	);	
end component;

component or3_el
	port(        					
		A, B, C: in std_logic; 
		Z: out std_logic
	);	
end component;

component not_el
	port(
		A: in std_logic;
		Z: out std_logic
	);
end component;

signal nX, nY, nZ, nX_Z, Y_Z, X_nY_nZ: std_logic;
begin						  
	U10: not_el port map(A => X, Z => nX);
	U20: not_el port map(A =>Y, Z =>  nY);
	U30: not_el port map(A => Z, Z =>  nZ);
	U40: or_el port map(A => nX, B =>  Z, Z =>  nX_Z);
	U50: or_el port map(A => Y, B => Z, Z =>  Y_Z);
	U60: or3_el port map(A => X, B =>  nY, C => nZ, Z =>  X_nY_nZ);
	U70: and3_el port map(A => X_nY_nZ , B => nX_Z , C => Y_Z, Z =>  F);
	
end Struct;


architecture Behavioral of task3 is

begin

	F <= ((X or (not Y) or (not Z)) and ((not X) or Z) and (Y or Z));
end Behavioral;

