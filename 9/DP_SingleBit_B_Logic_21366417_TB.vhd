----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 15:49:36
-- Design Name: 
-- Module Name: DP_SingleBit_B_Logic_21366417_TB - Behavioral
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

entity DP_SingleBit_B_Logic_21366417_TB is
--  Port ( );
end DP_SingleBit_B_Logic_21366417_TB;

architecture Behavioral of DP_SingleBit_B_Logic_21366417_TB is

    COMPONENT DP_SingleBit_B_Logic_21366417
      Port 
       ( S0 : in STD_LOGIC;
         S1 : in STD_LOGIC;
         B : in STD_LOGIC;
       
       Y : out STD_LOGIC
       );
    END COMPONENT;

    --inpuit
    
    signal S0 : std_logic;
    signal S1 : std_logic;
    signal B : std_logic;
    --output
    signal Y : std_logic;
    
begin

        -- Instantiate the Unit Under Test (UUT)
   uut: DP_SingleBit_B_Logic_21366417 PORT MAP (
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
    B <= '1';  
    wait for 10 ns;
    B <= '0';
    
    --B: keep as B
    wait for 10 ns;
    S0 <= '1';
    S1 <= '0';
    B <= '1';
    wait for 10 ns;
    B <= '0';
    
    --C: inverse of B
    wait for 10 ns;
    S0 <= '0';
    S1 <= '1';
    B <= '1';
    wait for 10 ns;
    B <= '0';
    
    --D: make 1
    wait for 10 ns;
    S0 <= '1';
    S1 <= '1';
    B <= '1';
    wait for 10 ns;
    B <= '0';
    
   end process;		

end Behavioral;
