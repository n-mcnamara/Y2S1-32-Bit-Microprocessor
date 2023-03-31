----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/23/2022 05:28:05 PM
-- Design Name: 
-- Module Name: RF_TempDestReg_Decoder_21366417_TB - Behavioral
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

entity RF_TempDestReg_Decoder_21366417_TB is
--  Port ( );
end RF_TempDestReg_Decoder_21366417_TB;

architecture Behavioral of RF_TempDestReg_Decoder_21366417_TB is

component RF_TempDestReg_Decoder_21366417
   PORT(
       A0 : IN  std_logic_vector(3 downto 0);
       Q : out std_logic_vector(15 downto 0)
        );
end component;

  --input  
    
     signal A0 : std_logic_vector(3 downto 0) := (others => '0');
     
  --outputs
     
     signal Q : std_logic_vector(15 downto 0) := (others => '0');
begin

 -- Instantiate the Unit Under Test (UUT)
   uut: RF_TempDestReg_Decoder_21366417 PORT MAP (
          A0 => A0,
          Q => Q
        );

        stim_proc: process
        
         begin
       --A  : select first bit of 16 bit output to be 1
          wait for 10 ns;	
      A0 <= "0000";
        --B : select second bit of 16 bit output to be 1
      wait for 10 ns;	
		A0 <= "0001";
        --C : select third bit of 16 bit output to be 1
      wait for 10 ns;	
		A0 <= "0010";
		--D
		wait for 10 ns;	
      A0 <= "0011";
        --E
      wait for 10 ns;	
		A0 <= "0100";
        --F
      wait for 10 ns;	
		A0 <= "0101";
		--G
		wait for 10 ns;	
      A0 <= "0110";

      wait for 10 ns;	
		A0 <= "0111";

      wait for 10 ns;	
		A0 <= "1000";
		
		wait for 10 ns;	
      A0 <= "1001";

      wait for 10 ns;	
		A0 <= "1010";

      wait for 10 ns;	
		A0 <= "1011";
		
		wait for 10 ns;	
      A0 <= "1100";

      wait for 10 ns;	
		A0 <= "1101";

      wait for 10 ns;	
		A0 <= "1110";
		
		wait for 10 ns;	
      A0 <= "1111";
     
      end process;
      
end Behavioral;
