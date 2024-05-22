library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity deco2to4_12 is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end deco2to4_12;

architecture Behavioral of deco2to4_12 is

begin
process(I)
begin
	case I is
	when "00" => Y<= "0001";
	when "01" => Y<= "0010";
	when "10" => Y<= "0100";
	when "11" => Y<= "1000";
	when others => Y<= "0000";
	end case;
end process;

end Behavioral;