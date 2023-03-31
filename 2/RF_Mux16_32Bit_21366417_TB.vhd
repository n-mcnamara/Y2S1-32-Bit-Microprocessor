----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2022 05:55:31 PM
-- Design Name: 
-- Module Name: RF_Mux16_32Bit_21366417_TB - Behavioral
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

entity RF_Mux16_32Bit_21366417_TB is
--  Port ( );
end RF_Mux16_32Bit_21366417_TB;

architecture Behavioral of RF_Mux16_32Bit_21366417_TB is

-- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF_Mux16_32Bit_21366417
    PORT(
         s : IN  std_logic_vector(3 downto 0);
         in1 : IN  std_logic_vector(31 downto 0);
         in2 : IN  std_logic_vector(31 downto 0);
         in3 : IN  std_logic_vector(31 downto 0);
         in4 : IN  std_logic_vector(31 downto 0);
         in5 : IN  std_logic_vector(31 downto 0);
         in6 : IN  std_logic_vector(31 downto 0);
         in7 : IN  std_logic_vector(31 downto 0);
         in8 : IN  std_logic_vector(31 downto 0);
         in9 : IN  std_logic_vector(31 downto 0);
         in10 : IN  std_logic_vector(31 downto 0);
         in11 : IN  std_logic_vector(31 downto 0);
         in12 : IN  std_logic_vector(31 downto 0);
         in13 : IN  std_logic_vector(31 downto 0);
         in14 : IN  std_logic_vector(31 downto 0);
         in15 : IN  std_logic_vector(31 downto 0);
         in16 : IN  std_logic_vector(31 downto 0);
        
         z : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic_vector(3 downto 0) := (others => '0');
   signal in1 : std_logic_vector(31 downto 0) := (others => '0');
   signal in2 : std_logic_vector(31 downto 0) := (others => '0');
   signal in3 : std_logic_vector(31 downto 0) := (others => '0');
   signal in4 : std_logic_vector(31 downto 0) := (others => '0');
   signal in5 : std_logic_vector(31 downto 0) := (others => '0');
   signal in6 : std_logic_vector(31 downto 0) := (others => '0');
   signal in7 : std_logic_vector(31 downto 0) := (others => '0');
   signal in8 : std_logic_vector(31 downto 0) := (others => '0');
   signal in9 : std_logic_vector(31 downto 0) := (others => '0');
   signal in10 : std_logic_vector(31 downto 0) := (others => '0');
   signal in11 : std_logic_vector(31 downto 0) := (others => '0');
   signal in12 : std_logic_vector(31 downto 0) := (others => '0');
   signal in13 : std_logic_vector(31 downto 0) := (others => '0');
   signal in14 : std_logic_vector(31 downto 0) := (others => '0');
   signal in15 : std_logic_vector(31 downto 0) := (others => '0');
   signal in16 : std_logic_vector(31 downto 0) := (others => '0');
   


 	--Outputs
   signal z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock
   
   -- below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
   uut: RF_Mux16_32Bit_21366417 PORT MAP (
          s => s,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          in5 => in5,
          in6 => in6,
          in7 => in7,
          in8 => in8,
          in9 => in9,
          in10 => in10,
          in11 => in11,
          in12 => in12,
          in13 => in13,
          in14 => in14,
          in15 => in15,
          in16 => in16,
       

          z => z
        );

   stim_proc: process
   
   begin		
        in1 <= "00000001010001100000011010010001";
		in2 <= "00000001010001100000011010010010";
		in3 <= "00000001010001100000011010010011";
		in4 <= "00000001010001100000011010010100";
		in5 <= "00000001010001100000011010010101";
		in6 <= "00000001010001100000011010010110";
		in7 <= "00000001010001100000011010010111";
		in8 <= "00000001010001100000011010011000";
		in9 <= "00000001010001100000011010011001";
		in10 <= "00000001010001100000011010011010";
		in11 <= "00000001010001100000011010011011";
		in12 <= "00000001010001100000011010011100";
		in13 <= "00000001010001100000011010011101";
		in14 <= "00000001010001100000011010011110";
		in15 <= "00000001010001100000011010011111";
		in16 <= "00000001010001100000011010100000";
		
	--A : select first vector
      wait for 10 ns;	
      s <= "0000";
     --B : select second
      wait for 10 ns;	
		s <= "0001";
    --C : select third
      wait for 10 ns;	
		s <= "0010";
	--D	
		wait for 10 ns;	
      s <= "0011";
    --E
      wait for 10 ns;	
		s <= "0100";
    --F
      wait for 10 ns;	
		s <= "0101";
	--G	
		wait for 10 ns;	
      s <= "0110";
    --H
      wait for 10 ns;	
		s <= "0111";
    --I
      wait for 10 ns;	
		s <= "1000";
	--J	
		wait for 10 ns;	
      s <= "1001";
    --K
      wait for 10 ns;	
		s <= "1010";
    --L
      wait for 10 ns;	
		s <= "1011";
	--M	
		wait for 10 ns;	
      s <= "1100";
    --N
      wait for 10 ns;	
		s <= "1101";
    --O
      wait for 10 ns;	
		s <= "1110";
	--P	
		wait for 10 ns;	
      s <= "1111";

     
 --     wait;
   end process;

end Behavioral;
