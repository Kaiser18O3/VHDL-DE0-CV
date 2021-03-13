library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BCD_zaehler is
  port (
    clock_50 : in std_logic;
    HEX0     : out std_logic_vector(6 downto 0);
    HEX1     : out std_logic_vector(6 downto 0);
    HEX2     : out std_logic_vector(6 downto 0);
    SW       : in std_logic_vector (9 downto 0);
    LEDR     : out std_logic_vector (9 downto 0)
  );
end entity;

architecture rtl of BCD_zaehler is
  signal enable : std_logic;
  signal teiler : std_logic_vector (27 downto 0);
  signal e      : std_logic_vector(3 downto 0);
  signal z      : std_logic_vector(3 downto 0);
  signal h      : std_logic_vector(3 downto 0);
begin

  process (clock_50)
  begin
    if clock_50 'event and clock_50 = '1' then
      if teiler = x"04C4B3F" then --x"2FAF07F"
        teiler <= x"0000000";
        enable <= '1';
      else
        teiler <= teiler + 1;
        enable <= '0';
      end if;
    end if;
  end process;

  BCD : entity WORK.BCDCOUNTER
    port map(
      clk    => clock_50,
      updown => SW(0),
      enable => enable,
      q_e    => e,
      q_z    => z,
      q_h    => h
    );
  Anzeige_1 : entity WORK.SEVENSEGDEC
    port map(
      bcd    => e,
      balken => HEX0
    );

  Anzeige_2 : entity WORK.SEVENSEGDEC
    port map(
      bcd    => z,
      balken => HEX1
    );

  Anzeige_3 : entity WORK.SEVENSEGDEC
    port map(
      bcd    => h,
      balken => HEX2
    );
end rtl;