library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demuxtest is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end demuxtest;

architecture Behavioral of demuxtest is

	component demux1to4test
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           C : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component demux1to2test
		Port ( G : in  STD_LOGIC;
           H : in  STD_LOGIC;
           J : out  STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	signal s1: STD_LOGIC_VECTOR (1 downto 0);
	
begin

m1: demux1to2test port map(I, S(2), s1);
m2: demux1to4test port map(s1(0), S(1 downto 0), Y(3 downto 0));
m3: demux1to4test port map(s1(1), S(1 downto 0), Y(7 downto 4));

end Behavioral;