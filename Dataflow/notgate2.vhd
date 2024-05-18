library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity notgate2 is
    Port ( a : in  STD_LOGIC;
           y : out  STD_LOGIC);
end notgate2;

architecture Behavioral of notgate2 is

begin

y<= not a;

end Behavioral;