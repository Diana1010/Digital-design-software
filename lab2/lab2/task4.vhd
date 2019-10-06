----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:15:27 10/06/2019 
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
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           C : out  STD_LOGIC;
           Z0 : out  STD_LOGIC;
           Z1 : out  STD_LOGIC);
end task4;

architecture Behavioral of task4 is
signal carry: STD_LOGIC;
begin

   Z0 <= (A0 or B0) and (not(A0 and B0));
	carry <= A0 and B0;

	Z1 <= ((not ((A1 and B1) or ((A1 and carry) or (B1 and carry)))) and (A1 or (B1 or carry))) or (A1 and B1 and carry);
	C <= (A1 and B1) or (A1 and carry) or (B1 and carry);


end Behavioral;


architecture Struct of task4 is

component sum1 is
    Port ( A0 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           S0 : out  STD_LOGIC;
           P0 : out  STD_LOGIC);
end component;

component sum2 is
    Port ( A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           P0 : in  STD_LOGIC;
           S1 : out  STD_LOGIC;
           P1 : out  STD_LOGIC);
end component;

signal carry0: STD_LOGIC;

begin

	U5: sum1 port map (A0 => A0, B0 => B0, S0 => Z0, P0 => carry0);
	U6: sum2 port map (A1 => A1, B1 => B1, P0 => carry0, S1 => Z1, P1 => C);

end Struct;

