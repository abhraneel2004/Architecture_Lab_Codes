library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux1to8_22 is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end demux1to8_22;

architecture Behavioral of demux1to8_22 is

begin
process (I,S) 
begin
	if I = '1' then
		if S="000" then
			Y<="00000001";
			
		elsif S="001" then
			Y<="00000010";
			
		elsif S="010" then
			Y<="00000100";
			
		elsif S="011" then
			Y<="00001000";
			
		elsif S="100" then
			Y<="00010000";
			
		elsif S="101" then
			Y<="00100000";
			
		elsif S="110" then
			Y<="01000000";
			
		elsif S="111" then
			Y<="10000000";
		end if;
	else
		Y<= "00000000";
	end if;
end process;
end Behavioral;