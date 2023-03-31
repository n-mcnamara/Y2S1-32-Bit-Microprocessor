----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 20:12:38
-- Design Name: 
-- Module Name: DP_ShifterCFlagMux2_1Bit_21366417_TB - Behavioral
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

entity DP_ShifterCFlagMux2_1Bit_21366417_TB is
--  Port ( );
end DP_ShifterCFlagMux2_1Bit_21366417_TB;

architecture Behavioral of DP_ShifterCFlagMux2_1Bit_21366417_TB is

    COMPONENT DP_ShifterCFlagMux2_1Bit_21366417 
         Port (s : in STD_LOGIC;
           in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           
           z : out STD_LOGIC);
    END COMPONENT;
    
     --Inputs
   signal s : std_logic;
   signal in1 : std_logic;
   signal in2 : std_logic;
   
 	--Outputs
   signal z : std_logic;

begin

    -- Instantiate the Unit Under Test (UUT)
   uut: DP_ShifterCFlagMux2_1Bit_21366417  PORT MAP (
          s => s,
          in1 => in1,
          in2 => in2,
    
          z => z
        );

   stim_proc: process
   begin		
   
      wait for 10 ns;	
        in1 <= '0';
		in2 <= '1';
	
      wait for 10 ns;	
      s <= '0';

      wait for 10 ns;	
		s <= '1';
     
 --     wait;
   end process;

end Behavioral;
