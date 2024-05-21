library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux1to8_2 is
    Port ( I : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end demux1to8_2;

architecture Behavioral of demux1to8_2 is

begin

Y(0) <= not(S(2)) and not(S(1)) and not(S(0)) and I;
Y(1) <= not(S(2)) and not(S(1)) and S(0) and I;
Y(2) <= not(S(2)) and S(1) and not(S(0)) and I;
Y(3) <= not(S(2)) and S(1) and S(0) and I;
Y(4) <= S(2) and not(S(1)) and not(S(0)) and I;
Y(5) <= S(2) and not(S(1)) and S(0) and I;
Y(6) <= S(2) and S(1) and not(S(0)) and I;
Y(7) <= S(2) and S(1) and S(0) and I;

end Behavioral;