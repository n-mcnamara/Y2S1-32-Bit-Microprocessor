----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 12:41:40
-- Design Name: 
-- Module Name: DP_RippleCarryAdder32Bit_21366417 - Behavioral
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

entity DP_RippleCarryAdder32Bit_21366417 is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
       B : in STD_LOGIC_VECTOR (31 downto 0);
       C_IN : in STD_LOGIC;
       SUM : out STD_LOGIC_VECTOR (31 downto 0);
       C_OUT : out STD_LOGIC;
       V : out STD_LOGIC
       );
end DP_RippleCarryAdder32Bit_21366417;

architecture Behavioral of DP_RippleCarryAdder32Bit_21366417 is

COMPONENT DP_FullAdder_21366417
    Port ( 
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_IN : in STD_LOGIC;
           SUM : out STD_LOGIC;
           C_OUT : out STD_LOGIC
    );
           
  END COMPONENT;
  
  Signal carry : STD_LOGIC_vector(31 downto 0); 

begin

    -- Instantiate Full Adder Bit 0
   BIT0: DP_FullAdder_21366417 PORT MAP (
          A => A(0),
          B => B(0),
          C_IN => C_IN,
          SUM => SUM(0),
          C_OUT => carry(0)
        );
        
         -- Instantiate Full Adder Bit 0
   BIT1: DP_FullAdder_21366417 PORT MAP (
          A => A(1),
          B => B(1),
          C_IN => carry(0),
          SUM => SUM(1),
          C_OUT => carry(1)
        );
        
              -- Instantiate Full Adder Bit 0
   BIT2: DP_FullAdder_21366417 PORT MAP (
          A => A(2),
          B => B(2),
          C_IN => carry(1),
          SUM => SUM(2),
          C_OUT => carry(2)
        );
        
   BIT3: DP_FullAdder_21366417 PORT MAP (
          A => A(3),
          B => B(3),
          C_IN => carry(2),
          SUM => SUM(3),
          C_OUT => carry(3)
        );
        BIT4: DP_FullAdder_21366417 PORT MAP (
          A => A(4),
          B => B(4),
          C_IN => carry(3),
          SUM => SUM(4),
          C_OUT => carry(4)
        );
        BIT5: DP_FullAdder_21366417 PORT MAP (
          A => A(5),
          B => B(5),
          C_IN => carry(4),
          SUM => SUM(5),
          C_OUT => carry(5)
        );
        BIT6: DP_FullAdder_21366417 PORT MAP (
          A => A(6),
          B => B(6),
          C_IN => carry(5),
          SUM => SUM(6),
          C_OUT => carry(6)
        );
        BIT7: DP_FullAdder_21366417 PORT MAP (
          A => A(7),
          B => B(7),
          C_IN => carry(6),
          SUM => SUM(7),
          C_OUT => carry(7)
        );
        BIT8: DP_FullAdder_21366417 PORT MAP (
          A => A(8),
          B => B(8),
          C_IN => carry(7),
          SUM => SUM(8),
          C_OUT => carry(8)
        );
        BIT9: DP_FullAdder_21366417 PORT MAP (
          A => A(9),
          B => B(9),
          C_IN => carry(8),
          SUM => SUM(9),
          C_OUT => carry(9)
        );
        BIT10: DP_FullAdder_21366417 PORT MAP (
          A => A(10),
          B => B(10),
          C_IN => carry(9),
          SUM => SUM(10),
          C_OUT => carry(10)
        );
        BIT11: DP_FullAdder_21366417 PORT MAP (
          A => A(11),
          B => B(11),
          C_IN => carry(10),
          SUM => SUM(11),
          C_OUT => carry(11)
        );
        BIT12: DP_FullAdder_21366417 PORT MAP (
          A => A(12),
          B => B(12),
          C_IN => carry(11),
          SUM => SUM(12),
          C_OUT => carry(12)
        );
        BIT13: DP_FullAdder_21366417 PORT MAP (
          A => A(13),
          B => B(13),
          C_IN => carry(12),
          SUM => SUM(13),
          C_OUT => carry(13)
        );
        BIT14: DP_FullAdder_21366417 PORT MAP (
          A => A(14),
          B => B(14),
          C_IN => carry(13),
          SUM => SUM(14),
          C_OUT => carry(14)
        );
        BIT15: DP_FullAdder_21366417 PORT MAP (
          A => A(15),
          B => B(15),
          C_IN => carry(14),
          SUM => SUM(15),
          C_OUT => carry(15)
        );
        BIT16: DP_FullAdder_21366417 PORT MAP (
          A => A(16),
          B => B(16),
          C_IN => carry(15),
          SUM => SUM(16),
          C_OUT => carry(16)
        );
        
        BIT17: DP_FullAdder_21366417 PORT MAP (
          A => A(17),
          B => B(17),
          C_IN => carry(16),
          SUM => SUM(17),
          C_OUT => carry(17)
        );
        
        BIT18: DP_FullAdder_21366417 PORT MAP (
          A => A(18),
          B => B(18),
          C_IN => carry(17),
          SUM => SUM(18),
          C_OUT => carry(18)
        );
        
        BIT19: DP_FullAdder_21366417 PORT MAP (
          A => A(19),
          B => B(19),
          C_IN => carry(18),
          SUM => SUM(19),
          C_OUT => carry(19)
        );
        BIT20: DP_FullAdder_21366417 PORT MAP (
          A => A(20),
          B => B(20),
          C_IN => carry(19),
          SUM => SUM(20),
          C_OUT => carry(20)
        );
        BIT21: DP_FullAdder_21366417 PORT MAP (
          A => A(21),
          B => B(21),
          C_IN => carry(20),
          SUM => SUM(21),
          C_OUT => carry(21)
        );
        BIT22: DP_FullAdder_21366417 PORT MAP (
          A => A(22),
          B => B(22),
          C_IN => carry(21),
          SUM => SUM(22),
          C_OUT => carry(22)
        );
        BIT23: DP_FullAdder_21366417 PORT MAP (
          A => A(23),
          B => B(23),
          C_IN => carry(22),
          SUM => SUM(23),
          C_OUT => carry(23)
        );
        BIT24: DP_FullAdder_21366417 PORT MAP (
          A => A(24),
          B => B(24),
          C_IN => carry(23),
          SUM => SUM(24),
          C_OUT => carry(24)
        );
        BIT25: DP_FullAdder_21366417 PORT MAP (
          A => A(25),
          B => B(25),
          C_IN => carry(24),
          SUM => SUM(25),
          C_OUT => carry(25)
        );
        BIT26: DP_FullAdder_21366417 PORT MAP (
          A => A(26),
          B => B(26),
          C_IN => carry(25),
          SUM => SUM(26),
          C_OUT => carry(26)
        );
        BIT27: DP_FullAdder_21366417 PORT MAP (
          A => A(27),
          B => B(27),
          C_IN => carry(26),
          SUM => SUM(27),
          C_OUT => carry(27)
        );
        BIT28: DP_FullAdder_21366417 PORT MAP (
          A => A(28),
          B => B(28),
          C_IN => carry(27),
          SUM => SUM(28),
          C_OUT => carry(28)
        );
        BIT29: DP_FullAdder_21366417 PORT MAP (
          A => A(29),
          B => B(29),
          C_IN => carry(28),
          SUM => SUM(29),
          C_OUT => carry(29)
        );
        BIT30: DP_FullAdder_21366417 PORT MAP (
          A => A(30),
          B => B(30),
          C_IN => carry(29),
          SUM => SUM(30),
          C_OUT => carry(30)
        );
        BIT31: DP_FullAdder_21366417 PORT MAP (
          A => A(31),
          B => B(31),
          C_IN => carry(30),
          SUM => SUM(31),
          C_OUT => carry(31)
        );
              
        C_OUT <= carry(31);
        V <= (carry(30) xor carry(31));
              
        

end Behavioral;
