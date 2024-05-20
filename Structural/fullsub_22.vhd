library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity fullsub_22 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end fullsub_22;

architecture Behavioral of fullsub_22 is
	component halfsubtest is
		Port ( P : in  STD_LOGIC;
           Q : in  STD_LOGIC;
           R : out  STD_LOGIC;
           S : out  STD_LOGIC);
	end component;
	
	signal D1, B1, B2: STD_LOGIC;
	
begin

h1: halfsubtest port map(A, B, D1, B1);
h2: halfsubtest port map(D1, Bin, D, B2);

Bout <= B1 or B2;

end Behavioral;