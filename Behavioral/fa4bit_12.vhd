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
		
		-- For 1st bit
		if((A(0)='0' and B(0)='0' and Cin='0') or (A(0)='0' and B(0)='1' and Cin='1') or (A(0)='1' and B(0)='0' and Cin='1') or (A(0)='1' and B(0)='1' and Cin='0')) then
			Sum(0) <= '0';
		else
			Sum(0) <= '1';
		
		end if;
		
		if ((A(0)='1' and B(0)='1') or (A(0)='1' and Cin='1') or (B(0)='1' and Cin='1')) then
			ca(0):= '1';
		else
			ca(0):='0';
		end if;
		
		-- For 2nd bit
		if((A(1)='0' and B(1)='0' and ca(0)='0') or (A(1)='0' and B(1)='1' and ca(0)='1') or (A(1)='1' and B(1)='0' and ca(0)='1') or (A(1)='1' and B(1)='1' and ca(0)='0')) then
			Sum(1) <= '0';
		else
			Sum(1) <= '1';
		
		end if;
		
		if ((A(1)='1' and B(1)='1') or (A(1)='1' and ca(0)='1') or (B(1)='1' and ca(0)='1')) then
			ca(1):= '1';
		else
			ca(1):='0';
		end if;
		
		-- For 3rd bit
		if((A(2)='0' and B(2)='0' and ca(1)='0') or (A(2)='0' and B(2)='1' and ca(1)='1') or (A(2)='1' and B(2)='0' and ca(1)='1') or (A(2)='1' and B(2)='1' and ca(1)='0')) then
			Sum(2) <= '0';
		else
			Sum(2) <= '1';
		
		end if;
		
		if ((A(2)='1' and B(2)='1') or (A(2)='1' and ca(1)='1') or (B(2)='1' and ca(1)='1')) then
			ca(2):= '1';
		else
			ca(2):='0';
		end if;
		
		-- For 4th bit
		if((A(3)='0' and B(3)='0' and ca(2)='0') or (A(3)='0' and B(3)='1' and ca(2)='1') or (A(3)='1' and B(3)='0' and ca(2)='1') or (A(3)='1' and B(3)='1' and ca(2)='0')) then
			Sum(3) <= '0';
		else
			Sum(3) <= '1';
		
		end if;
		
		if ((A(3)='1' and B(3)='1') or (A(3)='1' and ca(2)='1') or (B(3)='1' and ca(2)='1')) then
			Cout <= '1';
		else
			Cout <= '0';
		end if;
		
   end process;
end Behavioral;