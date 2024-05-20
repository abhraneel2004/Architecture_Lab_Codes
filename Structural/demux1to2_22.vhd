library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux1to2_22 is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end demux1to2_22;

architecture Behavioral of demux1to2_22 is
	component andgatetest3 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
	end component;
begin

p1: andgatetest3 port map(I,not(S), Y(0));
p2: andgatetest3 port map(I, S, Y(1));
end Behavioral;