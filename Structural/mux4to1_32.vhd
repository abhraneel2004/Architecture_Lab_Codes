library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux4to1_32 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end mux4to1_32;

architecture Behavioral of mux4to1_32 is
	component mux2to1test 
		Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           op : out  STD_LOGIC);
	end component;
	
	signal s1, s2: STD_LOGIC;
begin

mux1: mux2to1test port map(I(0), I(1), S(0), s1);
mux2: mux2to1test port map(I(2), I(3), S(0), s2);
mux3: mux2to1test port map(s1, s2, S(1), Y);

end Behavioral;
