----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2022 06:30:10 PM
-- Design Name: 
-- Module Name: RF_Mux32_32Bit_21366417 - Behavioral
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
use work.d.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

 

entity RF_Mux32_32Bit_21366417 is
--  Port ( );

          Port( 
          s : in STD_LOGIC_VECTOR (4 downto 0);
          inp : in array32x32; 
       
          z : out STD_LOGIC_VECTOR (31 downto 0)
          );


end RF_Mux32_32Bit_21366417;

architecture Behavioral of RF_Mux32_32Bit_21366417 is

begin

    process ( s,inp)
		begin
		case s is
			when "00000" => z <= inp(0);
			when "00001" => z <= inp(1);
			when "00010" => z <= inp(2);
			when "00011" => z <= inp(3);
			when "00100" => z <= inp(4);
			when "00101" => z <= inp(5);
			when "00110" => z <= inp(6);
			when "00111" => z <= inp(7);
			when "01000" => z <= inp(8);
			when "01001" => z <= inp(9);
			when "01010" => z <= inp(10);
			when "01011" => z <= inp(11);
			when "01100" => z <= inp(12);
			when "01101" => z <= inp(13);
			when "01110" => z <= inp(14);
			when "01111" => z <= inp(15);
			when "10000" => z <= inp(16);
			when "10001" => z <= inp(17);
			when "10010" => z <= inp(18);
			when "10011" => z <= inp(19);
			when "10100" => z <= inp(20);
			when "10101" => z <= inp(21);
			when "10110" => z <= inp(22);
			when "10111" => z <= inp(23);
			when "11000" => z <= inp(24);
			when "11001" => z <= inp(25);
			when "11010" => z <= inp(26);
			when "11011" => z <= inp(27);
			when "11100" => z <= inp(28);
			when "11101" => z <= inp(29);
			when "11110" => z <= inp(30);
			when "11111" => z <= inp(31);
 
			when others => z <= inp(0);
		end case;
	end process;

end Behavioral;
