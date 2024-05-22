library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity deco3to8_2 is
    Port ( I : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end deco3to8_2;

architecture Behavioral of deco3to8_2 is

begin
Y(0) <= not I(0) and not I(1) and not I(2);
Y(1) <= I(0) and not I(1) and not I(2);
Y(2) <= not I(0) and I(1) and not I(2);
Y(3) <= I(0) and I(1) and not I(2);
Y(4) <= not I(0) and not I(1) and I(2);
Y(5) <= I(0) and not I(1) and I(2);
Y(6) <= not I(0) and I(1) and I(2);
Y(7) <= I(0) and I(1) and I(2);
end Behavioral;