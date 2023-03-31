----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 13:12:53
-- Design Name: 
-- Module Name: DP_RippleCarryAdder32Bit_21366417_TB - Behavioral
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

entity DP_RippleCarryAdder32Bit_21366417_TB is
--  Port ( );
end DP_RippleCarryAdder32Bit_21366417_TB;

architecture Behavioral of DP_RippleCarryAdder32Bit_21366417_TB is

    COMPONENT DP_RippleCarryAdder32Bit_21366417
    
      Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
       B : in STD_LOGIC_VECTOR (31 downto 0);
       C_IN : in STD_LOGIC;
       SUM : out STD_LOGIC_VECTOR (31 downto 0);
       C_OUT : out STD_LOGIC;
       V : out STD_LOGIC
       );
       
    END COMPONENT;
    --input
    signal A : std_logic_vector (31 downto 0);
    signal B : std_logic_vector (31 downto 0);
    signal C_IN : std_logic;
    
    --output
    signal SUM : std_logic_vector (31 downto 0);
    signal C_OUT : std_logic;
    signal V : std_logic;

begin

     -- Instantiate the Unit Under Test (UUT)
   uut: DP_RippleCarryAdder32Bit_21366417 PORT MAP (
          A => A,
          B => B,
          C_IN => C_IN,
          SUM => SUM,
          C_OUT => C_OUT,
          V => V
        );
        
   stim_proc: process
   
   begin	
   
        A <= "00000000000000000000000000001011";
        B <= "11111111111111111111111111111111";
        C_IN <= '0';
        
        wait for 180ns;
   
        A <= "00000001010001100000011010010001";
        B <= "00000001010001100000011010010001";
        C_IN <= '0';
        
        wait for 180ns;
        A <= "00000001010001100000011010010001";
        B <= "00000001010001100000011010011000";
        C_IN <= '1';
        
        wait for 180ns;
        A <= "10000001010001100000011010010001";
        B <= "10000001010001100000011010010001";
        C_IN <= '0';
   
   end process;

end Behavioral;
