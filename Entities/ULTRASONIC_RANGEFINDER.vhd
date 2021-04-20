library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity USRF is
  port (
    clock_50  : in std_logic;
    echo      : in std_logic;
    q_trigger : out std_logic;
    q_mm      : out std_logic_vector(3 downto 0);
    q_cm      : out std_logic_vector(3 downto 0);
    q_dm      : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of USRF is
  constant trigger_delay : integer := 10; -- delay between receiving the echo signal and sending the trigger signal (in us)
  constant trigger_time  : integer := 5; -- duration of the trigger pulse (in us)

  signal icnt_mm : std_logic_vector (3 downto 0) := x"0";
  signal icnt_cm : std_logic_vector (3 downto 0) := x"0";
  signal icnt_dm : std_logic_vector (3 downto 0) := x"0";
  signal nanos   : integer                       := 0;
  signal micros  : integer                       := 0;
begin
  micros <= nanos/1000;

  q_trigger <= '1' when micros >= trigger_delay and micros < (trigger_delay + trigger_time) else '0';

  process (clock_50, echo)
  begin
    if clock_50'event and clock_50 = '1' then
      if echo = '1' then
        if micros >= trigger_delay then
          q_mm <= icnt_mm;
          q_cm <= icnt_cm;
          q_dm <= icnt_dm;
        end if;
        nanos   <= 0;
        icnt_mm <= x"0";
        icnt_cm <= x"0";
        icnt_dm <= x"0";
      else
        if micros >= trigger_delay then
          if (nanos mod 580) = 0 then
            if icnt_mm = x"9" then
              icnt_mm <= x"0";
              if icnt_cm = x"9" then
                icnt_cm <= x"0";
                if icnt_dm = x"9" then
                  icnt_dm <= x"0";
                else
                  icnt_dm <= icnt_dm + 1;
                end if;
              else
                icnt_cm <= icnt_cm + 1;
              end if;
            else
              icnt_mm <= icnt_mm + 1;
            end if;
          end if;
        end if;
        nanos <= nanos + 1;
      end if;
    end if;

  end process;
end architecture;