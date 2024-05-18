library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder2 is
    Port ( A, B, Cin : in  STD_LOGIC;
           Sum, Cout : out  STD_LOGIC);
end fulladder2;

architecture Behavioral of fulladder2 is
begin
    process(A, B, Cin)
    begin
        Sum <= A xor B xor Cin;
        Cout <= (A and B) or (B and Cin) or (Cin and A);
    end process;
end Behavioral;