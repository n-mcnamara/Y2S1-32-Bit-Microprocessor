----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2022 06:27:39 PM
-- Design Name: 
-- Module Name: RF_Register32Bit_21366417_TB - Behavioral
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

entity RF_Register32Bit_21366417_TB is
--  Port ( );
end RF_Register32Bit_21366417_TB;

architecture Behavioral of RF_Register32Bit_21366417_TB is

component RF_Register32Bit_21366417
port ( 
    D : in STD_LOGIC_VECTOR (31 downto 0);
    CLK : in STD_LOGIC;
    Load : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR (31 downto 0)
      );
end component;

--Inputs

    signal D_TB : std_logic_vector(31 downto 0):= (others => '0');
    signal CLK_TB : std_logic:= '0';
    signal Load_TB : std_logic:= '0';
    
--Outputs

    signal Q_TB : std_logic_vector(31 downto 0):= (others => '0');
    
    constant PERIOD : time := 10ns;




begin

 uut: RF_Register32Bit_21366417 port map (
          D => D_TB,
          CLK => CLK_TB,
          Load => Load_TB,
          Q => Q_TB
        );
        
   CLK_TB <= not CLK_TB after PERIOD/2;
   
   stim_proc: process

   begin
   
    --A : input binary into register and set load to 0
      wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '0' after PERIOD/4;
      D_TB <= "00000001010001100000011010010001" after PERIOD/4;
      
      --set load back to 1 after next clock, input should be placed as output of register
      wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '1' after PERIOD/4;
      
    --B : write different decimal into input register  
      wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '0' after PERIOD/4;
      D_TB <= "00000001010001100000011010010010"  after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '1' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '0' after PERIOD/4;
      D_TB <= "00000001010001100000011010010011" after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '1' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '0' after PERIOD/4;
      D_TB <= "00000001010001100000011010010111"  after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '1'after PERIOD/2;
      
   end process;        

end Behavioral;
