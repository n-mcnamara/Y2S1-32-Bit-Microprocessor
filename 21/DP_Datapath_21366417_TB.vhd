----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.12.2022 14:05:19
-- Design Name: 
-- Module Name: DP_Datapath_21366417_TB - Behavioral
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

entity DP_Datapath_21366417_TB is
--  Port ( );
end DP_Datapath_21366417_TB;

architecture Behavioral of DP_Datapath_21366417_TB is

    COMPONENT DP_Datapath_21366417 
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
    END COMPONENT;
    
        --input
        signal IR_IN : STD_LOGIC_VECTOR (31 downto 0);
        signal MB : std_logic;
        signal DATA_IN : STD_LOGIC_VECTOR (31 downto 0);
        signal MD : std_logic;      
        signal CLK : std_logic:='0';
        signal FS : std_logic_vector(4 downto 0);
        signal DR : std_logic_vector(4 downto 0);
        signal SA : std_logic_vector(4 downto 0);
        signal SB : std_logic_vector(4 downto 0);
        signal TD : std_logic_vector(3 downto 0);
        signal TA : std_logic_vector(3 downto 0);
        signal TB : std_logic_vector(3 downto 0);
        signal RW : std_logic;
        --output
        signal DATA_OUT : STD_LOGIC_VECTOR (31 downto 0);
        signal C : std_logic;
        signal N : std_logic;
        signal Z : std_logic;
        signal V : std_logic;
        signal ADD : STD_LOGIC_VECTOR (31 downto 0);

begin

 -- Instantiate the Unit Under Test (UUT)
   uut: DP_Datapath_21366417 PORT MAP (
            IR_IN=>IR_IN,
            MB=>MB,
            DATA_IN=>DATA_IN,
            MD=>MD,
            CLK => CLK,
            FS=>FS,
         
            DR => DR,
            SA => SA,
            SB => SB,
            TD => TD,
            TA => TA,
            TB => TB,
            RW => RW,
        
            
            DATA_OUT=>DATA_OUT,       
            C=>C,
            N=>N,
            Z=>Z,
            V=>V,
            ADD=>ADD
        );
        
        CLK <= not CLK after 200 ns;

   stim_proc: process
   begin
   
   wait for 10 ns;
   DATA_IN<= "00000001010001100000011010010010";
   IR_IN<="00000000000000000000000000000000";
   MB<='0';
   --load from data in
   MD<='1';
   FS<="00000";
   
   DR <= "00000"; 
   SA <= "00000";
   SB <= "00000";      
   TD <= "0000";
   TA <= "0000";
   TB <= "0000";
   RW <= '1';
   
   wait for 200ns;
   DR<="00001";
   DATA_IN<="00000001010001100000011010010011";
   SB <= "00000";
   wait for 200ns;
   DR<="00010";
   DATA_IN<="00000001010001100000011010010100";
   SB <= "00001";
   wait for 200ns;
   DR<="00011";
   DATA_IN<="00000001010001100000011010010101";
   SB <= "00010";
   wait for 200ns;
   DR<="00100";
   DATA_IN<="00000001010001100000011010010110";
   SB <= "00010";
   wait for 200ns;
   DR<="00101";
   DATA_IN<="00000001010001100000011010010111";
   SB <= "00100";
   wait for 200ns;
   DR<="00110";
   DATA_IN<="00000001010001100000011010011000";
   SB <= "00101";
   wait for 200ns;
   DR<="00111";
   DATA_IN<="00000001010001100000011010011001";
   SB <= "00110";
   
  
   
   
   
   
   wait for 200 ns;
        DATA_IN <= "00000001010001100000011010011001";
        DR <= "01000";
        SB <= "00111";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010011010";
        DR <= "01001";
        SB <= "01000";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010011011";
        DR <= "01010";
        SB <= "01001";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010011100";
        DR <= "01011";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010011101";
        DR <= "01100";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010011110";
        DR <= "01101";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010011111";
        DR <= "01110";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010100000";
        DR <= "01111";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010100001";
        DR <= "10000";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010100010";
        DR <= "10001";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010100011";
        DR <= "10010";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010100100";
        DR <= "10011";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010100101";
        DR <= "10100";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010100110";
        DR <= "10101";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010100111";
        DR <= "10110";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010101000";
        DR <= "10111";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010101001";
        DR <= "11000";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010101001";
        DR <= "11001";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010101010";
        DR <= "11010";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010101011";
        DR <= "11011";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010101100";
        DR <= "11100";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010101101";
        DR <= "11101";
        --first 32 registers loaded
 
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010101110";
        TD <= "0001";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010101111";
        TD <= "0010";
         wait for 200 ns;
        DATA_IN <= "00000001010001100000011010110000";
        TD <= "0011";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010110001";
        TD <= "0100";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010110010";
        TD <= "0101";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010110011";
        TD <= "0110";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010110100";
        TD <= "0111";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010110101";
        TD <= "1000";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010110110";
        TD <= "1001";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010110111";
        TD <= "1010";
        wait for 200 ns;
        DATA_IN <= "00000001010001100000011010111000";
        TD <= "1011";
         wait for 200 ns;
        DATA_IN <= "00000001010001100000011010111001";
        TD <= "1100";
         wait for 200 ns;
        DATA_IN <= "00000001010001100000011010111001";
        TD <= "1101";
         wait for 200 ns;
        DATA_IN <= "00000001010001100000011010111010";
        TD <= "1110";
         wait for 200 ns;
        DATA_IN <= "00000001010001100000011010111011";
        TD <= "1111";
        --all temp registers loaded
   
   
   end process;

end Behavioral;
