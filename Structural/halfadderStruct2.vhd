library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity halfadderStruct2 is
    Port ( A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end halfadderStruct2;

architecture Behavioral of halfadderStruct2 is
	component andgate50
		Port (a: in STD_LOGIC;
				b: in STD_LOGIC;
				y: out STD_LOGIC);
	end component;
	
	component xorgate50
		Port (a: in STD_LOGIC;
				b: in STD_LOGIC;
				y: out STD_LOGIC);
	end component;
begin

f1: andgate50 Port map(A1, B1, Carry);
f2: xorgate50 Port map(A1, B1, Sum);

end Behavioral;