----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 19:47:37
-- Design Name: 
-- Module Name: DP_Mux3_1Bit_21366417 - Behavioral
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

entity DP_Mux3_1Bit_21366417 is

        Port ( s : in  STD_LOGIC_VECTOR (1 downto 0);
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           in3 : in  STD_LOGIC;
   
           z : out STD_LOGIC);
           
end DP_Mux3_1Bit_21366417;

architecture Behavioral of DP_Mux3_1Bit_21366417 is

begin

 process ( s,in1,in2,in3)
		begin
		case s is
			when "00" => z <= in1;
			when "01" => z <= in2;
			when "10" => z <= in3;
 
			when others => z <= in1;
		end case;
	end process;

end Behavioral;
