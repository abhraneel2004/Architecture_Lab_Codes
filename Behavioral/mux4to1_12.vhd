library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux4to1_12 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end mux4to1_12;

architecture Behavioral of mux4to1_12 is

begin
	process(I,S)
	begin
		if (S="00") then
			Y<= I(0);
		ELSIF (S="01") THEN
			Y <= I(1);
		ELSIF (S="10") THEN
			Y<=I(2);
		ELSE
			Y<=I(3);
		END IF;
	END PROCESS;
end Behavioral;
