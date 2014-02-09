ECE281_Lab2
===========

##Lab 2

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
