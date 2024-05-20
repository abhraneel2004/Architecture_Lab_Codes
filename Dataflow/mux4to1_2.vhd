library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity mux4to1_2 is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end mux4to1_2;

architecture Behavioral of mux4to1_2 is

begin

Y <= (NOT(S(1)) AND NOT(S(0)) AND I(0)) OR (NOT(S(1)) AND S(0) AND I(1)) OR (S(1) AND NOT(S(0)) AND I(2)) OR (S(1) AND S(0) AND I(3));

end Behavioral;