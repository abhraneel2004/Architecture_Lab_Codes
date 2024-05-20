library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity demux1to2_2 is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end demux1to2_2;

architecture Behavioral of demux1to2_2 is

begin

Y(0) <= I and not(S);
Y(1) <= I and S;

end Behavioral;
