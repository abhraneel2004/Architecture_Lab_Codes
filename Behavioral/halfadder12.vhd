library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity halfadder12 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end halfadder12;

architecture Behavioral of halfadder12 is

begin
	process (a,b)
	begin
	-- Sum calculation
        if (a = '0' and b = '0') or (a = '1' and b = '1') then
            sum <= '0';
        else
            sum <= '1';
        end if;
        
        -- Carry calculation
        if a = '1' and b = '1' then
            carry <= '1';
        else
            carry <= '0';
        end if;
    end process;

end Behavioral;