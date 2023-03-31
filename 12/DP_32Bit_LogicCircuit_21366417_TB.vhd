----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 18:07:36
-- Design Name: 
-- Module Name: DP_32Bit_LogicCircuit_21366417_TB - Behavioral
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

entity DP_32Bit_LogicCircuit_21366417_TB is
--  Port ( );
end DP_32Bit_LogicCircuit_21366417_TB;

architecture Behavioral of DP_32Bit_LogicCircuit_21366417_TB is

    COMPONENT DP_32Bit_LogicCircuit_21366417
     Port 
       ( S0: in STD_LOGIC;
         S1: in STD_LOGIC;
   
         A : in STD_LOGIC_VECTOR(31 downto 0);
         B : in STD_LOGIC_VECTOR(31 downto 0);
       
         Y : out STD_LOGIC_VECTOR(31 downto 0)
       );
    END COMPONENT;
    
        --input
    signal S0 : std_logic;
    signal S1 : std_logic;
    signal A : std_logic_VECTOR(31 downto 0);
    signal B : std_logic_VECTOR(31 downto 0);
    --output
    signal Y : std_logic_VECTOR(31 downto 0);

begin

     -- Instantiate the Unit Under Test (UUT)
   uut: DP_32Bit_LogicCircuit_21366417 PORT MAP (
          S0 => S0,
          S1 => S1,
          A => A,
          B => B,
          Y => Y
        );


   stim_proc: process
   begin
   
    A <= "00000001010001100000011010010001";
    B <= "11111111111111111111111111111111";  
    wait for 10 ns;
    --A: and
    S0 <= '0';
    S1 <= '0';
    
    wait for 10 ns;
    --B: or
    S0 <= '1';
    S1 <= '0';
    
    wait for 10 ns;
    --C: xor
    S0 <= '0';
    S1 <= '1';
    
    wait for 10 ns;
    --D: not a
    S0 <= '1';
    S1 <= '1';
    
    
    
    wait for 30 ns;
    B <= "00000000000000000000000000011111";
    --A: and
    S0 <= '0';
    S1 <= '0';
    
    wait for 10 ns;
    --B: or
    S0 <= '1';
    S1 <= '0';
    
    wait for 10 ns;
    --C: xor
    S0 <= '0';
    S1 <= '1';
    
    wait for 10 ns;
    --D: not a
    S0 <= '1';
    S1 <= '1';
   
   end process;

end Behavioral;
