library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity enco4to2_32 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end enco4to2_32;

architecture Behavioral of enco4to2_32 is
	component enco2to1 is
    Port ( E : in  STD_LOGIC_VECTOR (1 downto 0);
           F : out  STD_LOGIC);
	end component;
	
	component andgate is
    Port ( C1 : in  STD_LOGIC;
           C2 : in  STD_LOGIC;
           D : out  STD_LOGIC);
	end component;
	
	component orgate is
    Port ( A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           B : out  STD_LOGIC);
	end component;
	
	signal s1, s2, s3, s4,s5: STD_LOGIC;
begin
p1: enco2to1 port map(I(3 downto 2), s1);
p2: enco2to1 port map(I(1 downto 0), s2);

q1: orgate port map(I(2), I(3), s3);
Y(1) <= s3;

r1: andgate port map(not s3, s2, s4);
r2: andgate port map(s3, s1, s5);
q2: orgate port map(s4, s5, Y(0)); 

end Behavioral;