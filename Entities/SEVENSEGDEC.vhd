library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SEVENSEGDEC is
  port (
    bcd    : in std_logic_vector(3 downto 0);
    balken : out std_logic_vector(6 downto 0)
  );
end SEVENSEGDEC;
architecture rtl of SEVENSEGDEC is begin
  process (bcd) begin
    case bcd is
      when "0000" => balken <= "1000000"; --0
      when "0001" => balken <= "1111001"; --1
      when "0010" => balken <= "0100100"; --2
      when "0011" => balken <= "0110000"; --3
      when "0100" => balken <= "0011001"; --4
      when "0101" => balken <= "0010010"; --5
      when "0110" => balken <= "0000010"; --6
      when "0111" => balken <= "1111000"; --7
      when "1000" => balken <= "0000000"; --8
      when "1001" => balken <= "0010000"; --9
      when "1010" => balken <= "0001000"; --A
      when "1011" => balken <= "0000011"; --b
      when "1100" => balken <= "1000110"; --C
      when "1101" => balken <= "0100001"; --d
      when "1110" => balken <= "0000110"; --E
      when "1111" => balken <= "0001110"; --F
      when others => balken <= "1111111"; --NULL
    end case;
  end process;
end rtl;