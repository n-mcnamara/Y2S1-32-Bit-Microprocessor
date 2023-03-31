----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 17:28:37
-- Design Name: 
-- Module Name: DP_SingleBit_LogicCircuit_21366417_TB - Behavioral
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

entity DP_SingleBit_LogicCircuit_21366417_TB is
--  Port ( );
end DP_SingleBit_LogicCircuit_21366417_TB;

architecture Behavioral of DP_SingleBit_LogicCircuit_21366417_TB is

    COMPONENT DP_SingleBit_LogicCircuit_21366417
        Port 
       ( S : in STD_LOGIC_VECTOR (1 downto 0);
   
         A : in STD_LOGIC;
         B : in STD_LOGIC;
       
         Y : out STD_LOGIC
       );
    END COMPONENT;

    --input
    signal S : STD_LOGIC_VECTOR (1 downto 0);
    signal A : std_logic;
    signal B : std_logic;
    --output
    signal Y : std_logic;
begin

       -- Instantiate the Unit Under Test (UUT)
   uut: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S => S,
          A => A,
          B => B,
          Y => Y
        );
        
        stim_proc: process
        begin
         
        A <= '0';
        B <= '1';  
        wait for 10 ns;
        --A: and
        S <= "00";
        
        wait for 10 ns;
        --B: or
        S <= "01";
        
        wait for 10 ns;
        --C: xor
        S <= "10";
        
        wait for 10 ns;
        --D: not
        S <= "11";
        
          A <= '1';
        B <= '1'; 
         wait for 10 ns;
        --A: and
       
        S <= "00";
        
        wait for 10 ns;
        --B: or
        S <= "01";
        
        wait for 10 ns;
        --C: xor
        S <= "10";
        
        wait for 10 ns;
        --D: not
        S <= "11";
   
         
        end process;
    
end Behavioral;
