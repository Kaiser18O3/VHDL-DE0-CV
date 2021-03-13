LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SEVENSEGDEC IS
	PORT (bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			balken : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
			);
END SEVENSEGDEC;


ARCHITECTURE rtl OF 	SEVENSEGDEC IS BEGIN
	PROCESS (bcd) BEGIN
		CASE bcd IS
			WHEN "0000" => balken <= "1000000"; --0
			WHEN "0001" => balken <= "1111001"; --1
			WHEN "0010" => balken <= "0100100"; --2
			WHEN "0011" => balken <= "0110000"; --3
			WHEN "0100" => balken <= "0011001"; --4
			WHEN "0101" => balken <= "0010010"; --5
			WHEN "0110" => balken <= "0000010"; --6
			WHEN "0111" => balken <= "1111000"; --7
			WHEN "1000" => balken <= "0000000"; --8
			WHEN "1001" => balken <= "0010000"; --9
			WHEN "1010" => balken <= "0001000"; --A
			WHEN "1011" => balken <= "0000011"; --b
			WHEN "1100" => balken <= "1000110"; --C
			WHEN "1101" => balken <= "0100001"; --d
			WHEN "1110" => balken <= "0000110"; --E
			WHEN "1111" => balken <= "0001110"; --F
			WHEN OTHERS => balken <= "1111111"; --NULL
		END CASE;
	END PROCESS;
END rtl;