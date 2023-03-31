----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 23:27:51
-- Design Name: 
-- Module Name: DP_FunctionalUnit_21366417_TB - Behavioral
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

entity DP_FunctionalUnit_21366417_TB is
--  Port ( );
end DP_FunctionalUnit_21366417_TB;

architecture Behavioral of DP_FunctionalUnit_21366417_TB is

    COMPONENT DP_FunctionalUnit_21366417
        Port (
           A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           FS : in std_logic_vector(4 downto 0);
   
           F : out STD_LOGIC_VECTOR (31 downto 0);
           C : out std_logic;
           N : out std_logic;
           Z : out std_logic;
           V : out std_logic);
    END COMPONENT;
    
    --input
           signal A : STD_LOGIC_VECTOR (31 downto 0);
           signal B : STD_LOGIC_VECTOR (31 downto 0);
           signal FS : std_logic_vector(4 downto 0);
   --output
           signal F : STD_LOGIC_VECTOR (31 downto 0);
           signal C : std_logic;
           signal N : std_logic;
           signal Z : std_logic;
           signal V : std_logic;

begin

    uut: DP_FunctionalUnit_21366417 port map (
         A=>A,
         B=>B,
         FS=>FS,
         F=>F,
         C=>C,
         N=>N,
         Z=>Z,
         V=>V
         );
         
    stim_proc: process
        
        begin
        wait for 10ns;
        A <= "00000001010001100000011010010001";
        B <= "00000001010001100000011010011000";
        
        --AorB
        FS <= "01010";
        wait for 200 ns;
        --AxorB
        FS <= "01100";
        wait for 200 ns;
        --AandB
        FS <= "01000";
        wait for 200 ns;
        --B
        FS <= "10000";
        wait for 200 ns;
        --A-1 carry gets set?? beccause add all ones, again not sure if this is intended
        FS <= "00110";
        wait for 200 ns;
        --slB
        FS <= "11000";
        wait for 200 ns;
        --A+111111... + 1    ??F=A+1's c B+1?
        FS <= "00101";
        wait for 200 ns;
        --A     carry set? might be intended because add all 1s then 1
        --FS <= "00111";
        FS <= "00111";
        wait for 200 ns;
        --A+11111...       ?? F=A+1's c B? what does this mean
        FS <= "00110";
        wait for 200 ns;
        --srB
        FS <= "10100";
        wait for 200 ns;
         --A+B+C           
        FS <= "00011";
        wait for 200 ns;
         --1s c A     incorrect test
        FS <= "00110";
        wait for 200 ns;
         --A+B
        FS <= "00010";
        wait for 200 ns;
         --A
        FS <= "00000";
        wait for 200 ns;
         --A+1
        FS <= "00001";
        wait for 200 ns;
     
        
        
        
        

    end process;
    
end Behavioral;
