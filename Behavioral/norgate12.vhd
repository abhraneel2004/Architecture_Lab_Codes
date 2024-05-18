
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity norgate12 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end norgate12;

architecture Behavioral of norgate12 is

begin
process(a,b)
begin
	if (a='0') and (b='0') then
		y<='1';
	else
		y<='0';
	end if;
end process;

end Behavioral;

