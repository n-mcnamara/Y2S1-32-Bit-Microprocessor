----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 19:50:14
-- Design Name: 
-- Module Name: DP_Mux3_1Bit_21366417_TB - Behavioral
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

entity DP_Mux3_1Bit_21366417_TB is
--  Port ( );
end DP_Mux3_1Bit_21366417_TB;

architecture Behavioral of DP_Mux3_1Bit_21366417_TB is

    COMPONENT DP_Mux3_1Bit_21366417
       Port ( s : in  STD_LOGIC_VECTOR (1 downto 0);
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           in3 : in  STD_LOGIC;
   
           z : out STD_LOGIC); 
    END COMPONENT;
    
     --Inputs
   signal s : std_logic_vector(1 downto 0) := (others => '0');
   signal in1 : std_logic;
   signal in2 : std_logic;
   signal in3 : std_logic;

 	--Outputs
   signal z : std_logic;
  

begin

     -- Instantiate the Unit Under Test (UUT)
   uut: DP_Mux3_1Bit_21366417 PORT MAP (
          s => s,
          in1 => in1,
          in2 => in2,
          in3 => in3,

          z => z
        );

   stim_proc: process
   begin		
        in1 <= '1';
		in2 <= '0';
		in3 <= '1';
	
      wait for 10 ns;	
      s <= "00";

      wait for 10 ns;	
		s <= "01";

      wait for 10 ns;	
		s <= "10";

     
 --     wait;
   end process;

end Behavioral;
