----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2022 06:37:53 PM
-- Design Name: 
-- Module Name: RF_Mux32_32Bit_21366417_TB - Behavioral
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

entity RF_Mux32_32Bit_21366417_TB is
--  Port ( );
end RF_Mux32_32Bit_21366417_TB;

architecture Behavioral of RF_Mux32_32Bit_21366417_TB is

COMPONENT RF_Mux32_32Bit_21366417
    PORT(
         s : IN  std_logic_vector(4 downto 0);
         inp : IN  array32x32;
        
         z : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;

     --Inputs
   signal s : std_logic_vector(4 downto 0) := (others => '0');
   signal inp : array32x32;

 	--Outputs
   signal z : std_logic_vector(31 downto 0);

begin

 -- Instantiate the Unit Under Test (UUT)
   uut: RF_Mux32_32Bit_21366417 PORT MAP (
          s => s,
          inp => inp,
          z => z
        );

   stim_proc: process
   
   begin		
        inp(0) <= "00000001010001100000011010010001";
		inp(1) <= "00000001010001100000011010010010";
		inp(2) <= "00000001010001100000011010010011";
		inp(3) <= "00000001010001100000011010010100";
		inp(4) <= "00000001010001100000011010010101";
		inp(5) <= "00000001010001100000011010010110";
		inp(6) <= "00000001010001100000011010010111";
		inp(7) <= "00000001010001100000011010011000";
		inp(8) <= "00000001010001100000011010011001";
		inp(9) <= "00000001010001100000011010011010";
		inp(10) <= "00000001010001100000011010011011";
		inp(11) <= "00000001010001100000011010011100";
		inp(12) <= "00000001010001100000011010011101";
		inp(13) <= "00000001010001100000011010011110";
		inp(14) <= "00000001010001100000011010011111";
		inp(15) <= "00000001010001100000011010100000";
		
		inp(16) <= "00000001010001100000011010100001";
		inp(17) <= "00000001010001100000011010100010";
		inp(18) <= "00000001010001100000011010100011";
		inp(19) <= "00000001010001100000011010100100";
		inp(20) <= "00000001010001100000011010100101";
		inp(21) <= "00000001010001100000011010100110";
		inp(22) <= "00000001010001100000011010100111";
		inp(23) <= "00000001010001100000011010101000";
		inp(24) <= "00000001010001100000011010101001";
		inp(25) <= "00000001010001100000011010101010";
		inp(26) <= "00000001010001100000011010101011";
		inp(27) <= "00000001010001100000011010101100";
		inp(28) <= "00000001010001100000011010101101";
		inp(29) <= "00000001010001100000011010101110";
		inp(30) <= "00000001010001100000011010101111";
		inp(31) <= "00000001010001100000011010110000";
		
	   --A: : select first vector
      wait for 10 ns;	
      s <= "00000";
        --B : select second
      wait for 10 ns;	
		s <= "00001";
        --C : select third
      wait for 10 ns;	
		s <= "00010";
		--D
		wait for 10 ns;	
      s <= "00011";
        --E
      wait for 10 ns;	
		s <= "00100";
        --F
      wait for 10 ns;	
		s <= "00101";
		--G
		wait for 10 ns;	
      s <= "00110";
        --H
      wait for 10 ns;	
		s <= "00111";
        --I
      wait for 10 ns;	
		s <= "01000";
		--J
		wait for 10 ns;	
      s <= "01001";
        --K
      wait for 10 ns;	
		s <= "01010";
        --L
      wait for 10 ns;	
		s <= "01011";
		--M
		wait for 10 ns;	
      s <= "01100";
        --N
      wait for 10 ns;	
		s <= "01101";
        --O
      wait for 10 ns;	
		s <= "01110";
		--P
		wait for 10 ns;	
      s <= "01111";
        --Q
      
      
      wait for 10 ns;	
      s <= "10000";

      wait for 10 ns;	
		s <= "10001";

      wait for 10 ns;	
		s <= "10010";
		
		wait for 10 ns;	
      s <= "10011";

      wait for 10 ns;	
		s <= "10100";

      wait for 10 ns;	
		s <= "10101";
		
		wait for 10 ns;	
      s <= "10110";

      wait for 10 ns;	
		s <= "10111";

      wait for 10 ns;	
		s <= "11000";
		
		wait for 10 ns;	
      s <= "11001";

      wait for 10 ns;	
		s <= "11010";

      wait for 10 ns;	
		s <= "11011";
		
		wait for 10 ns;	
      s <= "11100";

      wait for 10 ns;	
		s <= "11101";

      wait for 10 ns;	
		s <= "11110";
		
		wait for 10 ns;	
      s <= "11111";

     
 --     wait;
   end process;


end Behavioral;
