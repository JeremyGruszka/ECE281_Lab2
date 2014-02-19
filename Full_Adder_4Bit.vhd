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
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder_4Bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0); --used to hold all 4 bits of A
           B : in  STD_LOGIC_VECTOR (3 downto 0); --used to hold all 4 bits of B
           Sum : out  STD_LOGIC_VECTOR (3 downto 0); --used to hold all 4 bits of Sum
			  Cout : out STD_LOGIC;
			  Overflow : out STD_LOGIC; --detects overflow
			  Button : in STD_LOGIC); --determines addition or subtraction
end Full_Adder_4Bit;

architecture Structural of Full_Adder_4Bit is

signal C, Bin : STD_LOGIC_VECTOR(3 downto 0); --C is used to relate Cin and Cout, B is determined by button
	 
	 component Full_Adder is 
	 port (A : in STD_LOGIC;
		B : in STD_LOGIC;
		Cin : in STD_LOGIC;
		Cout : out STD_LOGIC;
		Sum : out STD_LOGIC);
	 end component Full_Adder;

begin

	 Bin <= (not B) when (Button = '1') else B; --does subtraction if the button is pushed 

--first bit
	 Sum1_Full_Adder: Full_Adder Port Map(
		A => A(0),
      B => Bin(0),
      Cin => Button,
      Cout => C(1),
      Sum => Sum(0));

--second bit		
	 Sum2_Full_Adder: Full_Adder Port Map(
		A => A(1),
      B => Bin(1),
      Cin => C(1),
      Cout => C(2),
      Sum => Sum(1));

--third bit		
	 Sum3_Full_Adder: Full_Adder Port Map(
		A => A(2),
      B => Bin(2),
      Cin => C(2),
      Cout => C(3),
      Sum => Sum(2));

--fourth bit		
	 Sum4_Full_Adder: Full_Adder Port Map(
		A => A(3),
      B => Bin(3),
      Cin => C(3),
      Cout => Cout,
      Sum => Sum(3));
	
	Overflow <= C(3) xor Button;
		
end Structural;
