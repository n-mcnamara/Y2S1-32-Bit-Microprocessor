----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 16:44:55
-- Design Name: 
-- Module Name: DP_32Bit_B_Logic_21366417_TB - Behavioral
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

entity DP_32Bit_B_Logic_21366417_TB is
--  Port ( );
end DP_32Bit_B_Logic_21366417_TB; 

architecture Behavioral of DP_32Bit_B_Logic_21366417_TB is

    COMPONENT DP_32Bit_B_Logic_21366417
      Port 
       ( S0 : in STD_LOGIC;
         S1 : in STD_LOGIC;
         B : in STD_LOGIC_VECTOR(31 downto 0);
       
       Y : out STD_LOGIC_VECTOR(31 downto 0)
       );
    END COMPONENT;

    --input
    signal S0 : std_logic;
    signal S1 : std_logic;
    signal B : std_logic_VECTOR(31 downto 0);
    --output
    signal Y : std_logic_VECTOR(31 downto 0);
begin

       -- Instantiate the Unit Under Test (UUT)
   uut: DP_32Bit_B_Logic_21366417 PORT MAP (
          S0 => S0,
          S1 => S1,
          B => B,
          Y => Y
        );


   stim_proc: process
   begin
   
    wait for 10 ns;
    --A: make 0
    S0 <= '0';
    S1 <= '0';
    B <= "00000001010001100000011010010001";  
    
    --B: keep as B
    wait for 10 ns;
    S0 <= '1';
    S1 <= '0';
    B <= "00000001010001100000011010010001";
    
    --C: not B
    wait for 10 ns;
    S0 <= '0';
    S1 <= '1';
    B <= "00000001010001100000011010010001";
    
    --B: make 1
    wait for 10 ns;
    S0 <= '1';
    S1 <= '1';
    B <= "00000001010001100000011010010001";

   end process;
end Behavioral;
