library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity enco2to1_2 is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end enco2to1_2;

architecture Behavioral of enco2to1_2 is

begin

Y <= I(1) or '0';

end Behavioral;

