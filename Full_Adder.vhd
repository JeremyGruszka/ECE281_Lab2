----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Jeremy Gruszka
-- 
-- Create Date:    19:31:04 02/08/2014 
-- Design Name: Lab 2 Single Bit Full Adder
-- Module Name:    Full_Adder - Behavioral 
-- Project Name: Lab 2
-- Target Devices: 
-- Tool versions: 
-- Description: Creates a single bit full adder
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin

Cout <= (A and B) or (Cin and B) or (Cin and A) or (Cin and A and B);
Sum <= A xor B xor Cin;

end Behavioral;

