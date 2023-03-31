----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2022 07:10:35 PM
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_21366417 - Behavioral
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

entity RF_DestReg_Decoder_21366417 is

Port ( A0 : in STD_LOGIC_VECTOR (4 downto 0);
       Q : out STD_LOGIC_VECTOR (31 downto 0)
);

end RF_DestReg_Decoder_21366417;

architecture Behavioral of RF_DestReg_Decoder_21366417 is

begin

process ( A0)
		begin
		
Q <= "00000000000000000000000000000000"; 


		case A0 is
			when "00000" => Q(0) <= '1';
			when "00001" => Q(1) <= '1';
			when "00010" => Q(2) <= '1';
			when "00011" => Q(3) <= '1';
			when "00100" => Q(4) <= '1';
			when "00101" => Q(5) <= '1';
			when "00110" => Q(6) <= '1';
			when "00111" => Q(7) <= '1';
			when "01000" => Q(8) <= '1';
			when "01001" => Q(9) <= '1';
			when "01010" => Q(10) <= '1';
			when "01011" => Q(11) <= '1';
			when "01100" => Q(12) <= '1';
			when "01101" => Q(13) <= '1';
			when "01110" => Q(14) <= '1';
			when "01111" => Q(15) <= '1';
			when "10000" => Q(16) <= '1';
			when "10001" => Q(17) <= '1';
			when "10010" => Q(18) <= '1';
			when "10011" => Q(19) <= '1';
			when "10100" => Q(20) <= '1';
			when "10101" => Q(21) <= '1';
			when "10110" => Q(22) <= '1';
			when "10111" => Q(23) <= '1';
			when "11000" => Q(24) <= '1';
			when "11001" => Q(25) <= '1';
			when "11010" => Q(26) <= '1';
			when "11011" => Q(27) <= '1';
			when "11100" => Q(28) <= '1';
			when "11101" => Q(29) <= '1';
			when "11110" => Q(30) <= '1';
			when "11111" => Q(31) <= '1';
 
			when others => Q(0) <= '1';
		end case;
	end process;


end Behavioral;
