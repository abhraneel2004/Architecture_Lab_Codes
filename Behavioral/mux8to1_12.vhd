library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8to1_12 is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end mux8to1_12;

architecture Behavioral of mux8to1_12 is

begin
process(I,S)
begin
	case S is
		when "000" =>
			Y<= I(0);
		when "001" =>
			Y<= I(1);
		when "010" =>
			Y<=I(2);
		when "011" =>
			Y<=I(3);
		when "100" =>
			Y<=I(4);
		WHEN "101" =>
			Y<=I(5);
		WHEN "110" =>
			Y<=I(6);
		WHEN "111" =>
			Y<=I(7);
		WHEN OTHERS =>
			Y<='0';
	end case;
end process;	
	
end Behavioral;