----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 22:56:18
-- Design Name: 
-- Module Name: DP_ZeroDetection_21366417 - Behavioral
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

entity DP_ZeroDetection_21366417 is
     Port (MuxF_to_F : in  STD_LOGIC_VECTOR (31 downto 0);
          
           Z : out std_logic);
end DP_ZeroDetection_21366417;

architecture Behavioral of DP_ZeroDetection_21366417 is

begin

    process(MuxF_to_F)
    begin
        if MuxF_to_F = "00000000000000000000000000000000" then
         Z <= '1';
        else 
        Z <= '0';
        end if;
        --Z <= (MuxF_to_F(0) or MuxF_to_F(0)or MuxF_to_F(0)
    end process;
end Behavioral;
