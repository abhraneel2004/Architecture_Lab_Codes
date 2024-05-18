library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity halfsub12 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end halfsub12;

architecture Behavioral of halfsub12 is

begin
process (a,b)
begin
	if (((a= '1') and (b='1')) or ((a='0') and (b='0'))) then
		D <= '0';
	else
		D <= '1';
	end if;
	
	if (a='0') and (b='1') then
		Bout <= '1';
	else
		Bout <= '0';
	end if;
end process;

end Behavioral;