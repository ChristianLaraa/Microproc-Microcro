library ieee;
			use ieee.std_logic_1164.all;
			use ieee.std_logic_arith.all;
			use ieee.std_logic_unsigned.all;
entity P4_ChristianLara is port(
			clk: in std_logic;
			up: in std_logic;
			RESET: in std_logic;
			Q: inout std_logic_vector(3 downto 0));
end P4_ChristianLara;

architecture arqeont of P4_ChristianLara is
begin 
			process(up, clk, RESET)
			begin 
			if(RESET='1')then
							Q <= "0000";
							elsif(clk'event and clk='1') then
									if(up='0') then
										Q <= Q+1;
										else
											Q <= Q-1;
											end if;
					 end if;
				end process;
		end arqeont;