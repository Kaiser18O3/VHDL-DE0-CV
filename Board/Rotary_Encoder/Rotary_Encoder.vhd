library ieee;
--use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;   
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Needed for shifts

entity Rotary_Encoder is
  port (
    clock_50 : in std_logic;
    GPIO_0   : inout std_logic_vector(35 downto 0);
    LEDR     : out std_logic_vector(9 downto 0);
    HEX0     : out std_logic_vector(6 downto 0);
    HEX1     : out std_logic_vector(6 downto 0);
	 SW :in std_logic_vector(7 downto 0)
  );
end entity;

architecture rtl of Rotary_Encoder is
  signal e    : std_logic_vector(3 downto 0);
  signal z    : std_logic_vector(3 downto 0);
  signal h    : std_logic_vector(3 downto 0);
  signal clk  : std_logic;
   signal clk1  : std_logic;
  signal clk2 : std_logic;
  signal Input_Delay : unsigned(1024 downto 0);

begin

  GPIO_0(34) <= GPIO_0(0);
  GPIO_0(35) <= GPIO_0(1);
  GPIO_0(32) <= GPIO_0(2);
  
  clk <= clk1 when SW(0) = '1' else clk2;

  debouncer1 : process (clock_50)
  begin
    if rising_edge(clock_50) then
      -- Create a delayed version of signal Input
      Input_Delay    <= shift_left(Input_Delay, 1);
      Input_Delay(0) <= not GPIO_0(0);
    end if;

    if Input_Delay > x"0" then
      clk1 <= '1';
    elsif Input_Delay = x"0" then
      clk1 <= '0';
    end if;
  end process;

  debouncer2 : entity WORK.DEBOUNCER
    port map(
      clk           => clock_50,
      bounced_in    => GPIO_0(0),
      debounced_out => clk2
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