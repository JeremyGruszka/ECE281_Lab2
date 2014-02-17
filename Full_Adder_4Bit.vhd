----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:03:48 02/11/2014 
-- Design Name: 
-- Module Name:    Full_Adder_4Bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder_4Bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
			  Overflow : out STD_LOGIC;
			  Button : in STD_LOGIC);
end Full_Adder_4Bit;

architecture Structural of Full_Adder_4Bit is

signal C, Bin : STD_LOGIC_VECTOR(3 downto 0);
	 
	 component Full_Adder is 
	 port (A : in STD_LOGIC;
		B : in STD_LOGIC;
		Cin : in STD_LOGIC;
		Cout : out STD_LOGIC;
		Sum : out STD_LOGIC);
	 end component Full_Adder;

begin

	 Bin <= (not B) when (Button = '1') else B;

	 Sum1_Full_Adder: Full_Adder Port Map(
		A => A(0),
      B => Bin(0),
      Cin => C(0),
      Cout => C(1),
      Sum => Sum(0));
		
	 Sum2_Full_Adder: Full_Adder Port Map(
		A => A(1),
      B => Bin(1),
      Cin => C(1),
      Cout => C(2),
      Sum => Sum(1));
		
	 Sum3_Full_Adder: Full_Adder Port Map(
		A => A(2),
      B => Bin(2),
      Cin => C(2),
      Cout => C(3),
      Sum => Sum(2));
		
	 Sum4_Full_Adder: Full_Adder Port Map(
		A => A(3),
      B => Bin(3),
      Cin => C(3),
      Cout => Overflow,
      Sum => Sum(3));
		
end Structural;