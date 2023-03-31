----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 22:56:48
-- Design Name: 
-- Module Name: DP_ZeroDetection_21366417_TB - Behavioral
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

entity DP_ZeroDetection_21366417_TB is
--  Port ( );
end DP_ZeroDetection_21366417_TB;

architecture Behavioral of DP_ZeroDetection_21366417_TB is

    COMPONENT DP_ZeroDetection_21366417
    Port (MuxF_to_F : in  STD_LOGIC_VECTOR (31 downto 0);
           Z : out std_logic);
    END COMPONENT;
    
    --input
    signal MuxF_to_F : STD_LOGIC_VECTOR (31 downto 0);
    
    --output
    signal Z : std_logic;

begin

     -- Instantiate the Unit Under Test (UUT)
   uut: DP_ZeroDetection_21366417 PORT MAP (
            MuxF_to_F => MuxF_to_F,
            Z => Z
        );

   stim_proc: process
   begin
   
   wait for 10 ns;
   MuxF_to_F <= "00000001010001100000011010010001";
   
   wait for 10 ns;
   MuxF_to_F <= "00000000000000000000000000000000";
   
   end process;
end Behavioral;
