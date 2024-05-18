library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity fulladder22 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end fulladder22;

architecture Behavioral of fulladder22 is
	component halfadder30
		Port (a: in STD_LOGIC;
				b: in STD_LOGIC;
				S: out STD_LOGIC;
				C: out STD_LOGIC);
	end component;
	
	component orgate30
		Port ( E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           G : out  STD_LOGIC);
	end component;
	
	signal s1,c1,c2: STD_LOGIC;
begin

h1: halfadder30 port map(A,B, s1,c1);
h2: halfadder30 port map(s1,Cin, Sum,c2);
h3: orgate30 port map(c1,c2,Carry);
end Behavioral;