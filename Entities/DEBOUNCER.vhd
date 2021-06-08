LIBRARY IEEE;
	USE IEEE.STD_LOGIC_1164.ALL;
	USE IEEE.NUMERIC_STD.ALL;
	USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY DEBOUNCER IS
	PORT	(	clk								: IN STD_LOGIC;
					bounced_in				: IN STD_LOGIC;
					debounced_out			: OUT STD_LOGIC
				);
END DEBOUNCER;


ARCHITECTURE logic OF DEBOUNCER IS
	SIGNAL bounced_ff					: STD_LOGIC;
	SIGNAL bounced						: STD_LOGIC;
	SIGNAL lock_cnt						: STD_LOGIC_VECTOR (19 DOWNTO 0);
	SIGNAL idebounced_out			: STD_LOGIC;

BEGIN
	PROCESS (clk, bounced_in)
	BEGIN
		IF clk'EVENT AND clk= '1' THEN
			bounced_ff <= bounced_in;
		END IF;
	END PROCESS;

	bounced <= bounced_ff XOR bounced_in; 

	PROCESS (clk, bounced)																-- 26.11.2020
	BEGIN
		IF bounced = '1' THEN
			lock_cnt <= x"00000";
		ELSIF clk'EVENT AND clk = '1' THEN
			IF lock_cnt = x"FFFFF" THEN
				lock_cnt <= x"F0000";
			ELSE
				lock_cnt <= lock_cnt + 1;
			END IF;
			IF lock_cnt = x"01FFF" THEN
				idebounced_out <= bounced_in;
			END IF;
		END IF;
	END PROCESS;

	debounced_out <= idebounced_out;

END logic;
