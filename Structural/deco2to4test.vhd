library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity deco2to4test is
    Port ( K : in  STD_LOGIC_VECTOR (1 downto 0);
		   En: in STD_LOGIC;
           L : out  STD_LOGIC_VECTOR (3 downto 0));
end deco2to4test;

architecture Behavioral of deco2to4test is

begin
process(En, K)
begin
	if En='1' then
		if K="00" then
			L<= "0001";
		elsif K="01" then
			L<= "0010";
		elsif K="10" then
			L<= "0100";
		elsif K="11" then
			L<= "1000";
		end if;
	else
		L<="0000";
	end if;
end process;
end Behavioral;