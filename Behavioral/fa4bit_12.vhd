library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fa4bit_12 is
    Port ( 
        A     : in  STD_LOGIC_VECTOR (3 downto 0);
        B     : in  STD_LOGIC_VECTOR (3 downto 0);
        Cin   : in  STD_LOGIC;
        Sum   : out STD_LOGIC_VECTOR (3 downto 0);
        Cout  : out STD_LOGIC
    );
end fa4bit_12;

architecture Behavioral of fa4bit_12 is
begin
    process (A, B, Cin)
        variable ca: STD_LOGIC_VECTOR (2 downto 0);
    begin
        Sum(0) <= A(0) xor B(0) xor Cin;
        ca(0) := (A(0) and B(0)) or (A(0) and Cin) or (B(0) and Cin);
        
        Sum(1) <= A(1) xor B(1) xor ca(0);
        ca(1) := (A(1) and B(1)) or (A(1) and ca(0)) or (B(1) and ca(0));
        
        Sum(2) <= A(2) xor B(2) xor ca(1);
        ca(2) := (A(2) and B(2)) or (A(2) and ca(1)) or (B(2) and ca(1));
        
        Sum(3) <= A(3) xor B(3) xor ca(2);
        Cout <= (A(3) and B(3)) or (A(3) and ca(2)) or (B(3) and ca(2));
    end process;
end Behavioral;