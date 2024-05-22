library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity deco3to8_12 is
    Port ( I : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end deco3to8_12;

architecture Behavioral of deco3to8_12 is

begin
process(I)
begin
	case I is 
		when "000" => Y <= "00000001";
		when "001" => Y <= "00000010";
		when "010" => Y <= "00000100";
		when "011" => Y <= "00001000";
		when "100" => Y <= "00010000";
		when "101" => Y <= "00100000";
		when "110" => Y <= "01000000";
		when "111" => Y <= "10000000";
		when others => Y <= "00000000";
	end case;
end process;
end Behavioral;