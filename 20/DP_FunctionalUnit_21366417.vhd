----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 23:27:22
-- Design Name: 
-- Module Name: DP_FunctionalUnit_21366417 - Behavioral
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

entity DP_FunctionalUnit_21366417 is

Port (
           A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           FS : in std_logic_vector(4 downto 0);
   
           F : out STD_LOGIC_VECTOR (31 downto 0);
           C : out std_logic;
           N : out std_logic;
           Z : out std_logic;
           V : out std_logic);
           
end DP_FunctionalUnit_21366417;

architecture Behavioral of DP_FunctionalUnit_21366417 is

    --SHifter
    COMPONENT DP_Shifter_21366417
     Port (
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           S1 : in std_logic;
           S2 : in std_logic;
   
           C : out std_logic;
           G : out  STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    
    --ALU
    COMPONENT DP_ArithmeticLogicUnit_21366417 is

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
    
    --Mux2x32
    COMPONENT CPU_Mux2_32Bit_21366417 is
         Port( s : in  STD_LOGIC;
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
   
           z : out  STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    
    --Mux2x1
    COMPONENT DP_CFlagMux2_1Bit_21366417 is
         Port (s : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           
           z : out STD_LOGIC);
    END COMPONENT;  
    
    --zero detection
    COMPONENT DP_ZeroDetection_21366417 is
     Port (MuxF_to_F : in  STD_LOGIC_VECTOR (31 downto 0);
          
           Z : out std_logic);
    END COMPONENT;
    

    --signals
    signal shift32BitOutput, ALU32BitOutput, MuxFOutput : std_logic_vector(31 downto 0);
    signal shiftCarry, ALUCarry, ALUoVerflow : std_logic;
    
begin

    shifter: DP_Shifter_21366417 PORT MAP(
        B => B,
        S1 => FS(2),
        S2 => FS(3),
        
        C => shiftCarry,
        G => shift32BitOutput
    );
    
    ALU: DP_ArithmeticLogicUnit_21366417 PORT MAP(
        A => A,
        B => B,
        C_IN => FS(0),
        S0 => FS(1),
        S1 => FS(2),
        S2 => FS(3),
        
        C => ALUCarry,
        G => ALU32BitOutput,
        V => V
    );  
    
    MuxF: CPU_Mux2_32Bit_21366417 PORT MAP(
        in1 => ALU32BitOutput,
        in2 => shift32BitOutput,
        s => FS(4),
        
        z => MuxFOutput
    );
    
    CFlag: DP_CFlagMux2_1Bit_21366417 PORT MAP(
        s => FS(4),
        in1 => ALUCarry,
        in2 => shiftCarry,
        
        z => C
    );
    
    ZFlag: DP_ZeroDetection_21366417 PORT MAP(
        MuxF_to_F => MuxFOutput,
        Z => Z
    );
    
    F <= MuxFOutput;
    
    N <= MuxFOutput(31) and '1';

end Behavioral;
