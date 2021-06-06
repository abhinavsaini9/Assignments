-- Code your testbench here
-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

Entity my_testbench is 

end entity;

architecture my_simple_testbench of my_testbench IS
component my_dff
PORT ( din, clk, set, reset: in std_logic;
	dout: out std_logic;
    );
END component;
signal din, dout, clk, set, reset: std_logic :='0';

BEGIN
	blk_dff: my_dff PORT MAP (din, clk, set, reset, dout);
    
    reset <= '1' AFTER 12 NS, '0' AFTER 21 NS;
    set <= '1' AFTER 8 NS, '0' AFTER 10 NS;
	clk <= NOT clk AFTER 5 NS WHEN NOW<=50 NS ELSE '0';
    
    PROCESS BEGIN
    wait for 2 ns; din <= '1';
    wait for 2 ns; din <='0';
	
    END PROCESS;
END ARCHITECTURE;