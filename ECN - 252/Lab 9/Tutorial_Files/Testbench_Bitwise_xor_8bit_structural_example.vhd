
-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

Entity my_testbench is 

end entity;

architecture my_simple_testbench of my_testbench IS
component my_xor8bit
PORT ( a,b: in std_logic_vector(7 downto 0);
	y: out std_logic_vector(7 down to 0);
    );
END component;
component my_xor8bitexpr
PORT ( a,b: in std_logic_vector(7 downto 0);
	y: out std_logic_vector(7 down to 0);
    );
END component;
signal a,b,y_myNAND, y_lib_NAND :std_logic_vector(7 downto 0);

BEGIN
	DUT_XOR8bit: my_xor8bit PORT MAP (a,b,y_myNAND);
    DUT_XOR8bit_expr: my_xor8bitexpr PORT MAP (a,b,y_lib_NAND);
    PROCESS BEGIN
    WAIT FOR 5 NS; a <= "00001111"; b<="00110011";
    WAIT FOR 5 NS; a<="00000000"; b<="00110011";
    END PROCESS;
   
   END ARCHITECTURE;
   

