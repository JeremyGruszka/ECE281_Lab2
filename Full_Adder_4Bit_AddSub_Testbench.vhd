--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:46:09 02/18/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Jeremy.Gruszka/Documents/ECE/281/Lab2/Full_Adder_4Bit_AddSub_Testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder_4Bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Full_Adder_4Bit_AddSub_Testbench IS
END Full_Adder_4Bit_AddSub_Testbench;
 
ARCHITECTURE behavior OF Full_Adder_4Bit_AddSub_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder_4Bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic;
         Overflow : OUT  std_logic;
         Button : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Button : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   signal Overflow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder_4Bit PORT MAP (
          A => A,
          B => B,
          Sum => Sum,
          Cout => Cout,
          Overflow => Overflow,
          Button => Button
        );

	stim_proc: process
	
   begin	
	
	--test the adder capability
   wait for 100 ns;	
	A <= "0000";
	B <= "0000";
	Button <= '0';
	FOR x in 0 to 15 loop
		FOR y in 0 to 15 loop
			wait for 100 ns;
			assert (A + B = Sum);
			B <= B + "0001"; --increments B by 1
		end loop;
		A <= A + "0001"; --increments A by 1
	end loop;
	
	--test the subtraction capability
   wait for 100 ns;	
	A <= "0000";
	B <= "0000";
	Button <= '1';
	FOR x in 0 to 15 loop
		FOR y in 0 to 15 loop
			wait for 100 ns;
			assert (A - B = Sum);
			B <= B + "0001"; --increments B by 1
		end loop;
		A <= A + "0001"; --increments A by 1
	end loop;
      
	wait for 100 ns;
	
   end process;

END;
