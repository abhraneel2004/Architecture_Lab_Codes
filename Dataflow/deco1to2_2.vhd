library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity deco1to2_2 is
    Port ( I : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end deco1to2_2;

architecture Behavioral of deco1to2_2 is

begin

Y(0) <= not I;
Y(1) <= I;

end Behavioral;