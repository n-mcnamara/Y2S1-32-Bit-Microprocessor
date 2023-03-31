----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 11:45:20
-- Design Name: 
-- Module Name: DP_ArithmeticLogicUnit_21366417_TB - Behavioral
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

entity DP_ArithmeticLogicUnit_21366417_TB is
--  Port ( );
end DP_ArithmeticLogicUnit_21366417_TB;

architecture Behavioral of DP_ArithmeticLogicUnit_21366417_TB is

    COMPONENT DP_ArithmeticLogicUnit_21366417
    Port(C_IN : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
   
           C : out STD_LOGIC;
           V : out STD_LOGIC;
           G : out STD_LOGIC_VECTOR (31 downto 0)
           );
    END COMPONENT;
    
    --input
    
    signal C_IN_TB : std_logic;
    signal A_TB : std_logic_vector(31 downto 0);
    signal B_TB : std_logic_vector(31 downto 0);
    signal S0_TB : std_logic;
    signal S1_TB : std_logic;
    signal S2_TB : std_logic;
    
    --output
    signal C_TB : std_logic;
    signal V_TB : std_logic;
    signal G_TB : std_logic_vector(31 downto 0);

begin

    uut: DP_ArithmeticLogicUnit_21366417 port map (
         C_IN => C_IN_TB,
         A => A_TB,
         B => B_TB,
         S0 => S0_TB,
         S1 => S1_TB,
         S2 => S2_TB,
         
         C => C_TB,
         V => V_TB,
         G => G_TB
         );
         
    stim_proc: process
        
        begin
        
        wait for 40 ns;
        --setup
        C_IN_TB <= '1';
        A_TB <= "00000000000000000000000000001011";
        B_TB <= "00000000000000000000000000001011";
        -- 0000
        --A: test adder 1 (A + B + Carry)
        wait for 175 ns;     
        S0_TB <= '1';
        S1_TB <= '0';
        S2_TB <= '0';
        
        --B: test adder 2 ( A + 11111..)
        wait for 175 ns;
        C_IN_TB <= '0';
        S0_TB <= '1';
        S1_TB <= '1';
         S2_TB <= '0';
        
         --c: test logic circuit 1 (A and B)
        wait for 175 ns;
        S0_TB <= '0';
        S1_TB <= '0';
        S2_TB <= '1';
        
         --c: test logic circuit 1 (not A)
        wait for 175 ns;
        S0_TB <= '1';
        S1_TB <= '1';
        S2_TB <= '1';
        
          --A + notB
        wait for 175 ns;
        S0_TB <= '0';
        S1_TB <= '1';
        S2_TB <= '0';
        wait for 175 ns;
        
        end process;

end Behavioral;
