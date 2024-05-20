library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux1to4_12 is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end demux1to4_12;

architecture Behavioral of demux1to4_12 is

begin
process (I,S)
begin
	if I='1' then
		if S="00" then 
			Y <= "0001";
		elsif S="01" then
			Y<= "0010";
		elsif S="10" then
			Y<= "0100";
		else
			Y<= "1000";
		end if;
	else
		Y <= "0000";
	end if;
end process;
end Behavioral;