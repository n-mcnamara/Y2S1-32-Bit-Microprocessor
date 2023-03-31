----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.12.2022 13:57:56
-- Design Name: 
-- Module Name: DP_Datapath_21366417 - Behavioral
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

entity DP_Datapath_21366417 is

    Port (
           IR_IN : in STD_LOGIC_VECTOR (31 downto 0);
           MB : in std_logic;
           DATA_IN : in STD_LOGIC_VECTOR (31 downto 0);
           MD : in std_logic;
          
           CLK : in std_logic;
           FS : in std_logic_vector(4 downto 0);
   
            --selects for the destreg decoder
        DR : in std_logic_vector(4 downto 0);
        --selects for the A and B multiplexer
        SA : in std_logic_vector(4 downto 0);
        SB : in std_logic_vector(4 downto 0);
         
        --Temp
        --TempDestReg Decoder select
        TD : in std_logic_vector(3 downto 0);
        --selects for temp A and b 
        TA : in std_logic_vector(3 downto 0);
        TB : in std_logic_vector(3 downto 0);
        
        --enable logic
        RW : in std_logic;
        
        
        --out
        DATA_OUT : out STD_LOGIC_VECTOR (31 downto 0);
        C : out std_logic;
        N : out std_logic;
        Z : out std_logic;
        V : out std_logic;
        ADD : out STD_LOGIC_VECTOR (31 downto 0)
        );
           

end DP_Datapath_21366417;

architecture Behavioral of DP_Datapath_21366417 is

    COMPONENT RF_RegisterFile_32_15_21366417
    Port( 
    --in
        --register being input into file
        D : in std_logic_vector(31 downto 0);
        
        --selects for the destreg decoder
        DR : in std_logic_vector(4 downto 0);
        --selects for the A and B multiplexer
        SA : in std_logic_vector(4 downto 0);
        SB : in std_logic_vector(4 downto 0);
         
        --Temp
        --TempDestReg Decoder select
        TD : in std_logic_vector(3 downto 0);
        --selects for temp A and b 
        TA : in std_logic_vector(3 downto 0);
        TB : in std_logic_vector(3 downto 0);
        
        --enable logic
        RW : in std_logic;
        
        --clock
        Clk : in std_logic;
        
     --out
        regA : out std_logic_vector(31 downto 0);
        regB : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    COMPONENT CPU_Mux2_32Bit_21366417
         Port( s : in  STD_LOGIC;
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
   
           z : out  STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    
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
    
    --signals
    
    signal regOutA, regOutB, muxOutB, muxOutD, functionOut: STD_LOGIC_VECTOR (31 downto 0);

begin

    DATA_OUT <= muxOutB;
    ADD <= regOutA;

    registerFile: RF_RegisterFile_32_15_21366417 PORT MAP(
            D=>muxOutD,
            DR => DR,
            RW=>RW,
            SA=>SA,
            SB=>SB,
            TA=>TA,
            TB=>TB,
            TD=>TD,
            
            Clk=>CLK,
            
            regA=>regOutA,
            regB=>regOutB
    );
    
    muxD: CPU_Mux2_32Bit_21366417 PORT MAP
    (
            s=>MD,
            in1=>functionOut,
            in2=>DATA_IN,
            z=>muxOutD
    );
    
    muxB: CPU_Mux2_32Bit_21366417 PORT MAP
    (
            s=>MB,
            in1=>regOutB,
            in2=>IR_IN,
            z=>muxOutB   
    );
    
    functionUnit: DP_FunctionalUnit_21366417 PORT MAP
    (
            A=>regOutA,
            B=>muxOutB,
            FS=>FS,
            
            F=>functionOut,
            C=>C,
            N=>N,
            V=>V,
            Z=>Z    
    );
    
    

end Behavioral;
