library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity enco8to3_2 is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end enco8to3_2;

architecture Behavioral of enco8to3_2 is

begin

Y(0) <= I(1) or I(3) or I(5) or I(7);
Y(1) <= I(2) or I(3) or I(6) or I(7);
Y(2) <= I(4) or I(5) or i(6) or I(7);

end Behavioral;