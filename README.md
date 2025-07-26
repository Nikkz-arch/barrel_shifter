4-Bit Barrel Shifter (Verilog)
#Overview
This project implements a 4-bit Barrel Shifter using 4:1 multiplexers in Verilog HDL.
A barrel shifter allows rotational shifting of bits by a specified amount in a single clock cycle without using multiple shift operations.

##In this design:
Inputs: w3 w2 w1 w0 (4-bit data)
Shift control: s1 s0 (2-bit select line)
Output: y3 y2 y1 y0 (shifted data)

##Files Included
barrel_shifter.v – RTL design of the 4-bit Barrel Shifter
testbench.v – Testbench for functional verification
/screenshots/ – Simulation results and waveform analysis

###How It Works
The 4:1 multiplexers select the appropriate bit based on shift amount:
s1 s0 = 00 → No shift
s1 s0 = 01 → Shift right by 1
s1 s0 = 10 → Shift right by 2
s1 s0 = 11 → Shift right by 3

##Logic for each output:
y3 = MUX(w3, w2, w1, w0, s1, s0)
y2 = MUX(w2, w1, w0, w3, s1, s0)
y1 = MUX(w1, w0, w3, w2, s1, s0)
y0 = MUX(w0, w3, w2, w1, s1, s0)

##Truth Table for Control Signals
s1	s0	Operation
0	0	No shift
0	1	Shift by 1
1	0	Shift by 2
1	1	Shift by 3

##Instantiation Explanation
The barrel shifter uses 4 multiplexers (mux4_1) for each output:
y3: Selects between (w3, w2, w1, w0)
y2: Selects between (w2, w1, w0, w3)
y1: Selects between (w1, w0, w3, w2)
y0: Selects between (w0, w3, w2, w1)
This arrangement ensures rotational shifting instead of losing bits.

###Simulation Results (TCL Console)
time=0      w3=1 w2=0 w1=1 w0=0 s1=0 s0=0 y3=1 y2=0 y1=1 y0=0
time=10000  w3=1 w2=0 w1=1 w0=0 s1=0 s0=1 y3=0 y2=1 y1=0 y0=1
time=20000  w3=1 w2=0 w1=1 w0=0 s1=1 s0=0 y3=1 y2=0 y1=1 y0=0
time=30000  w3=1 w2=0 w1=1 w0=0 s1=1 s0=1 y3=0 y2=1 y1=0 y0=1

###Tools Used
Language: Verilog HDL
Simulator: Xilinx Vivado

Author
NIKSHITHA SHREE C V
B.Tech – VLSI Design & Technology
