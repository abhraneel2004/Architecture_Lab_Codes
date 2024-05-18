library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity halfsub2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end halfsub2;

architecture Behavioral of halfsub2 is

begin
D <= a xor b;
Bout <= not(a) and b;

end Behavioral;