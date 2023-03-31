----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2022 20:13:34
-- Design Name: 
-- Module Name: DP_Shifter_21366417 - Behavioral
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

entity DP_Shifter_21366417 is

    Port (
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           S1 : in std_logic;
           S2 : in std_logic;
   
           C : out std_logic;
           G : out  STD_LOGIC_VECTOR (31 downto 0));

end DP_Shifter_21366417;

architecture Behavioral of DP_Shifter_21366417 is

    --B logic
    COMPONENT DP_Mux3_1Bit_21366417
     Port ( s : in  STD_LOGIC_VECTOR (1 downto 0);
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           in3 : in  STD_LOGIC;
   
           z : out STD_LOGIC);
    END COMPONENT;
    
    
    COMPONENT DP_ShifterCFlagMux2_1Bit_21366417
     Port ( s : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           
           z : out STD_LOGIC);
    END COMPONENT;
    
    signal shifterCarryMuxOutput: std_logic;
begin

 
    --mihgt break if accidentally do 11 as select input, xor should hopefylly fix
    C <= shifterCarryMuxOutput AND (S1 xor S2);

    carryMux : DP_ShifterCFlagMux2_1Bit_21366417 Port Map
    (
        s => S2,
        in1 => B(0),
        in2 => B(31),
        
        z => shifterCarryMuxOutput
    );

    mux00 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        
        --if we dont want to shift it stays as 0
        in1 => B(0),
        --if we want to shift right then we select the value to be chnaged to the one to the right
        in2 => B(1),
        --if we want to shift left we make the first bit 0
        in3 => '0',
        
        z => G(0)
    );
    
    mux01 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(1),
        in2 => B(2),
        in3 => B(0),
        
        z => G(1)
    );
    
     mux02 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(2),
        in2 => B(3),
        in3 => B(1),
        
        z => G(2)
    );
     mux03 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(3),
        in2 => B(4),
        in3 => B(2),
        
        z => G(3)
    );
     mux04 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(4),
        in2 => B(5),
        in3 => B(3),
        
        z => G(4)
    );
     mux05 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(5),
        in2 => B(6),
        in3 => B(4),
        
        z => G(5)
    );
     mux06 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(6),
        in2 => B(7),
        in3 => B(5),
        
        z => G(6)
    );
     mux07 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(7),
        in2 => B(8),
        in3 => B(6),
        
        z => G(7)
    );
     mux08 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(8),
        in2 => B(9),
        in3 => B(7),
        
        z => G(8)
    );
     mux09 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(9),
        in2 => B(10),
        in3 => B(8),
        
        z => G(9)
    );
     mux10 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(10),
        in2 => B(11),
        in3 => B(9),
        
        z => G(10)
    );
     mux11 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(11),
        in2 => B(12),
        in3 => B(10),
        
        z => G(11)
    );
     mux12 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(12),
        in2 => B(13),
        in3 => B(11),
        
        z => G(12)
    );
     mux13 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(13),
        in2 => B(14),
        in3 => B(12),
        
        z => G(13)
    );
     mux14 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(14),
        in2 => B(15),
        in3 => B(13),
        
        z => G(14)
    );
     mux15 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(15),
        in2 => B(16),
        in3 => B(14),
        
        z => G(15)
    );
     mux16 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(16),
        in2 => B(17),
        in3 => B(15),
        
        z => G(16)
    );
     mux17 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(17),
        in2 => B(18),
        in3 => B(16),
        
        z => G(17)
    );
     mux18 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(18),
        in2 => B(19),
        in3 => B(17),
        
        z => G(18)
    );
     mux19 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(19),
        in2 => B(20),
        in3 => B(18),
        
        z => G(19)
    );
     mux20 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(20),
        in2 => B(21),
        in3 => B(19),
        
        z => G(20)
    );
     mux21 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(21),
        in2 => B(22),
        in3 => B(20),
        
        z => G(21)
    );
     mux22 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(22),
        in2 => B(23),
        in3 => B(21),
        
        z => G(22)
    );
     mux23 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(23),
        in2 => B(24),
        in3 => B(22),
        
        z => G(23)
    );
     mux24 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(24),
        in2 => B(25),
        in3 => B(23),
        
        z => G(24)
    );
     mux25 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(25),
        in2 => B(26),
        in3 => B(24),
        
        z => G(25)
    );
     mux26 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(26),
        in2 => B(27),
        in3 => B(25),
        
        z => G(26)
    );
     mux27 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(27),
        in2 => B(28),
        in3 => B(26),
        
        z => G(27)
    );
     mux28 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(28),
        in2 => B(29),
        in3 => B(27),
        
        z => G(28)
    );
     mux29 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(29),
        in2 => B(30),
        in3 => B(28),
        
        z => G(29)
    );
     mux30 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(30),
        in2 => B(31),
        in3 => B(29),
        
        z => G(30)
    );
     mux31 : DP_Mux3_1Bit_21366417 Port Map
    (
        s(0) => S1,
        s(1) => S2,
        in1 => B(31),
        in2 => '0',
        in3 => B(30),
        
        z => G(31)
    );


end Behavioral;
