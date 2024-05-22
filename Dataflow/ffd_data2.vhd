library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ffd_data2 is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qb : inout  STD_LOGIC);
end ffd_data2;

architecture Behavioral of ffd_data2 is
signal d1, d2 : STD_LOGIC;
begin

d1 <= D nand clk;
d2 <= (not D) nand clk;
q  <= d1 nand qb;
qb <= d2 nand q;

end Behavioral;