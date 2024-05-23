library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity deco3to8_22 is
    Port ( I : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end deco3to8_22;

architecture Structural of deco3to8_22 is
	component deco2to4test is
    Port ( K : in  STD_LOGIC_VECTOR (1 downto 0);
			  En: in STD_LOGIC;
           L : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
begin

deco1: deco2to4test port map(I(1 downto 0), not I(2), Y(3 downto 0));
deco2: deco2to4test port map(I(1 downto 0), I(2), Y(7 downto 4));

end Structural;