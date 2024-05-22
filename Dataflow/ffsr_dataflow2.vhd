library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ffsr_dataflow2 is
    Port ( s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qb : inout  STD_LOGIC);
end ffsr_dataflow2;

architecture dataflow of ffsr_dataflow2 is

signal s1, r1 : STD_LOGIC;
begin
	s1 <= s nand clk;
	r1 <= r nand clk;
	
	q <= s1 nand qb;
	qb <= r1 nand q;

end dataflow;