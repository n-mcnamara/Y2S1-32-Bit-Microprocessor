----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/23/2022 05:27:23 PM
-- Design Name: 
-- Module Name: RF_TempDestReg_Decoder_21366417 - Behavioral
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

entity RF_TempDestReg_Decoder_21366417 is
--  Port ( );
Port ( A0 : in STD_LOGIC_VECTOR (3 downto 0);
       Q : out std_logic_vector(15 downto 0)
);

end RF_TempDestReg_Decoder_21366417;

architecture Behavioral of RF_TempDestReg_Decoder_21366417 is

begin

Q(0) <= ((not A0(3)) and (not A0(2)) and (not A0(1)) and (not A0(0))) after 5 ns;
Q(1) <= ((not A0(3)) and (not A0(2)) and (not A0(1)) and A0(0)) after 5 ns;
Q(2) <= ((not A0(3)) and (not A0(2)) and A0(1) and (not A0(0))) after 5 ns;
Q(3) <= ((not A0(3)) and (not A0(2)) and A0(1) and A0(0)) after 5 ns;
Q(4) <= ((not A0(3)) and A0(2) and (not A0(1)) and (not A0(0))) after 5 ns;
Q(5) <= ((not A0(3)) and A0(2) and (not A0(1)) and A0(0)) after 5 ns;
Q(6) <= ((not A0(3)) and A0(2) and A0(1) and (not A0(0))) after 5 ns;
Q(7) <= ((not A0(3)) and A0(2) and A0(1) and A0(0)) after 5 ns;
Q(8) <= (A0(3) and (not A0(2)) and (not A0(1)) and (not A0(0))) after 5 ns;
Q(9) <= (A0(3) and (not A0(2)) and (not A0(1)) and A0(0)) after 5 ns;
Q(10) <= (A0(3) and (not A0(2)) and A0(1) and (not A0(0))) after 5 ns;
Q(11) <= (A0(3) and (not A0(2)) and A0(1) and A0(0)) after 5 ns;
Q(12) <= (A0(3) and A0(2) and (not A0(1)) and (not A0(0))) after 5 ns;
Q(13) <= (A0(3) and A0(2) and (not A0(1)) and A0(0)) after 5 ns;
Q(14) <= (A0(3) and A0(2) and A0(1) and (not A0(0))) after 5 ns;
Q(15) <= (A0(3) and A0(2) and A0(1) and A0(0)) after 5 ns;

end Behavioral;
