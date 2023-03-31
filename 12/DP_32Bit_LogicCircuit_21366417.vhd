----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 17:50:34
-- Design Name: 
-- Module Name: DP_32Bit_LogicCircuit_21366417 - Behavioral
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

entity DP_32Bit_LogicCircuit_21366417 is
       Port 
       ( S0: in STD_LOGIC;
         S1: in STD_LOGIC;
   
         A : in STD_LOGIC_VECTOR(31 downto 0);
         B : in STD_LOGIC_VECTOR(31 downto 0);
       
         Y : out STD_LOGIC_VECTOR(31 downto 0)
       );
end DP_32Bit_LogicCircuit_21366417;

architecture Behavioral of DP_32Bit_LogicCircuit_21366417 is

        COMPONENT DP_SingleBit_LogicCircuit_21366417
        Port 
       ( S : in STD_LOGIC_VECTOR (1 downto 0);
   
         A : in STD_LOGIC;
         B : in STD_LOGIC;
       
         Y : out STD_LOGIC
       );
        END COMPONENT;

begin

     -- Instantiate Full Adder Bit 0
        BIT00: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(0),
          B => B(0),
          Y => Y(0)
        );
        BIT01: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(1),
          B => B(1),
          Y => Y(1)
        );
        BIT02: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(2),
          B => B(2),
          Y => Y(2)
        );
        BIT03: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(3),
          B => B(3),
          Y => Y(3)
        );
        BIT04: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(4),
          B => B(4),
          Y => Y(4)
        );
        BIT05: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(5),
          B => B(5),
          Y => Y(5)
        );
        BIT06: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(6),
          B => B(6),
          Y => Y(6)
        );
        BIT07: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(7),
          B => B(7),
          Y => Y(7)
        );
        BIT08: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(8),
          B => B(8),
          Y => Y(8)
        );
        BIT09: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(9),
          B => B(9),
          Y => Y(9)
        );
        BIT10: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(10),
          B => B(10),
          Y => Y(10)
        );
        BIT11: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(11),
          B => B(11),
          Y => Y(11)
        );
        BIT12: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(12),
          B => B(12),
          Y => Y(12)
        );
        BIT13: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(13),
          B => B(13),
          Y => Y(13)
        );
        BIT14: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(14),
          B => B(14),
          Y => Y(14)
        );
        BIT15: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(15),
          B => B(15),
          Y => Y(15)
        );
        BIT16: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(16),
          B => B(16),
          Y => Y(16)
        );
        BIT17: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(17),
          B => B(17),
          Y => Y(17)
        );
        BIT18: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(18),
          B => B(18),
          Y => Y(18)
        );
        BIT19: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(19),
          B => B(19),
          Y => Y(19)
        );
        BIT20: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(20),
          B => B(20),
          Y => Y(20)
        );
        BIT21: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(21),
          B => B(21),
          Y => Y(21)
        );
        BIT22: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(22),
          B => B(22),
          Y => Y(22)
        );
        BIT23: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(23),
          B => B(23),
          Y => Y(23)
        );
        BIT24: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(24),
          B => B(24),
          Y => Y(24)
        );
        BIT25: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(25),
          B => B(25),
          Y => Y(25)
        );
        BIT26: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(26),
          B => B(26),
          Y => Y(26)
        );
        BIT27: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(27),
          B => B(27),
          Y => Y(27)
        );
        BIT28: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(28),
          B => B(28),
          Y => Y(28)
        );
        BIT29: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(29),
          B => B(29),
          Y => Y(29)
        );
        BIT30: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(30),
          B => B(30),
          Y => Y(30)
        );
        BIT31: DP_SingleBit_LogicCircuit_21366417 PORT MAP (
          S(0) => S0,
          S(1) => S1,
          A => A(31),
          B => B(31),
          Y => Y(31)
        );

end Behavioral;
