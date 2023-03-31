----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 20:12:23
-- Design Name: 
-- Module Name: DP_ShifterCFlagMux2_1Bit_21366417 - Behavioral
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

entity DP_ShifterCFlagMux2_1Bit_21366417 is

     Port (s : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           
           z : out STD_LOGIC);

end DP_ShifterCFlagMux2_1Bit_21366417;

architecture Behavioral of DP_ShifterCFlagMux2_1Bit_21366417 is

begin 

    process (s,in1,in2)
		begin
		case s is
			when '0' => z <= in1;
			when '1' => z <= in2;

			when others => z <= in1;
		end case;
	end process;


end Behavioral;
