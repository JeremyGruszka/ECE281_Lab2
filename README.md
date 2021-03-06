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

![alt text](https://raw2.github.com/JeremyGruszka/ECE281_Lab2/master/schematic.png "Schematic")

#### Testbench Waveform:


![alt text](https://raw2.github.com/JeremyGruszka/ECE281_Lab2/master/Full_Adder_Testbench.PNG "Testbench Waveform")

#### Testbench Waveform Analysis
My design is correct.  I know this because when I compare input to output, my truth table, schematic, and testbench waveform all come out with the same answers, showing that my work is correct.

##Lab 2 Main Lab

#### Final Schematic

![alt text](https://raw2.github.com/JeremyGruszka/ECE281_Lab2/master/final_schematic.png "Schematic")

Where CO is my overflow variable.  It corresponds to LED R4 on my NEXYS 2 board.

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
13. Went back to work on the testbench.  Found something on google that thought I should use a series of 2 for loops to simulate the program, decided to use that because nothing else is working.
14. Tweaked the google idea a little bit and got errors about plus and minus signs...
15. Took me an hour to figure out I needed to use more of the I.EEE library...
16. Still doesnt work, but at least the simulation opens now.  Giving up on this horrible lab
17. I hate this lab.
