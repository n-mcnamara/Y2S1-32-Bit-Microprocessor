----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 15:49:12
-- Design Name: 
-- Module Name: DP_SingleBit_B_Logic_21366417 - Behavioral
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

entity DP_SingleBit_B_Logic_21366417 is
       Port 
       ( S0 : in STD_LOGIC;
         S1 : in STD_LOGIC;
         B : in STD_LOGIC;
       
       Y : out STD_LOGIC
       );
end DP_SingleBit_B_Logic_21366417;

architecture Behavioral of DP_SingleBit_B_Logic_21366417 is

begin

 process ( S0,S1,B)
		begin
		
		Y <= (S0 AND B) or (S1 AND not(B));
		
	end process;
	

end Behavioral;
