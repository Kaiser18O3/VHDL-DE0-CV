library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ULTRASONIC_RANGEFINDER is
  port (
    clock_50  : in std_logic;
    echo      : in std_logic;
    q_trigger : out std_logic;
    q_mm      : out std_logic_vector(3 downto 0);
    q_cm      : out std_logic_vector(3 downto 0);
    q_dm      : out std_logic_vector(3 downto 0);
    q_m       : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of ULTRASONIC_RANGEFINDER is
  constant measurement_cycle : integer := 100000; -- time one measurement cycle takes (in us)
  constant trigger_time      : integer := 400; -- duration of the trigger pulse (in us)

  signal clk_mm      : std_logic := '0';
  signal cnt_divider : std_logic_vector (7 downto 0);

  signal icnt_mm : std_logic_vector (3 downto 0) := x"0";
  signal icnt_cm : std_logic_vector (3 downto 0) := x"0";
  signal icnt_dm : std_logic_vector (3 downto 0) := x"0";
  signal icnt_m  : std_logic_vector (3 downto 0) := x"0";

  signal nanos  : integer := 0;
  signal micros : integer := 0;
begin

  micros    <= nanos/1000;
  q_trigger <= '1' when micros < trigger_time else '0';

  process (clock_50)
  begin
    if clock_50'event and clock_50 = '1' then
      if micros >= measurement_cycle then
        nanos <= 0;
      else
        nanos <= nanos + 20;
      end if;
    end if;
  end process;

  divider : process (clock_50)
  begin
    if clock_50'event and clock_50 = '1' then
      if cnt_divider > X"91" then
        cnt_divider <= x"00";
        clk_mm      <= not clk_mm;
      else
        cnt_divider <= cnt_divider + 1;
      end if;
    end if;
  end process;

  counter : process (clk_mm, echo)
  begin

    if echo'event and echo = '0' then
      q_mm <= icnt_mm;
      q_cm <= icnt_cm;
      q_dm <= icnt_dm;
      q_m  <= icnt_m;
    end if;

    if clk_mm 'event and clk_mm = '1' then
      if echo = '1' then
        if icnt_mm = x"9" then
          icnt_mm <= x"0";
          if icnt_cm = x"9" then
            icnt_cm <= x"0";
            if icnt_dm = x"9" then
              icnt_dm <= x"0";
              if icnt_m = x"9" then
                icnt_m <= x"0";
              else
                icnt_m <= icnt_m + 1;
              end if;
            else
              icnt_dm <= icnt_dm + 1;
            end if;
          else
            icnt_cm <= icnt_cm + 1;
          end if;
        else
          icnt_mm <= icnt_mm + 1;
        end if;
      else
        icnt_mm <= x"0";
        icnt_cm <= x"0";
        icnt_dm <= x"0";
        icnt_m  <= x"0";
      end if;
    end if;
  end process;
end architecture;