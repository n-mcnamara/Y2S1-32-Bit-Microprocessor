----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 10:36:12
-- Design Name: 
-- Module Name: DP_ArithmeticLogicUnit_21366417 - Behavioral
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

entity DP_ArithmeticLogicUnit_21366417 is

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

end DP_ArithmeticLogicUnit_21366417;

architecture Behavioral of DP_ArithmeticLogicUnit_21366417 is

--components

    --B logic
    COMPONENT DP_32Bit_B_Logic_21366417
     Port(S0 : in STD_LOGIC;
          S1 : in STD_LOGIC;
          B : in STD_LOGIC_VECTOR(31 downto 0);
       
          Y : out STD_LOGIC_VECTOR(31 downto 0)
       );
    END COMPONENT;
    --RIpple Carry
    COMPONENT DP_RippleCarryAdder32Bit_21366417
       Port( 
       A : in STD_LOGIC_VECTOR (31 downto 0);
       B : in STD_LOGIC_VECTOR (31 downto 0);
       C_IN : in STD_LOGIC;
       SUM : out STD_LOGIC_VECTOR (31 downto 0);
       C_OUT : out STD_LOGIC;
       V : out STD_LOGIC
       );
    END COMPONENT;
    --logic circuit
    COMPONENT DP_32Bit_LogicCircuit_21366417
       Port 
       ( S0: in STD_LOGIC;
         S1: in STD_LOGIC;
   
         A : in STD_LOGIC_VECTOR(31 downto 0);
         B : in STD_LOGIC_VECTOR(31 downto 0);
       
         Y : out STD_LOGIC_VECTOR(31 downto 0)
       );
    END COMPONENT;
    
    --Mux2x32
     COMPONENT CPU_Mux2_32Bit_21366417
         Port( s : in  STD_LOGIC;
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
   
           z : out  STD_LOGIC_VECTOR (31 downto 0));
      END COMPONENT;
      
      --Signals
      signal bLogicOutput, adderSum, logicCircuitOutput : std_logic_vector(31 downto 0);
      

begin

    bLogic: DP_32Bit_B_Logic_21366417 PORT MAP(
        S0 => S0,
        S1 => S1,
        B => B,
        
        Y => bLogicOutput
    ); 

    adder: DP_RippleCarryAdder32Bit_21366417 PORT MAP(
        A => A,
        B => bLogicOutput,
        C_IN => C_IN,
        
        C_OUT => C,
        SUM => adderSum,
        V => V
    ); 
    
    logicCircuit: DP_32Bit_LogicCircuit_21366417 PORT MAP(
        A => A,
        B => B,
        S0 => S0,
        S1 => S1,
        
        Y => logicCircuitOutput
    ); 
    
    mux2x32: CPU_Mux2_32Bit_21366417 PORT MAP(
        s => S2,
        in1 => adderSum,
        in2 => logicCircuitOutput,
        
        z => G
    ); 
    
    

end Behavioral;
