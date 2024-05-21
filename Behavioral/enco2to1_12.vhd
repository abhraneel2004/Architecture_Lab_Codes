library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity enco2to1_12 is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end enco2to1_12;

architecture Behavioral of enco2to1_12 is

begin

process (I)
begin
	if (I(1) = '1') then
		Y <= '1';
	else
		Y <= '0';
	end if;
end process;

end Behavioral;

