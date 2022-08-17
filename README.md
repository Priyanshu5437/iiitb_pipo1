# iiitb_pipo- Parallel in parallel out shift register
INTRODUCTION

Shift registers are some sort of sequential logic circuitries that are majorly deployed to store data in digital format and mainly for storage of digital data and in the digital circuit to hold temporary data [3]. They are a group of flip-flops connected in a chain so that the output from one flip-flop becomes the input of the next flip-flop. Most of the registers possess no characteristic internal sequence of states. All flip-flop is driven by a common clock, and all are reset simultaneously. There are basically five types of shift registers are present, such as Serial In - Serial Out (SISO), Serial In - Parallel Out(SIPO), Parallel In – Serial Out(PISO), Parallel In - Parallel Out(PIPO), and bidirectional shift registers. 

Register  
• A set of n flip-flops. 
• Each flip-flop stores one bit. 
• Two basic functions: data storage and data movement.

For parallel in - parallel out shift registers, all data bits appear on the parallel outputs immediately following the simultaneous entry of the data bits. The following circuit is a four-bit parallel in - parallel out shift register constructed by D flip-flops.  Fig. 1: Parallel in Parallel Out Design the D's are the parallel inputs and the Q's are the parallel outputs and “clear” is to reset the output of each flip-flop to the 0 logic level. Once the register is clocked, all the data at the D inputs appear at the corresponding Q outputs simultaneously.

BLOCK DIAGRAM




![Shift_reg5](https://user-images.githubusercontent.com/110079807/184118006-eb8baad2-4757-467d-aac2-61650bacb218.png)

WORKING THEORY

In Parallel-In Parallel-Out (PIPO) shift register input loads in parallel manner and also out in parallel manner. In this paper we are implementing the 4-bit PIPO shift register using Verilog HDL and it is simulated by the “iverilog” simulator tool and the result is stored in the .vcd (value change dump) format and can be viewed in the tool called “gtkwave”.
For testing the design, the test code is written in such a way so that we can verify the working of PIPO, for that we provided the input “pi” and “clk” and “clear” in a certain pattern. Using the “iverilog” tool, saved the result after applying the stimulus in to the .vcd format. later plotted the output with the help of “gtkwave” as shown in the Fig. 2, and it can be clearly seen that as we provide the “clk” for each positive edge the output “po” follow the “pi”. Also as the “clear” signal provided it with presence of the positive edge output “po“ get low.   

RTL SIMULATION

 ![pre_synthesis](https://user-images.githubusercontent.com/110079807/185230950-fca19ccb-abf3-4144-b743-e57fac3ad7fc.png)
 
 TOOLS USED
 
 IVERILOG

Icarus Verilog is a Verilog simulation and synthesis tool.
To install iverilog, type the following command in the terminal:

$ sudo apt install iverilog 
GTKWAVE

GTKWave is a VCD waveform viewer based on the GTK library. This viewer support VCD and LXT formats for signal dumps.

$ sudo apt install gtkwave 

YOSYS
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.

Synthesis transforms the simple RTL design into a gate-level netlist with all the constraints as specified by the designer. In simple language, Synthesis is a process that converts the abstract form of design to a properly implemented chip in terms of logic gates.

Synthesis takes place in multiple steps:

-Converting RTL into simple logic gates.
-Mapping those gates to actual technology-dependent logic gates available in the technology libraries.
-Optimizing the mapped netlist keeping the constraints set by the designer intact.

Yosys can be adapted to perform any synthesis job by combining the existing passes (algorithms) using synthesis scripts and adding additional passes as needed by extending the yosys C++ code base.

Yosys is free software licensed under the ISC license (a GPL compatible license that is similar in terms to the MIT license or the 2-clause BSD license).
To install Yosys in Ubuntu, follow the following steps:

$ sudo apt-get install build-essential clang bison flex \ libreadline-dev gawk tcl-dev libffi-dev git \ graphviz xdot pkg-config python3 libboost-system-dev \ libboost-python-dev libboost-filesystem-dev zlib1g-dev
To configure the build system to use a specific compiler, use one of the following command:

$ make config-clang
$ make config-gcc
To build Yosys simply type 'make' in this directory.

$ make
$ sudo make install
$ make test

GTL- Gate Level Simulation
GLS is generating the simulation output by running test bench with netlist file generated from synthesis as design under test. Netlist is logically same as RTL code, therefore, same test bench can be used for it.
Below picture gives an insight of the procedure. Here while using iverilog, you also include gate level verilog models to generate GLS simulation.

![183838608-b56e1d75-929d-492a-b112-8203a5e40cff](https://user-images.githubusercontent.com/110079807/185231441-8ae2f7ca-5af4-4df3-8a31-8649b3e68970.png)

 
 AUTHOUR

PRIYANSHU,M.Tech student at IIIT Bangalore.
 

 ACKNOWLEDGEMENTS
 
 Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.
 
 CONTACT INFORMATION
 
 PRIYANSHU- priyanshusingh0402.ps@gmail.com
 
 Kunal Ghosh- kunalghosh@gmail.com
 
 
