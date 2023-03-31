----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2022 10:21:13
-- Design Name: 
-- Module Name: RF_RegisterFile_32_15_21366417 - Behavioral
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

package d is
    type array32x32 is array (0 to 31) of std_logic_vector(31 downto 0);
    type array15x32 is array (0 to 14) of std_logic_vector(31 downto 0);
end package d;

use work.d.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_RegisterFile_32_15_21366417 is
--  Port ( );
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
end RF_RegisterFile_32_15_21366417;

architecture Behavioral of RF_RegisterFile_32_15_21366417 is

--components

    --DestReg Decoder
    COMPONENT RF_DestReg_Decoder_21366417
    PORT
    (
       A0 : in STD_LOGIC_VECTOR (4 downto 0);
       Q : out STD_LOGIC_VECTOR (31 downto 0)
    );
    END COMPONENT;

    --32 bit register
    COMPONENT RF_Register32Bit_21366417
    PORT
    (
           D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0)
    );
    END COMPONENT;
    
    --32Mux32
    COMPONENT RF_Mux32_32Bit_21366417
    PORT
    (
            s : in  STD_LOGIC_VECTOR (4 downto 0);
           inp : array32x32;
           z : out  STD_LOGIC_VECTOR (31 downto 0)
    );
    END COMPONENT;
    
    ---------------------------------------------------------
        --TEMP--
    ---------------------------------------------------------
    
    --TempDest Reg
    COMPONENT RF_TempDestReg_Decoder_21366417
    PORT
    (
       A0 : in STD_LOGIC_VECTOR (3 downto 0);
       Q : out std_logic_vector(15 downto 0)
    );
    END COMPONENT;
    
     --16Mux32
    COMPONENT RF_Mux16_32Bit_21366417
    PORT
    (
           s : in  STD_LOGIC_VECTOR (3 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           in3 : in  STD_LOGIC_VECTOR (31 downto 0);
           in4 : in  STD_LOGIC_VECTOR (31 downto 0);
           in5 : in  STD_LOGIC_VECTOR (31 downto 0);
           in6 : in  STD_LOGIC_VECTOR (31 downto 0);
           in7 : in  STD_LOGIC_VECTOR (31 downto 0);
           in8 : in  STD_LOGIC_VECTOR (31 downto 0);
           in9 : in  STD_LOGIC_VECTOR (31 downto 0);
           in10 : in  STD_LOGIC_VECTOR (31 downto 0);
           in11 : in  STD_LOGIC_VECTOR (31 downto 0);
           in12 : in  STD_LOGIC_VECTOR (31 downto 0);
           in13 : in  STD_LOGIC_VECTOR (31 downto 0);
           in14 : in  STD_LOGIC_VECTOR (31 downto 0);
           in15 : in  STD_LOGIC_VECTOR (31 downto 0);
           in16 : in  STD_LOGIC_VECTOR (31 downto 0);
   
           z : out  STD_LOGIC_VECTOR (31 downto 0)
    );
    END COMPONENT;
    
    
    --signals
    
    SIGNAL destRegDecoder_output, Register32Load, Mux32x32AOutput, Mux32x32BOutput: std_logic_vector(31 downto 0);
    SIGNAL tempDestRegDecoder_output, Register16Load : std_logic_vector(15 downto 0);

    --construct array of 32 x 32 bits
   
    SIGNAL RegistersX32_output : array32x32;
    SIGNAL RegistersX15_output : array15x32;
    
begin

    dest_Reg_Decoder: RF_DestReg_Decoder_21366417 PORT MAP(
            A0 => DR,
            Q => destRegDecoder_output
    );
    
        temp_Dest_Reg_Decoder: RF_TempDestReg_Decoder_21366417 PORT MAP(
            A0 => TD,
            Q => tempDestRegDecoder_output
    );
    
    
    --ENABLE LOGIC FOR REGISTERS
    Register32Load(0) <= destRegDecoder_output(0) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(1) <= destRegDecoder_output(1) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(2) <= destRegDecoder_output(2) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(3) <= destRegDecoder_output(3) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(4) <= destRegDecoder_output(4) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(5) <= destRegDecoder_output(5) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(6) <= destRegDecoder_output(6) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(7) <= destRegDecoder_output(7) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(8) <= destRegDecoder_output(8) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(9) <= destRegDecoder_output(9) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(10) <= destRegDecoder_output(10) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(11) <= destRegDecoder_output(11) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(12) <= destRegDecoder_output(12) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(13) <= destRegDecoder_output(13) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(14) <= destRegDecoder_output(14) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(15) <= destRegDecoder_output(15) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(16) <= destRegDecoder_output(16) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(17) <= destRegDecoder_output(17) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(18) <= destRegDecoder_output(18) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(19) <= destRegDecoder_output(19) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(20) <= destRegDecoder_output(20) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(21) <= destRegDecoder_output(21) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(22) <= destRegDecoder_output(22) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(23) <= destRegDecoder_output(23) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(24) <= destRegDecoder_output(24) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(25) <= destRegDecoder_output(25) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(26) <= destRegDecoder_output(26) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(27) <= destRegDecoder_output(27) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(28) <= destRegDecoder_output(28) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(29) <= destRegDecoder_output(29) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(30) <= destRegDecoder_output(30) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    Register32Load(31) <= destRegDecoder_output(31) AND RW AND tempDestRegDecoder_output(0) after 5 ns;
    --

    --FIRST 32 PRIMARY REGISTERS
    reg01: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(0),
           CLK => Clk,
           Q => RegistersX32_output(0)
    );
    
    reg02: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(1),
           CLK => Clk,
           Q => RegistersX32_output(1)
    );
    
    reg03: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(2),
           CLK => Clk,
           Q => RegistersX32_output(2)
    );
    
     reg04: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(3),
           CLK => Clk,
           Q => RegistersX32_output(3)
    );
    
     reg05: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(4),
           CLK => Clk,
           Q => RegistersX32_output(4)
    );
    
     reg06: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(5),
           CLK => Clk,
           Q => RegistersX32_output(5)
    );
    
     reg07: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(6),
           CLK => Clk,
           Q => RegistersX32_output(6)
    );
    
     reg08: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(7),
           CLK => Clk,
           Q => RegistersX32_output(7)
    );
    
     reg09: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(8),
           CLK => Clk,
           Q => RegistersX32_output(8)
    );
    
     reg10: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(9),
           CLK => Clk,
           Q => RegistersX32_output(9)
    );
    
     reg11: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(10),
           CLK => Clk,
           Q => RegistersX32_output(10)
    );
    
     reg12: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(11),
           CLK => Clk,
           Q => RegistersX32_output(11)
    );
    
     reg13: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(12),
           CLK => Clk,
           Q => RegistersX32_output(12)
    );
    
     reg14: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(13),
           CLK => Clk,
           Q => RegistersX32_output(13)
    );
    
     reg15: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(14),
           CLK => Clk,
           Q => RegistersX32_output(14)
    );
    
     reg16: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(15),
           CLK => Clk,
           Q => RegistersX32_output(15)
    );
    
     reg17: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(16),
           CLK => Clk,
           Q => RegistersX32_output(16)
    );
    
     reg18: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(17),
           CLK => Clk,
           Q => RegistersX32_output(17)
    );
    
     reg19: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(18),
           CLK => Clk,
           Q => RegistersX32_output(18)
    );
    
     reg20: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(19),
           CLK => Clk,
           Q => RegistersX32_output(19)
    );
    
     reg21: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(20),
           CLK => Clk,
           Q => RegistersX32_output(20)
    );
    
     reg22: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(21),
           CLK => Clk,
           Q => RegistersX32_output(21)
    );
    
     reg23: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(22),
           CLK => Clk,
           Q => RegistersX32_output(22)
    );
    
     reg24: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(23),
           CLK => Clk,
           Q => RegistersX32_output(23)
    );
    
     reg25: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(24),
           CLK => Clk,
           Q => RegistersX32_output(24)
    );
    
     reg26: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(25),
           CLK => Clk,
           Q => RegistersX32_output(25)
    );
    
     reg27: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(26),
           CLK => Clk,
           Q => RegistersX32_output(26)
    );
    
     reg28: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(27),
           CLK => Clk,
           Q => RegistersX32_output(27)
    );
    
     reg29: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(28),
           CLK => Clk,
           Q => RegistersX32_output(28)
    );
    
     reg30: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(29),
           CLK => Clk,
           Q => RegistersX32_output(29)
    );
    
     reg31: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(30),
           CLK => Clk,
           Q => RegistersX32_output(30)
    );
    
     reg32: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register32Load(31),
           CLK => Clk,
           Q => RegistersX32_output(31)
    );
    
    
    --
        --MUX
    --
    
    
    mux32x32A: RF_Mux32_32Bit_21366417 PORT MAP
    (
            S => SA,
            inp => RegistersX32_output,
            Z => Mux32x32AOutput
    );
    
    mux32x32B: RF_Mux32_32Bit_21366417 PORT MAP
    (
            S => SB,
            inp => RegistersX32_output,
            Z => Mux32x32BOutput
    );
   
    --enable
    --Register16Load(0) <= tempDestRegDecoder_output(0) AND RW after 5 ns;
    Register16Load(1) <= tempDestRegDecoder_output(1) AND RW after 5 ns;
    Register16Load(2) <= tempDestRegDecoder_output(2) AND RW after 5 ns;
    Register16Load(3) <= tempDestRegDecoder_output(3) AND RW after 5 ns;
    Register16Load(4) <= tempDestRegDecoder_output(4) AND RW after 5 ns;
    Register16Load(5) <= tempDestRegDecoder_output(5) AND RW after 5 ns;
    Register16Load(6) <= tempDestRegDecoder_output(6) AND RW after 5 ns;
    Register16Load(7) <= tempDestRegDecoder_output(7) AND RW after 5 ns;
    Register16Load(8) <= tempDestRegDecoder_output(8) AND RW after 5 ns;
    Register16Load(9) <= tempDestRegDecoder_output(9) AND RW after 5 ns;
    Register16Load(10) <= tempDestRegDecoder_output(10) AND RW after 5 ns;
    Register16Load(11) <= tempDestRegDecoder_output(11) AND RW after 5 ns;
    Register16Load(12) <= tempDestRegDecoder_output(12) AND RW after 5 ns;
    Register16Load(13) <= tempDestRegDecoder_output(13) AND RW after 5 ns;
    Register16Load(14) <= tempDestRegDecoder_output(14) AND RW after 5 ns;
    Register16Load(15) <= tempDestRegDecoder_output(15) AND RW after 5 ns;
       
    --SECOND 15 TEMP REGISTERS  
    tempReg01: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(1),
           CLK => Clk,
           Q => RegistersX15_output(0)
    );
    
    tempReg02: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(2),
           CLK => Clk,
           Q => RegistersX15_output(1)
    ); 
    
    tempReg03: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(3),
           CLK => Clk,
           Q => RegistersX15_output(2)
    ); 
    
    tempReg04: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(4),
           CLK => Clk,
           Q => RegistersX15_output(3)
    ); 
    
    tempReg05: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(5),
           CLK => Clk,
           Q => RegistersX15_output(4)
    ); 
    
    tempReg06: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(6),
           CLK => Clk,
           Q => RegistersX15_output(5)
    ); 
    
    tempReg07: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(7),
           CLK => Clk,
           Q => RegistersX15_output(6)
    ); 
    
    tempReg08: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(8),
           CLK => Clk,
           Q => RegistersX15_output(7)
    ); 
    
    tempReg09: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(9),
           CLK => Clk,
           Q => RegistersX15_output(8)
    ); 
    
    tempReg10: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(10),
           CLK => Clk,
           Q => RegistersX15_output(9)
    ); 
    
    tempReg11: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(11),
           CLK => Clk,
           Q => RegistersX15_output(10)
    ); 
    
    tempReg12: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(12),
           CLK => Clk,
           Q => RegistersX15_output(11)
    ); 
    
    tempReg13: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(13),
           CLK => Clk,
           Q => RegistersX15_output(12)
    ); 
    
    tempReg14: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(14),
           CLK => Clk,
           Q => RegistersX15_output(13)
    ); 
    
    tempReg15: RF_Register32Bit_21366417 PORT MAP
    (
           D => D,
           Load => Register16Load(15),
           CLK => Clk,
           Q => RegistersX15_output(14)
    ); 
    
    
    --FINAL 2 MUX THAT SELECT REGISTER FILE OUTPUT!!!!
    
    mux16x32A: RF_Mux16_32Bit_21366417 PORT MAP
    (
          S => TA,
          in1 => Mux32x32AOutput,
          in2 => RegistersX15_output(0),
          in3 => RegistersX15_output(1),
          in4 => RegistersX15_output(2),
          in5 => RegistersX15_output(3),
          in6 => RegistersX15_output(4),
          in7 => RegistersX15_output(5),
          in8 => RegistersX15_output(6),
          in9 => RegistersX15_output(7),
          in10 => RegistersX15_output(8),
          in11 => RegistersX15_output(9),
          in12 => RegistersX15_output(10),
          in13 => RegistersX15_output(11),
          in14 => RegistersX15_output(12),
          in15 => RegistersX15_output(13),
          in16 => RegistersX15_output(14),
      
          z => regA
           
    );
    
    mux16x32B: RF_Mux16_32Bit_21366417 PORT MAP
    (
          S => TB,
          in1 => Mux32x32BOutput,
          in2 => RegistersX15_output(0),
          in3 => RegistersX15_output(1),
          in4 => RegistersX15_output(2),
          in5 => RegistersX15_output(3),
          in6 => RegistersX15_output(4),
          in7 => RegistersX15_output(5),
          in8 => RegistersX15_output(6),
          in9 => RegistersX15_output(7),
          in10 => RegistersX15_output(8),
          in11 => RegistersX15_output(9),
          in12 => RegistersX15_output(10),
          in13 => RegistersX15_output(11),
          in14 => RegistersX15_output(12),
          in15 => RegistersX15_output(13),
          in16 => RegistersX15_output(14),
      
          z => regB
           
    );
    
    
end Behavioral;
