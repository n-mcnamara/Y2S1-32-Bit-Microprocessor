----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 21:52:06
-- Design Name: 
-- Module Name: DP_FullAdder_21366417 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_FullAdder_21366417 is
        Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_IN : in STD_LOGIC;
           SUM : out STD_LOGIC;
           C_OUT : out STD_LOGIC);
           
end DP_FullAdder_21366417;

architecture Behavioral of DP_FullAdder_21366417 is

    Signal S_XOR1_to_XOR2, S_AND1_OR, S_AND2_OR : STD_LOGIC;

begin

    S_XOR1_to_XOR2 <= A XOR B after 4ns;
    S_AND1_OR <= A AND B after 3ns;
    S_AND2_OR <= S_XOR1_to_XOR2 AND C_IN after 3ns;

    SUM <= S_XOR1_to_XOR2 XOR C_IN after 4ns;
    C_OUT <= S_AND1_OR OR S_AND2_OR after 2ns;

end Behavioral;
