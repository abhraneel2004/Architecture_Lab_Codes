library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity deco2to4_2 is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end deco2to4_2;

architecture Behavioral of deco2to4_2 is

begin
Y(0) <= not I(1) and not I(0);
Y(1) <= not I(1) and I(0);
Y(2) <= I(1) and not I(0);
Y(3) <= I(1) and I(0);

end Behavioral;