library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pocp_1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end OR-4;

architecture Behavioral of pocp_1 is

begin
Z <= A or B or C or D;
end Behavioral;

