library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fft_12 is
    Port ( t : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           qb : out  STD_LOGIC);
end fft_12;

architecture Behavioral of fft_12 is

begin
process(clk)
	variable temp: STD_LOGIC := '0';
begin
	if rising_edge(clk) then
		if t='1' then
			temp:= not temp;
		else
			temp:= temp;
		end if;
	end if;
	q<= temp;
	qb<= not temp;
end process;

end Behavioral;