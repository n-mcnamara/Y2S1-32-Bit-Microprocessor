----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2022 06:58:53 PM
-- Design Name: 
-- Module Name: RF_Mux3_32Bit_21366417_TB - Behavioral
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

entity RF_Mux3_32Bit_21366417_TB is
--  Port ( );
end RF_Mux3_32Bit_21366417_TB;

architecture Behavioral of RF_Mux3_32Bit_21366417_TB is

    COMPONENT RF_Mux3_32Bit_21366417
    PORT(
         s : IN  std_logic_vector(1 downto 0);
         in1 : IN  std_logic_vector(31 downto 0);
         in2 : IN  std_logic_vector(31 downto 0);
         in3 : IN  std_logic_vector(31 downto 0);
     
         z : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal in1 : std_logic_vector(31 downto 0) := (others => '0');
   signal in2 : std_logic_vector(31 downto 0) := (others => '0');
   signal in3 : std_logic_vector(31 downto 0) := (others => '0');


 	--Outputs
   signal z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock
   
   -- below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
   uut: RF_Mux3_32Bit_21366417 PORT MAP (
          s => s,
          in1 => in1,
          in2 => in2,
          in3 => in3,

          z => z
        );

   stim_proc: process
   begin		
        in1 <= "10101010101010101010101010101010";
		in2 <= "11001100110011001010101010101010";
		in3 <= "11110000111100001010101010101010";
	
      wait for 10 ns;	
      s <= "00";

      wait for 10 ns;	
		s <= "01";

      wait for 10 ns;	
		s <= "10";

     
 --     wait;
   end process;

end Behavioral;
