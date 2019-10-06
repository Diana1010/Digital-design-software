----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:58:23 10/06/2019 
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
           Z : out  STD_LOGIC);
end task1;


architecture Struct of task1 is

component not_el is
    Port ( A : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end component;

component and_el is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end component;

component or_el is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end component;

signal not_b, z1, z2: STD_LOGIC;

begin

U1: not_el port map (A => B, Z => not_b);
U2: and_el port map(A => A, B => not_b, Z => z1);
U3: and_el port map(A => B, B => S, Z => z2);
U4: or_el  port map(A => z1, B => z2, Z => z);

end Struct;

architecture Behavioral of task1 is

begin

	Z <= (A and (not B)) or (B and S);
end Behavioral;

