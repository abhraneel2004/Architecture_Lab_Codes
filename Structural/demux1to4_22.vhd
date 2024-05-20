library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux4to1_22 is
    Port (
        I : in  STD_LOGIC;
        S : in  STD_LOGIC_VECTOR (1 downto 0);
        Y : out  STD_LOGIC_VECTOR (3 downto 0)
    );
end demux4to1_22;

architecture Behavioral of demux4to1_22 is

    component demux1to2test is
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            C : out  STD_LOGIC_VECTOR (1 downto 0)
        );
    end component;

    signal Y_intermediate : STD_LOGIC_VECTOR (1 downto 0);

begin

    -- First stage: splitting the input using the most significant bit of the select signal
    m1: demux1to2test port map(I, S(1), Y_intermediate);

    -- Second stage: further splitting the intermediate signals using the least significant bit of the select signal
    m2: demux1to2test port map(Y_intermediate(0), S(0), Y(1 downto 0));
    m3: demux1to2test port map(Y_intermediate(1), S(0), Y(3 downto 2));

end Behavioral;