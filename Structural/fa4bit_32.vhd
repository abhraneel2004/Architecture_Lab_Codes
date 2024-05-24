library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fa4bit_32 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end fa4bit_32;

architecture Behavioral of fa4bit_32 is
	component fa is
    Port ( E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           Gin : in  STD_LOGIC;
           H : out  STD_LOGIC;
           Gout : out  STD_LOGIC);
	end component;
	signal ca: STD_LOGIC_VECTOR (2 downto 0);
begin

j0: fa port map(A(0), B(0), Cin, S(0), ca(0));
j1: fa port map(A(1), B(1), ca(0), S(1), ca(1));
j2: fa port map(A(2), B(2), ca(1), S(2), ca(2));
j3: fa port map(A(3), B(3), ca(2), S(3), Cout);


end Behavioral;