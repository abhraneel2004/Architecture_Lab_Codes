library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8to1_2 is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end mux8to1_2;

architecture Behavioral of mux8to1_2 is

begin
Y <= (NOT S(2) AND NOT S(1) AND NOT S(0) AND I(0)) OR (NOT S(2) AND NOT S(1) AND S(0) AND I(1)) OR (NOT S(2) AND S(1) AND NOT S(0) AND I(2)) OR (NOT S(2) AND S(1) AND S(0) AND I(3)) OR (S(2) AND NOT S(1) AND NOT S(0) AND I(4)) OR (S(2) AND NOT S(1) AND S(0) AND I(5)) OR (S(2) AND S(1) AND NOT S(0) AND I(6)) OR (S(2) AND S(1) AND S(0) AND I(7)); 
end Behavioral;