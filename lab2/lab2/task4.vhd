----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:35:57 09/29/2019 
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
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           P : out  STD_LOGIC;
           S : out  STD_LOGIC;
           S1 : out  STD_LOGIC);
end task4;

architecture struct of task4 is

component sum1 is
	port(
				A, B, P0 : in  STD_LOGIC; 
				P : out STD_LOGIC;
            S : out  STD_LOGIC
           
	);
end component;






signal r : std_logic            := '0';

begin

	SUM11: sum1 port map(a, b, '0', r, S);
	SUM12: sum1 port map(a1, b1, r, P, S1);


end struct;

architecture Behavioral of task4 is

signal r : std_logic            := '0';

begin

	S <= A xor B;
	r <= A and B;
	S1 <= ((A1 xor B1) and not r) or (not (A1 or B1) and r) or (A1 and B1 and r);
	P <= (A1 and B1 and not r) or (r and (A1 or B1));


end Behavioral;
