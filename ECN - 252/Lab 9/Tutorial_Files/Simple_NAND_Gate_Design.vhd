-- Code your design here
-- Simple NAND gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity my_nand_gate is
port(
  a: in std_logic;
  b: in std_logic;
  y: out std_logic);
end my_nand_gate;

architecture structural of my_nand_gate is
begin
    y <= NOT (a AND b);
end structural;
