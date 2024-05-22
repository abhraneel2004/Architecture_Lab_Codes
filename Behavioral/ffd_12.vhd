library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ffd_12 is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC);
end ffd_12;

architecture Behavioral of ffd_12 is

begin
process(CLK)

begin
	if rising_edge(CLK) then
		if D='0' then
			Q <= '0';
			Qb <= '1';
		else
			Q <= '1';
			Qb <= '0';
		end if;
	end if;
end process;
end Behavioral;