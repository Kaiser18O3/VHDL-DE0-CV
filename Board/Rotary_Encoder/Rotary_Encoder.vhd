library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Rotary_Encoder is
  port (
    clock_50 : in std_logic;
    GPIO_0   : inout std_logic_vector(35 downto 0);
    LEDR     : out std_logic_vector(9 downto 0);
    HEX0     : out std_logic_vector(6 downto 0);
    HEX1     : out std_logic_vector(6 downto 0);
    SW       : in std_logic_vector(0 downto 0)
  );
end entity;

architecture rtl of Rotary_Encoder is
  signal e      : std_logic_vector(3 downto 0);
  signal z      : std_logic_vector(3 downto 0);
  signal h      : std_logic_vector(3 downto 0);
  signal clk    : std_logic;
  signal clk_db : std_logic;

begin

  GPIO_0(34) <= GPIO_0(0);
  GPIO_0(35) <= GPIO_0(1);
  GPIO_0(32) <= GPIO_0(2);

  clk <= GPIO_0(0) when SW(0) = '1' else clk_db;

  DEBOUNCER : entity WORK.DEBOUNCER
    port map(
      clk           => clock_50,
      bounced_in    => GPIO_0(0),
      debounced_out => clk_db
    );

  COUNTER : entity WORK.BCDCOUNTER
    port map(
      clk    => clk,
      updown => GPIO_0(1),
      enable => '1',
      reset  => '0',
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

end architecture;