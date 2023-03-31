----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 17:03:30
-- Design Name: 
-- Module Name: DP_SingleBit_LogicCircuit_21366417 - Behavioral
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

entity DP_SingleBit_LogicCircuit_21366417 is
         Port 
       ( S : in STD_LOGIC_VECTOR (1 downto 0);
   
         A : in STD_LOGIC;
         B : in STD_LOGIC;
       
         Y : out STD_LOGIC
       );
end DP_SingleBit_LogicCircuit_21366417;

architecture Behavioral of DP_SingleBit_LogicCircuit_21366417 is

    signal andOne: std_logic;
    signal orTwo: std_logic;
    signal xorThree: std_logic;
    signal notFour: std_logic;
begin

    andOne <= A and B after 5 ns;
    orTwo <= A or B after 5 ns;
    xorThree <= A xor B after 5 ns;
    notFour <= not(A) after 5 ns;
    
  process (S,A,B)
		begin
		
	    case s is
			when "00" => Y <= andOne;
			when "01" => Y <= orTwo;
			when "10" => Y <= xorThree;
            when "11" => Y <= notFour;
            
			when others => Y <= andOne;
		end case;
	
	end process;


end Behavioral;
