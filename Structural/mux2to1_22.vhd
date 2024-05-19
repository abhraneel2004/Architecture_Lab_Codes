library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity mux2to1_22 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end mux2to1_22;

architecture Behavioral of mux2to1_22 is

	component andgate15
		Port ( p : in  STD_LOGIC;
           q : in  STD_LOGIC;
           r : out  STD_LOGIC);
	end component;
	
	component orgate15
		Port (d: in STD_LOGIC;
				e: in STD_LOGIC;
				f: out STD_LOGIC);
	end component;
	
	signal s1,s2,s3: STD_LOGIC;

begin

m1: andgate15 port map(not(S),A,s1);
m3: andgate15 port map(S, B, s3);
m4: orgate15 port map(s1,s3,Y);

end Behavioral;
