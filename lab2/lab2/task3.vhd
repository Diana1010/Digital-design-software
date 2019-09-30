----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:34:59 09/29/2019 
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

architecture struct of task3 is

component and3
	port(        					
		A, B, C: in std_logic; 
		Q: out std_logic
	);	
end component;

component or2
	port(        					
		A, B: in std_logic; 
		Q: out std_logic
	);	
end component;

component or3
	port(        					
		A, B, C: in std_logic; 
		Q: out std_logic
	);	
end component;

component inv
	port(
		A: in std_logic;
		nA: out std_logic
	);
end component;

signal nX, nY, nZ, nX_Z, Y_Z, X_nY_Z,  and_final: std_logic;
begin						  
	U1: inv port map(X, nX);
	U2: inv port map(Y, nY);
	U3: inv port map(Z, nZ);
	U4: or2 port map(nX, Z, nX_Z);
	U5: or2 port map(Y, Z, Y_Z);
	U6: or3 port map(X, nY, nZ, X_nY_Z);
	U7: and3 port map(nX_Z, Y_Z, X_nY_Z, and_final);
	
end struct;


architecture Behavioral of task3 is

begin
		F<= ((X or (not Y) or (not Z)) and ((not X) or Z) and (Y or Z));

end Behavioral;

