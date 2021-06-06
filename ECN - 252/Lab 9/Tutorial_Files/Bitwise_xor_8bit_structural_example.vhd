-- Code your design here
-- NAND Gate Definition
library IEEE;
use IEEE.std_logic_1164.all;

entity my_nand_gate is
Port (a,b: in std_logic;
		y: out std_logic;
        );
end entity;

architecture my_nand_gate_behav of my_nand_gate is
begin
	y <= not (a and b);
end architecture;


-- AND Gate Definition
library IEEE;
use IEEE.std_logic_1164.all;
entity my_and_gate is
Port (a,b: in std_logic;
		y: out std_logic;
        );
end entity;

architecture my_and_gate_behav of my_and_gate is
begin
	y <= (a and b);
end architecture;

--OR Gate Definition
library IEEE;
use IEEE.std_logic_1164.all;
entity my_or_gate is
Port (a,b: in std_logic;
		y: out std_logic;
        );
end entity;

architecture my_or_gate_behav of my_or_gate is
begin
	y <= (a or b);
end architecture;

-- XOR Gate Structural Definition using AND NAND and OR gates

library IEEE;
use IEEE.std_logic_1164.all;
entity my_xor_gate is
Port (a,b: in std_logic;
		y: out std_logic;
        );
end entity;

architecture my_xor_gate_behav of my_xor_gate is
component my_and_gate PORT (a,b: in std_logic; y: out std_logic); END COMPONENT;
component my_nand_gate PORT (a,b: in std_logic; y: out std_logic); END COMPONENT;
component my_or_gate PORT (a,b: in std_logic; y: out std_logic); END COMPONENT;
signal temp1, temp2: std_logic;

begin
	dev1:my_nand_gate PORT MAP (a,b,temp1);
    dev2:my_or_gate PORT MAP (a,b,temp2);
    dev3: my_and_gate PORT MAP (temp1, temp2, y);
end architecture;


-- XOR Gate bit wise - 8 bit

library IEEE;
use IEEE.std_logic_1164.all;
entity my_xor8bit is
Port (a,b: in std_logic_vector(7 downto 0);
		y: out std_logic_vector(7 downto 0);
        );
end entity;

architecture my_xor8bit_behav of my_xor8bit is

component my_xor_gate PORT(a,b: in std_logic; y: out std_logic); END component; 

begin
	dev0:my_xor_gate PORT MAP (a(0), b(0), y(0));
    dev1:my_xor_gate PORT MAP (a(1), b(1), y(1));
    dev2:my_xor_gate PORT MAP (a(2), b(2), y(2));
    dev3:my_xor_gate PORT MAP (a(3), b(3), y(3));
    dev4:my_xor_gate PORT MAP (a(4), b(4), y(4));
    dev5:my_xor_gate PORT MAP (a(5), b(5), y(5));
    dev6:my_xor_gate PORT MAP (a(6), b(6), y(6));
    dev7:my_xor_gate PORT MAP (a(7), b(7), y(7));
    
    --alternative approach with for/generate statement
    --group_dev_xor: for index in 0 to 7 generate
    --begin
    --device_xor: component my_xor_gate PORT MAP (a(index), b(index), y(index));
    --end generate group_dev_xor;
    
    
end architecture;



-- XOR Gate bit wise - 8 bit - simple

library IEEE;
use IEEE.std_logic_1164.all;
entity my_xor8bitexpr is
Port (a,b: in std_logic_vector(7 downto 0);
		y: out std_logic_vector(7 downto 0);
        );
end entity;

architecture my_xor8bitexpr_behav of my_xor8bitexpr is

begin
	y <= a xor b;
end architecture;

