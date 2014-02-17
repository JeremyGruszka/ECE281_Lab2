ECE281_Lab2
===========

##Lab 2 Prelab

#### Truth Table:
Cin | A | B | Cout | Sum
--- | --- | --- | --- | ---
0 | 0 | 0 | 0 | 0
0 | 0 | 1 | 0 | 1
0 | 1 | 0 | 0 | 1
1 | 0 | 0 | 1 | 0
0 | 1 | 1 | 0 | 1
1 | 1 | 0 | 1 | 0
1 | 0 | 1 | 1 | 0
1 | 1 | 1 | 1 | 1

#### Boolean Equations
Cout = AB + CinB + CinA + CinAB                                                                                                 
Sum = A xor B xor C                                                                                                           

#### Schematic

![alt text](https://raw2.github.com/JeremyGruszka/ECE281_Lab2/master/Schematic.png "Schematic")

#### Testbench Waveform:


![alt text](https://raw2.github.com/JeremyGruszka/ECE281_Lab2/master/Full_Adder_Testbench.PNG "Testbench Waveform")

#### Testbench Waveform Analysis
My design is correct.  I know this because when I compare input to output, my truth table, schematic, and testbench waveform all come out with the same answers, showing that my work is correct.

##Lab 2 Main Lab

#### Main Lab Debugging
1.	I know I have to combine 4 full adders in series to make a 4 bit adder, but I cant figure out how to put Cin to Cout
2.	Realized that I need to make a C signal that is a std logic vector
3.	No idea how to write testbench to test every input, book is not helping
4.	Used the internet machine, that did not help either
5.	Decided to skip the testbench for now and get the program running on the NEXYS
6.	My .ucf file came up with several errors when I first tried to generate the programming file. 
7.	Realized that I had an extra quotation mark on every line for some reason
8.	Got the program to work on the NEXYS.  Everything works perfectly except it is not letting me show the final carry.
9.	Fixed this by making the final carry an output in the vhdl program.  Program now works perfectly for B functionality on the NEXYS
10.	Attempting to work on A functionality.  No idea how to change inputs and outputs depending on whether or not a button is pushed.  Neither book nor internet is helping once again.
11.	Decided to go back to self checking testbench.  Figured out how to use for loops, and I’m trying to create a series of 4 for loops that will simulate inputs, one loop for each bit.  Not working right now.
12.	Went back to getting subtractor capability.  After thinking for awhile, I  decided I should be able to have a button input that knows when a button is pressed and decide the value of B depending on that.  The subtractor is simply an adder with not_B instead of B.  This worked, and I now have both adder and subtractor capability.

