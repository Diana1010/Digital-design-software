----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:03 09/29/2019 
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
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           z : out  STD_LOGIC);
end task1;

architecture struct of task1 is

component or2
	port(        					
		A, B: in std_logic; 
		Q: out std_logic
	);	
end component;

component and2
	port(        					
		A, B: in std_logic; 
		Q: out std_logic
	);	
end component;

component inv
	port(
		A: in std_logic;
		nA: out std_logic
	);
end component;

signal nB, A_nB, S_B,or_final,  and_final: std_logic;
begin						  
	U8: inv port map(B, nB);
	U9: and2 port map(A,nB, A_nB);
	U10: and2 port map(S,B, S_B);
	U11: or2 port map(A_nB, S_B, or_final);

	
end struct;


architecture Behavioral of task1 is

begin

	z<= ((A and (not B)) or (S and B));
end Behavioral;

