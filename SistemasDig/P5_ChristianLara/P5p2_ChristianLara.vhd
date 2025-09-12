library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_unsigned.all;

entity P5p2_ChristianLara is port (
clk: in std_logic;
up: in std_logic;
Yout : out std_logic_vector(6 downto 0));
end P5p2_ChristianLara;

architecture arqcont of P5p2_ChristianLara is
signal Q: std_logic_vector(3 downto 0);
begin
process (up,clk)
begin
If (clk'event and clk = '1') then
If (up='0') then

Q <= Q + 1;
else
Q <= Q - 1;

end if;
end if;
end process ;
process (Q) begin
case Q is
-- dcba abcdefg
				when "0000" => Yout <= "0000001";
				when "0001" => Yout <= "1001111";
				when "0010" => Yout <= "0010010";
				when "0011" => Yout <= "0000110";
				when "0100" => Yout <= "1001100";
				when "0101" => Yout <= "0100100";
				when "0110" => Yout <= "0100000";
				when "0111" => Yout <= "0001111";
				when "1000" => Yout <= "0000000";
				when "1001" => Yout <= "0000100";
				when others => Yout <= "1111111";
end case;
end process;
end arqcont;