library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fullsub_12 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end fullsub_12;

architecture Behavioral of fullsub_12 is

begin
process (A, B, Bin)
begin
	if (A='0' and B = '0' and Bin = '0') then
		D<='0';
		Bout<='0';
	elsif (A='0' and B = '0' and Bin = '1') then
		D<='1';
		Bout<='1';
	elsif (A='0' and B = '1' and Bin = '0') then
		D<='1';
		Bout<='1';
	elsif (A='0' and B = '1' and Bin = '1') then
		D<='0';
		Bout<='1';
	elsif (A='1' and B = '0' and Bin = '0') then
		D<='1';
		Bout<='0';
	elsif (A='1' and B = '0' and Bin = '1') then
		D<='0';
		Bout<='0';
	elsif (A='1' and B = '1' and Bin = '0') then
		D<='0';
		Bout<='0';
	elsif (A='1' and B = '1' and Bin = '1') then
		D<='1';
		Bout<='1';
	else
		D<='0';
		Bout <='0';
	end if;
end process;
end Behavioral;