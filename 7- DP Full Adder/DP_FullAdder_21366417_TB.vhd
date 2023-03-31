----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 10:53:32
-- Design Name: 
-- Module Name: DP_FullAdder_21366417_TB - Behavioral
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

entity DP_FullAdder_21366417_TB is
--  Port ( );
end DP_FullAdder_21366417_TB;

architecture Behavioral of DP_FullAdder_21366417_TB is

  COMPONENT DP_FullAdder_21366417
    Port ( 
            A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_IN : in STD_LOGIC;
           SUM : out STD_LOGIC;
           C_OUT : out STD_LOGIC
    );
           
  END COMPONENT;

      --Inputs
   signal A : std_logic;
   signal B : std_logic;
   signal C_IN : std_logic;

 	--Outputs,
   signal SUM : std_logic;
   signal C_OUT : std_logic;

begin

   uut: DP_FullAdder_21366417 PORT MAP (
          A => A,
          B => B,
          C_IN => C_IN,
          SUM => SUM,
          C_OUT => C_OUT
        );

   stim_proc: process
   
   begin		

        wait for 20 ns;
        A <= '0';
        B <= '0';
        C_IN <= '0';
        
        wait for 20 ns;
        A <= '0';
        B <= '0';
        C_IN <= '1';       
        
        wait for 20 ns;
        A <= '0';
        B <= '1';
        C_IN <= '0';  
        
        wait for 20 ns;
        A <= '0';
        B <= '1';
        C_IN <= '1';
        
        wait for 20 ns;
        A <= '1';
        B <= '0';
        C_IN <= '0';

        wait for 20 ns;
        A <= '1';
        B <= '0';
        C_IN <= '1';
        
        wait for 20 ns;
        A <= '1';
        B <= '1';
        C_IN <= '0';
        
        wait for 20 ns;
        A <= '1';
        B <= '1';
        C_IN <= '1';
        
   end process;
    
end Behavioral;
