library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux8to1_22 is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end mux8to1_22;

architecture Behavioral of mux8to1_22 is

    component mux4to1test1
        Port ( D : in  STD_LOGIC_VECTOR (3 downto 0);
               E : in  STD_LOGIC_VECTOR (1 downto 0);
               F : out  STD_LOGIC);
    end component;
    
    component mux2to1test1 is
        Port ( G : in  STD_LOGIC_VECTOR (1 downto 0);
               H : in  STD_LOGIC;
               J : out  STD_LOGIC);
    end component;
    
    signal sig : STD_LOGIC_VECTOR (1 downto 0);

begin

    m1: mux4to1test1 port map( D => I(3 downto 0), E => S(1 downto 0), F => sig(0));
    m2: mux4to1test1 port map( D => I(7 downto 4), E => S(1 downto 0), F => sig(1) );
    m3: mux2to1test1 port map( G => sig, H => S(2), J => Y );

end Behavioral;