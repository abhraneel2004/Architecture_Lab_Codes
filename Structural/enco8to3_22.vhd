library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity enco8to3_22 is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end enco8to3_22;

architecture Behavioral of enco8to3_22 is
	component enco4to2_test is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : out  STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	component orgate is
		port( C1, C2 : in  STD_LOGIC;
           D : out  STD_LOGIC);
	end component;
	
	component andgate is
		port(E1, E2: in STD_LOGIC;
				F: out STD_LOGIC);
	end component;
	
	signal inter1, inter0: STD_LOGIC_VECTOR (1 downto 0);
	signal s1,s2,s3,s4,s5,s6,s7: STD_LOGIC;
begin

p1: enco4to2_test port map(I(7 downto 4), inter1);
q1: orgate port map (I(7),I(6), s1);
q2: orgate port map (I(5),I(4), s2);
q3: orgate port map(s1,s2,s3);
Y(2) <= s3;

p2: enco4to2_test port map(I(3 downto 0), inter0);

r11: andgate port map(inter1(1), s3, s4);
r10: andgate port map(inter1(0), s3, s5);

r01: andgate port map(inter0(1), not s3, s6);
r00: andgate port map(inter0(0), not s3, s7);

q4: orgate port map(s4, s6, Y(1));
q5: orgate port map(s5, s7, Y(0));

end Behavioral;