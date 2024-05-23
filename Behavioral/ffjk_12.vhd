library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ffjk_12 is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end ffjk_12;

architecture Behavioral of ffjk_12 is
 
begin
process (clk)
variable temp: STD_LOGIC := '0';
begin
	if rising_edge(clk) then
		if j='0' and k = '0' then
			temp:= temp;
		elsif j='1' and k='0' then
			temp:= '1';
		elsif j='0' and k = '1' then
			temp:= '0';
		else
			temp:= not temp;
		end if;
	end if;
	q<= temp;
	qb<= not temp;
end process;

end Behavioral;