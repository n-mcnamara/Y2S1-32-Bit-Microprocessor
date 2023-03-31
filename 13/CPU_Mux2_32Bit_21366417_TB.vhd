----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 10:18:30
-- Design Name: 
-- Module Name: CPU_Mux2_32Bit_21366417_TB - Behavioral
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


entity CPU_Mux2_32Bit_21366417_TB is
--  Port ( );
end CPU_Mux2_32Bit_21366417_TB;        

architecture Behavioral of CPU_Mux2_32Bit_21366417_TB is

        COMPONENT CPU_Mux2_32Bit_21366417
         Port( s : in  STD_LOGIC;
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
   
           z : out  STD_LOGIC_VECTOR (31 downto 0));
        END COMPONENT;
        
        --Inputs
   signal s : std_logic;
   signal in1 : std_logic_vector(31 downto 0) := (others => '0');
   signal in2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(31 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
   uut: CPU_Mux2_32Bit_21366417 PORT MAP (
          s => s,
          in1 => in1,
          in2 => in2,
          z => z
        );

   stim_proc: process
   begin		
        in1 <= "10101010101010101010101010101010";
		in2 <= "11001100110011001010101010101010";
	
	
      wait for 10 ns;	
      s <= '0';
      wait for 10 ns;	
      s <= '1';
      
      end process;

end Behavioral;
