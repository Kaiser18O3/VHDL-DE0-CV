library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ULTRASONIC_RANGEFINDER is
  port (
    clk     : in std_logic;
    echo    : in std_logic;
    trigger : out std_logic;
    q_e     : out std_logic_vector(3 downto 0);
    q_z     : out std_logic_vector(3 downto 0);
    q_h     : out std_logic_vector(3 downto 0);

  );
end entity;

architecture rtl of ULTRASONIC_RANGEFINDER is
  signal i_trigger      : std_logic                     := '0';
  signal enable_trigger : std_logic                     := '1';
  signal icnt_e         : std_logic_vector (3 downto 0) := x"0";
  signal icnt_z         : std_logic_vector (3 downto 0) := x"0";
  signal icnt_h         : std_logic_vector (3 downto 0) := x"0";
  signal iticks         : std_logic_vector (7 downto 0);

begin
  i_trigger <= '1' when iticks >= x"02" and iticks < x"06" else '0';

  process (clk, i_trigger, echo)
  begin
    if clk 'event and clk = '1' then
      iticks <= iticks + 1;
      if i_trigger = '1' and iticks = x"02" then
        icnt_e <= x"0";
        icnt_z <= x"0";
        icnt_h <= x"0";
      elsif echo = '1'then
        q_e    <= icnt_e;
        q_z    <= icnt_z;
        q_h    <= icnt_h;
        iticks <= x"00";
      else
        if icnt_e = x"9" then
          icnt_e <= x"0";
          if icnt_Z = x"9" then
            icnt_z <= x"0";
            if icnt_h = x"9" then
              icnt_h <= x"0";
            else
              icnt_h <= icnt_h + 1;
            end if;
          else
            icnt_z <= icnt_z + 1;
          end if;
        else
          icnt_e <= icnt_e + 1;
        end if;
      end if;
    end if;

  end process;
  trigger <= i_trigger;
end architecture;