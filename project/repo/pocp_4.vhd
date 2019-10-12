----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:56:03 09/16/2019 
-- Design Name: 
-- Module Name:    pocp_4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;architecture Behavioral of pocp_4 is

entity pocp_4 is
    Port ( A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
			  S  : in  STD_LOGIC;
           Z1 : out STD_LOGIC;
			  Z2 : out STD_LOGIC);
end pocp_4;

architecture Behavioral of pocp_4 is

begin
Z1 <= A1 when S = '0' else A2;
Z2 <= B1 when S = '0' else B2;

end Behavioral;

