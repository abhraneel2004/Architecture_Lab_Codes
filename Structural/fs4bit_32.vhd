library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity fs4bit_32 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (3 downto 0);
           Bout : out  STD_LOGIC);
end fs4bit_32;

architecture Behavioral of fs4bit_32 is
	component fs is
    Port ( E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           Gin : in  STD_LOGIC;
           K : out  STD_LOGIC;
           Gout : out  STD_LOGIC);
	end component;
	
	signal ba: STD_LOGIC_VECTOR (2 downto 0);
	
begin

s0: fs port map(A(0), B(0), Bin, D(0), ba(0));
s1: fs port map(A(1), B(1), ba(0), D(1), ba(1));
s2: fs port map(A(2), B(2), ba(1), D(2), ba(2));
s3: fs port map(A(3), B(3), ba(2), D(3), Bout);


end Behavioral;