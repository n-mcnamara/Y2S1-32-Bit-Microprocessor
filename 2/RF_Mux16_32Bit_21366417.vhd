----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2022 05:54:30 PM
-- Design Name: 
-- Module Name: RF_Mux16_32Bit_21366417 - Behavioral
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

entity RF_Mux16_32Bit_21366417 is
--  Port ( );
          Port ( s : in  STD_LOGIC_VECTOR (3 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           in3 : in  STD_LOGIC_VECTOR (31 downto 0);
           in4 : in  STD_LOGIC_VECTOR (31 downto 0);
           in5 : in  STD_LOGIC_VECTOR (31 downto 0);
           in6 : in  STD_LOGIC_VECTOR (31 downto 0);
           in7 : in  STD_LOGIC_VECTOR (31 downto 0);
           in8 : in  STD_LOGIC_VECTOR (31 downto 0);
           in9 : in  STD_LOGIC_VECTOR (31 downto 0);
           in10 : in  STD_LOGIC_VECTOR (31 downto 0);
           in11 : in  STD_LOGIC_VECTOR (31 downto 0);
           in12 : in  STD_LOGIC_VECTOR (31 downto 0);
           in13 : in  STD_LOGIC_VECTOR (31 downto 0);
           in14 : in  STD_LOGIC_VECTOR (31 downto 0);
           in15 : in  STD_LOGIC_VECTOR (31 downto 0);
           in16 : in  STD_LOGIC_VECTOR (31 downto 0);
         
   
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end RF_Mux16_32Bit_21366417;

architecture Behavioral of RF_Mux16_32Bit_21366417 is

begin

     process ( s,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16)
		begin
		case  s is
			when "0000" => z <= in1;
			when "0001" => z <= in2;
			when "0010" => z <= in3;
			when "0011" => z <= in4;
			when "0100" => z <= in5;
			when "0101" => z <= in6;
			when "0110" => z <= in7;
			when "0111" => z <= in8;
			when "1000" => z <= in9;
			when "1001" => z <= in10;
			when "1010" => z <= in11;
			when "1011" => z <= in12;
			when "1100" => z <= in13;
			when "1101" => z <= in14;
			when "1110" => z <= in15;
			when "1111" => z <= in16;
 
			when others => z <= in1;
		end case;
	end process;

end Behavioral;
