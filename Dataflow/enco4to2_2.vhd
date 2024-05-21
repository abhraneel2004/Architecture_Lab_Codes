library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity enco4to2_2 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end enco4to2_2;

architecture Behavioral of enco4to2_2 is

begin

Y(0) <= I(1) or I(3);
Y(1) <= I(2) or I(3);

end Behavioral;