library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity DEBOUNCER is
  port (
    clk           : in std_logic;
    bounced_in    : in std_logic;
    debounced_out : out std_logic
  );
end DEBOUNCER;
architecture logic of DEBOUNCER is
  signal bounced_ff     : std_logic;
  signal bounced        : std_logic;
  signal lock_cnt       : std_logic_vector (19 downto 0);
  signal idebounced_out : std_logic;

begin
  process (clk, bounced_in)
  begin
    if clk'EVENT and clk = '1' then
      bounced_ff <= bounced_in;
    end if;
  end process;

  bounced <= bounced_ff xor bounced_in;

  process (clk, bounced) -- 26.11.2020
  begin
    if bounced = '1' then
      lock_cnt <= x"00000";
    elsif clk'EVENT and clk = '1' then
      if lock_cnt = x"FFFFF" then
        lock_cnt <= x"F0000";
      else
        lock_cnt <= lock_cnt + 1;
      end if;
      if lock_cnt = x"01FFF" then
        idebounced_out <= bounced_in;
      end if;
    end if;
  end process;

  debounced_out <= idebounced_out;

end logic;