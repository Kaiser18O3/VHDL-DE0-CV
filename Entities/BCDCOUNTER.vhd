library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BCDCOUNTER is
  port (
    clk    : in std_logic;
    updown : in std_logic;
    enable : in std_logic;
    reset  : in std_logic;
    q_e    : out std_logic_vector(3 downto 0);
    q_z    : out std_logic_vector(3 downto 0);
    q_h    : out std_logic_vector(3 downto 0)
  );
end BCDCOUNTER;

architecture rtl of BCDCOUNTER is
  signal icnt_e : std_logic_vector (3 downto 0);
  signal icnt_z : std_logic_vector (3 downto 0);
  signal icnt_h : std_logic_vector (3 downto 0);

begin
  process (clk, updown, reset)
  begin
    if reset = '1' then
      icnt_e <= x"0";
      icnt_z <= x"0";
      icnt_h <= x"0";
    else
      if clk 'event and clk = '1' then
        if enable = '1' then
          if updown = '1' then
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
          else
            if icnt_e = x"0" then
              icnt_e <= x"9";
              if icnt_Z = x"0" then
                icnt_z <= x"9";
                if icnt_h = x"0" then
                  icnt_h <= x"9";
                else
                  icnt_h <= icnt_h - 1;
                end if;
              else
                icnt_z <= icnt_z - 1;
              end if;
            else
              icnt_e <= icnt_e - 1;
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

  q_e <= icnt_e;
  q_z <= icnt_z;
  q_h <= icnt_h;
end rtl;