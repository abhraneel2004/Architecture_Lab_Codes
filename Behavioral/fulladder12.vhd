library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity fulladder12 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end fulladder12;

architecture Behavioral of fulladder12 is

begin
Process (A,B, Cin)
begin
	if (A='0') AND (B='0') AND (Cin = '0') THEN
		Sum<='0';
	elsif (A='0') AND (B='1') AND (Cin = '1') THEN
		Sum<='0';
	elsif (A='1') AND (B='0') AND (Cin = '1') THEN
		Sum<='0';
	elsif (A='1') AND (B='1') AND (Cin = '0') THEN
		Sum<='0';
	else
		Sum<='1';
	end if;
	
	if (A = '1' and B = '1') or (A = '1' and Cin = '1') or (B = '1' and Cin = '1') then
      Carry <= '1';
   else
		Carry <= '0';
   end if;
end Process;
end Behavioral;