library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux1to2_12 is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end demux1to2_12;

architecture Behavioral of demux1to2_12 is

begin
process (I,S)
begin
	Y(0) <= '0';
	Y(1) <= '0';
	if S='0' then
		Y(0) <= I;
	else
		y(1) <= I;
	end if;
end process;
end Behavioral;