library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity andgate12 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end andgate12;

architecture Behavioral of andgate12 is

begin
process (a,b)
begin
	if (a = '1') and (b = '1') then
		y<='1';
	else
		y<='0';
	end if;
end process;

end Behavioral;