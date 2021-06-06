-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY my_tb IS
END my_tb;

ARCHITECTURE my_tb_arch OF my_tb IS

	COMPONENT my_nand_gate IS
		PORT ( a,b : IN STD_LOGIC;
		y : OUT STD_LOGIC
        );
	END COMPONENT;
    
	SIGNAL a_in, b_in ,y_out : STD_LOGIC;  
    
	BEGIN
    	my_nand_instance: my_nand_gate PORT MAP(a_in,b_in,y_out);
        
        PROCESS BEGIN
        	WAIT FOR 5 NS; a_in<='0'; b_in<='0';
            WAIT FOR 5 NS; a_in<='1'; b_in<='0';
            WAIT FOR 5 NS; a_in<='0'; b_in<='1';
            WAIT FOR 5 NS; a_in<='1'; b_in<='1';
            WAIT FOR 5 NS; a_in<='0'; b_in<='0';
       	END PROCESS;
        
END ARCHITECTURE my_tb_arch;