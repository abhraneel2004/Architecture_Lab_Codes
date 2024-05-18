library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity halfsub22 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end halfsub22;

architecture Behavioral of halfsub22 is
	component andgate60
		port (a: in STD_LOGIC;
				b: in STD_LOGIC;
				c: out STD_LOGIC);
	end component;
	
	component xorgate60
		Port (e: in STD_LOGIC;
				f: in STD_LOGIC;
				g: out STD_LOGIC);
	end component;
	
	component notgate60
		Port (h: in STD_LOGIC;
				i: out STD_LOGIC);
	end component;
	
	signal j: STD_LOGIC;
begin

x1: xorgate60 Port map(A, B, D);
x2: notgate60 port map(A,j);
x3: andgate60 port map(j,B, Bout);

end Behavioral;