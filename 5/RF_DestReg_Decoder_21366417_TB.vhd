----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2022 07:12:47 PM
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_21366417_TB - Behavioral
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

entity RF_DestReg_Decoder_21366417_TB is
--  Port ( );
end RF_DestReg_Decoder_21366417_TB;

architecture Behavioral of RF_DestReg_Decoder_21366417_TB is

COMPONENT RF_DestReg_Decoder_21366417
    PORT(
         A0 : IN  std_logic_vector(4 downto 0);
         Q : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;

    --input  
    
     signal A0 : std_logic_vector(4 downto 0) := (others => '0');
     
     --outputs
     
     signal Q : std_logic_vector(31 downto 0) := (others => '0');
   


begin

 -- Instantiate the Unit Under Test (UUT)
   uut: RF_DestReg_Decoder_21366417 PORT MAP (
          A0 => A0,
          Q => Q

        );
        
        stim_proc: process
        
        begin
        
        --A : select first bit of 32 bit output to be 1
          wait for 10 ns;	
      A0 <= "00000";
        --B : select second bit of 32 bit output to be 1
      wait for 10 ns;	
		A0 <= "00001";
        --C : select third bit of 32 bit output to be 1
      wait for 10 ns;	
		A0 <= "00010";
		--D : select fourth bit of 32 bit output to be 1
		wait for 10 ns;	
      A0 <= "00011";
        --E : select fifth bit of 32 bit output to be 1
      wait for 10 ns;	
		A0 <= "00100";

      wait for 10 ns;	
		A0 <= "00101";
		
		wait for 10 ns;	
      A0 <= "00110";

      wait for 10 ns;	
		A0 <= "00111";

      wait for 10 ns;	
		A0 <= "01000";
		
		wait for 10 ns;	
      A0 <= "01001";

      wait for 10 ns;	
		A0 <= "01010";

      wait for 10 ns;	
		A0 <= "01011";
		
		wait for 10 ns;	
      A0 <= "01100";

      wait for 10 ns;	
		A0 <= "01101";

      wait for 10 ns;	
		A0 <= "01110";
		
		wait for 10 ns;	
      A0 <= "01111";
      
      
      
      wait for 10 ns;	
      A0 <= "10000";

      wait for 10 ns;	
		A0 <= "10001";

      wait for 10 ns;	
		A0 <= "10010";
		
		wait for 10 ns;	
      A0 <= "10011";

      wait for 10 ns;	
		A0 <= "10100";

      wait for 10 ns;	
		A0 <= "10101";
		
		wait for 10 ns;	
      A0 <= "10110";

      wait for 10 ns;	
		A0 <= "10111";

      wait for 10 ns;	
		A0 <= "11000";
		
		wait for 10 ns;	
      A0 <= "11001";

      wait for 10 ns;	
		A0 <= "11010";

      wait for 10 ns;	
		A0 <= "11011";
		
		wait for 10 ns;	
      A0 <= "11100";

      wait for 10 ns;	
		A0 <= "11101";

      wait for 10 ns;	
		A0 <= "11110";
		
		wait for 10 ns;	
      A0 <= "11111";
        
        
        end process;

end Behavioral;
