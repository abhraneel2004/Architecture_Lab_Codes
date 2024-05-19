library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2to1_12 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : in  STD_LOGIC;
           y : out  STD_LOGIC);
end mux2to1_12;

architecture Behavioral of mux2to1_12 is

begin
	process(s,a,b)	
	begin
		if (s='0') then
			y<=a;
		else
			y<=b;
		end if;
	end process;
end Behavioral;