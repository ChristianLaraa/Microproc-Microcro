library ieee;
			use ieee.std_logic_1164.all;
			use ieee.std_logic_arith.all;
			use ieee.std_logic_unsigned.all;
entity P4_ChristianLara is port(
			clk: in std_logic;
			Q: inout std_logic_vector(3 downto 0));
end P4_ChristianLara;

architecture arqeont of P4_ChristianLara is
begin 
			process(clk)
			begin 
						if(clk'event and clk ='1')then
									Q <= Q+1;
					 end if;
				end process;
		end arqeont;