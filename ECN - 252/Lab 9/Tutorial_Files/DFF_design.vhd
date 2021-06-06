-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity my_dff is
port(din, clk, set, reset: in std_logic;
	dout: out std_logic;
    );
end entity my_dff;

architecture my_dff_behav of my_dff is
begin
process(clk, set, reset)
begin
if(set='1') then
dout<='1';

elsif(reset='1') then
dout<='0';
elsif(rising_edge(clk)) then
dout<=din;
else
NULL;
end if;
end process;
end architecture my_dff_behav;