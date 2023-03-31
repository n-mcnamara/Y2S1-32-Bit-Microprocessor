----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 10:08:56
-- Design Name: 
-- Module Name: CPU_Mux2_32Bit_21366417 - Behavioral
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

entity CPU_Mux2_32Bit_21366417 is
         Port( s : in  STD_LOGIC;
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
   
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end CPU_Mux2_32Bit_21366417;

architecture Behavioral of CPU_Mux2_32Bit_21366417 is

begin

     process ( s,in1,in2)
		begin
		case s is
		
			when '0' => z <= in1;
			when '1' => z <= in2;

			when others => z <= "00000000000000000000000000000000";
		end case;
	end process;

end Behavioral;
