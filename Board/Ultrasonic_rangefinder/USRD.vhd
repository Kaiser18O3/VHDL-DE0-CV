library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity USRD is
  port (
    clock_50 : in std_logic;
    echo     : in std_logic;
    GPIO_0   : inout std_logic_vector(35 downto 0);
    HEX0     : out std_logic_vector(6 downto 0);
    HEX1     : out std_logic_vector(6 downto 0);
    HEX2     : out std_logic_vector(6 downto 0)

  );
end entity;

architecture rtl of USRD is
  signal clock_ms : std_logic;
  signal teiler   : std_logic_vector (27 downto 0);
  signal e        : std_logic_vector(3 downto 0);
  signal z        : std_logic_vector(3 downto 0);
  signal h        : std_logic_vector(3 downto 0);
begin

  GPIO_0(34) <= GPIO_0(0);
  GPIO_0(35) <= GPIO_0(1);

  USR : entity WORK.ULTRASONIC_RANGEFINDER
    port map(
      clock_50  => clock_50,
      echo      => GPIO_0(0),
      q_trigger => GPIO_0(1),
      q_mm      => e,
      q_cm      => z,
      q_dm      => h
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

end architecture;