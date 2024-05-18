library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity nandgate12 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end nandgate12;

architecture Behavioral of nandgate12 is

begin
process (a,b)
begin
	if (a='1') and (b='1') then
		y<= '0';
	else
		y<='1';
	end if;
end process;

end Behavioral;