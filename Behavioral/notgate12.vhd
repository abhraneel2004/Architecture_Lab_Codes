library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity notgate12 is
    Port ( a : in  STD_LOGIC;
           y : out  STD_LOGIC);
end notgate12;

architecture Behavioral of notgate12 is

begin
process (a)
begin
	y<= not a;
end process;

end Behavioral;