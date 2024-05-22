library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity deco1to2_12 is
    Port ( I : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end deco1to2_12;

architecture Behavioral of deco1to2_12 is

begin
process(I)
begin
	if I='0' then
		Y<="01";
	else
		Y<="10";
	end if;
end process;

end Behavioral;