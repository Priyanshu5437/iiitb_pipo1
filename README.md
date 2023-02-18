# iiitb_pipo- Parallel in parallel out shift register
parallel in - parallel out shift registers, all data bits appear on the parallel outputs immediately following the simultaneous entry of the data bits.

# Table of Contents

[Description](https://github.com/Priyanshu5437/iiitb_pipo#description)<br>
<br>
[Tools Used](https://github.com/Priyanshu5437/iiitb_pipo#tools-used)<br>
* [Icarus Verilog (iverilog) GTKWave installation](https://github.com/Priyanshu5437/iiitb_pipo#icarus-verilog-iverilog-gtkwave-installation)<br>
* [Yosys installation](https://github.com/Priyanshu5437/iiitb_pipo#yosys-installation)<br>
* [Python installation](https://github.com/Priyanshu5437/iiitb_pipo#python-installation)<br>
* [Docker installation](https://github.com/Priyanshu5437/iiitb_pipo#docker-installation)<br>
* [Openlane installation](https://github.com/Priyanshu5437/iiitb_pipo#openlane-installation)<br>
* [Magic installation](https://github.com/Priyanshu5437/iiitb_pipo#magic-installation)<br>
    - [installing csh](https://github.com/Priyanshu5437/iiitb_pipo#installing-csh)<br>
    - [installing x11/xorg](https://github.com/Priyanshu5437/iiitb_pipo#installing-x11xorg)<br>
    - [installing GCC](https://github.com/Priyanshu5437/iiitb_pipo#installing-gcc)<br>
    - [installing Build Essentials](https://github.com/Priyanshu5437/iiitb_pipo#installing-build-essential)<br>
    - [installing OpenGL](https://github.com/Priyanshu5437/iiitb_pipo#installing-opengl)<br>
    - [installing tcl/tk](https://github.com/Priyanshu5437/iiitb_pipo#installing-tcltk)
    - [installing magic](https://github.com/Priyanshu5437/iiitb_pipo#installing-magic)<br>
 * [klayout installation](https://github.com/Priyanshu5437/iiitb_pipo#klayout-installation)<br>
 * [ngspice installation](https://github.com/Priyanshu5437/iiitb_pipo#ngspice-installation)<br>


[PreSynthesis](https://github.com/Priyanshu5437/iiitb_pipo#presynthesis)<br>
 <br>
[PostSynthesis](https://github.com/Priyanshu5437/iiitb_pipo#postsynthesis)<br>
 <br>
 
 [Creating a Custom Cell](https://github.com/Priyanshu5437/iiitb_pipo/edit/main/README.md#creating-a-custom-inverter-cell)
 
[Layout](https://github.com/Priyanshu5437/iiitb_pipo#layout)<br>
 * [Preparation](https://github.com/Priyanshu5437/iiitb_pipo#preparation)<br>
 * [Synthesis](https://github.com/Priyanshu5437/iiitb_pipo#synthesis)<br>
     - [Synthesis Reports](https://github.com/Priyanshu5437/iiitb_pipo#synthesis-reports)<br>
 * [Floorplan](https://github.com/Priyanshu5437/iiitb_pipo#floorplan)<br>
     - [Floorplan Reports](https://github.com/Priyanshu5437/iiitb_pipo#floorplan-reports)<br>
 * [Placement](https://github.com/Priyanshu5437/iiitb_pipo#placement)<br>
     - [placement Reports](https://github.com/Priyanshu5437/iiitb_pipo#placement-reports)<br>
 * [Clock Tree Synthesis](https://github.com/Priyanshu5437/iiitb_pipo#clock-tree-synthesis)<br>
 * [Routing](https://github.com/Priyanshu5437/iiitb_pipo#routing)<br>
     - [Routing Reports](https://github.com/Priyanshu5437/iiitb_pipo#routing-reports)<br>


 [Note](https://github.com/Priyanshu5437/iiitb_pipo#note)<br>
 <br>

[Results Post Layout](https://github.com/Priyanshu5437/iiitb_pipo/blob/main/README.md#results-post-layout) <br>
* [1. Post layout synthesis gate count](https://github.com/Priyanshu5437/iiitb_pipo/blob/main/README.md#1-post-layout-synthesis-gate-count)<br>
* [2. Area (box command)](https://github.com/Priyanshu5437/iiitb_pipo/blob/main/README.md#2-area-box-command)<br>
* [3. Performance](https://github.com/Priyanshu5437/iiitb_pipo/blob/main/README.md#3-performance)<br>
* [4. Flop/Standard cell ratio](https://github.com/Priyanshu5437/iiitb_pipo/blob/main/README.md#4-flopstandard-cell-ratio)<br>
* [5. Power (internal,switching,leakage and total)](https://github.com/Priyanshu5437/iiitb_pipo/blob/main/README.md#5-power-internal-switching-leakage-and-total)<br>




[Errors and Solutions](https://github.com/Priyanshu5437/iiitb_pipo#errors-and-solutions)<br>
 * [Error 1 : make mount permission denied](https://github.com/Priyanshu5437/iiitb_pipo#error-1)<br>
 * [Error 2 : placement failed error](https://github.com/Priyanshu5437/iiitb_pipo#error-2)<br>
 * [Error 3 : Files name mismatch error](https://github.com/Priyanshu5437/iiitb_pipo#error-3)<br>
 * [Error 4 : No Macro Error](https://github.com/Priyanshu5437/iiitb_pipo#error-4)<br>
 * [Error 5 : sky130_vsdinv not reflecting in stat](https://github.com/Priyanshu5437/iiitb_pipo#error-5)<br>
 * [Error 6: List index out of range](https://github.com/Priyanshu5437/iiitb_pipo#error-6)<br>
 * [Error 7: Can't read sky130_vsdinv error in tcl window](https://github.com/Priyanshu5437/iiitb_pipo#error-7)<br>
 * [Error 8: PL_TARGET DENSITY error](https://github.com/Priyanshu5437/iiitb_pipo#error-8)<br>
 


 
 [References](https://github.com/Priyanshu5437/iiitb_pipo#reference)<br>
 [Author](https://github.com/Priyanshu5437/iiitb_pipo#author)<br>
 [Contributors](https://github.com/Priyanshu5437/iiitb_pipo#contributors)<br>
 [Acknowledgement](https://github.com/Priyanshu5437/iiitb_pipo#acknowledgement)<br>
 <br>

Descripton

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
To clone the repository and download the netlist files for simulation, enter the following command in your terminal

$ git clone https://github.com/Priyanshu5437/iiitb_pipo
After cloning the git repository, type the following in "iiitb_pipo" directory in the terminal for RTL Simulation.

$ iverilog iiitb_pipo.v iiitb_pipo_tb.v
$ ./a.out 
$ gtkwave iiitb_pipo_out.vcd
For synthesis, run "yosys_run.sh" file in the same directory in terminal.

$ yosys -s yosys_run.sh
The above commands create the netlist of iverilog code.

For Gate level syntheses(GLS), type the following in the same directory in terminal

$ iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 ../iiitb_pipo/verilog_model/primitives.v ../iiitb_pipo/verilog_model/sky130_fd_sc_hd.v iiitb_pipo_net.v iiitb_pipo_tb.v
To generate the simulation, type the following in the same directory in terminal

$ ./a.out
$ gtkwave iiitb_pipo.vcd
NETLIST
In electronic design, a netlist is a description of the connectivity of an electronic circuit.In its simplest form, a netlist consists of a list of the electronic components in a circuit and a list of the nodes they are connected to. A network (net) is a collection of two or more interconnected components.

![netlist](https://user-images.githubusercontent.com/110079807/185232556-0a08a701-6f81-4ec4-a659-ecb38c7289d9.png)

The above picture shows the netlist of this project after synthesis.
Post synthesis simulation

![post synthesis](https://user-images.githubusercontent.com/110079807/185232688-cc14aa7e-c6d9-453a-ba5e-ed6946daa4fd.png)

 
 # Tools Used
The installtion commands are given by taking ubuntu as the operating system.

For installating various softwares used in this project, open the terminal by right clicking on an empty space and type the respective commands in the terminal: <br>

<b> Note: If any of the commands that do not have sudo in the prefix doesnot go through, please add a prefix of sudo and try running it. </b>

## Icarus Verilog (iverilog) GTKWave installation

```
$ sudo apt-get update

$ sudo apt-get install iverilog gtkwave 
```

This can be installed on windows as well by directly downloading and installing the .exe file of icarus

## Yosys installation

Open the terminal by right clicking on am empty space in the directory u want to install and type the following commands:

```
$ git clone https://github.com/YosysHQ/yosys.git

$ cd yosys-master

$ sudo apt install make (If make is not installed please install it)

$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev

$ make

$ sudo make install
```

## Python Installation
```
$ sudo apt install -y build-essential python3 python3-venv python3-pip
```

## Docker Installation
```
$ sudo apt-get remove docker docker-engine docker.io containerd runc (removes older version of docker if installed)

$ sudo apt-get update

$ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
$ sudo mkdir -p /etc/apt/keyrings

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
$ sudo apt-get update

$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

$ apt-cache madison docker-ce (copy the version string you want to install)

$ sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io docker-compose-plugin (paste the version string copies in place of <VERSION_STRING>)

$ sudo docker run hello-world (If the docker is successfully installed u will get a success message here)
```

## OpenLane Installation
```
$ git clone https://github.com/The-OpenROAD-Project/OpenLane.git

$ cd OpenLane/

$ make

$ make test
```

## Magic Installation

For Magic to be installed and work properly the following softwares have to be installed first:

### Installing csh
```
$ sudo apt-get install csh
```

### Installing x11/xorg
```
$ sudo apt-get install x11

$ sudo apt-get install xorg

$ sudo apt-get install xorg openbox
```

### Installing GCC
```
$ sudo apt-get install gcc
```

### Installing build-essential
```
$ sudo apt-get install build-essential
```

### Installing OpenGL
```
$ sudo apt-get install freeglut3-dev
```

### Installing tcl/tk
```
$ sudo apt-get install tcl-dev tk-dev
```
### Installing magic
After all the softwares are installed, run the following commands for installing magic:

```
$ git clone https://github.com/RTimothyEdwards/magic

$ cd magic

$ ./configure

$ make

$ make install
```

## Klayout Installation

```
$ sudo apt-get install klayout
```

## ngspice Installation

```
$ sudo apt-get install ngspice
```

## Tapeout : Caravel flow installation

To start the project you first need to create a new repository based on the `caravel_user_project <https://github.com/efabless/caravel_user_project/>`_ template and make sure your repo is public and includes a README.

   *   Follow https://github.com/efabless/caravel_user_project/generate to create a new repository.
   *   Clone the reposity using the following command:
   
   
	$ git clone <your github repo URL>

    
   To setup your local environment run:
   
    $ cd <project_name> # project_name is the name of your repo
	
    $ mkdir dependencies
	
	$ export OPENLANE_ROOT=$(pwd)/dependencies/openlane_src # you need to export this whenever you start a new shell
	
	$ export PDK_ROOT=$(pwd)/dependencies/pdks # you need to export this whenever you start a new shell

	# export the PDK variant depending on your shuttle, if you don't know leave it to the default
	$ export PDK=sky130B

    $ make setup
   

# PreSynthesis

To clone the repository, download the netlist files and simulate the results, Enter the following commands in your terminal:

```
 $ git clone https://github.com/Priyanshu5437/iiitb_pipo

 $ cd iiitb_pipo
 
 $ iverilog -o iiitb_pipo_out.out iiitb_pipo.v iiitb_pipo_tb.v
 
 $ ./iiitb_pipo_out.out
 
 $ gtkwave iiitb_pipo_vcd.vcd
```

<p align="center">

![pre_synthesis](https://user-images.githubusercontent.com/110079807/219847344-3bd93fa5-aa12-40ea-a00a-17d32c6b7046.png)

# PostSynthesis

```
$ yosys

yosys> read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> read_verilog iiitb_pipo.v

yosys> synth -top iiitb_pipo

yosys> dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> stat

yosys> show

yosys> write_verilog iiitb_pipo_netlist.v

$ iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 ../verilog_model/primitives.v ../verilog_model/sky130_fd_sc_hd.v iiitb_pipo_netlist.v iiitb_pipo_tb.v

$ ./a.out

$ gtkwave iiitb_pipo_vcd.vcd
```
![post synthesis](https://user-images.githubusercontent.com/110079807/219847504-e17c2cf9-d570-491e-845e-4b423f93439e.png)
![netlist](https://user-images.githubusercontent.com/110079807/219847534-8798aa21-f330-4c64-ab48-b99122ad34eb.png)

# Creating a Custom Inverter Cell

Open Terminal in the folder you want to create the custom inverter cell.

```
$ git clone https://github.com/nickson-jose/vsdstdcelldesign.git

$ cd vsdstdcelldesign

$  cp ./libs/sky130A.tech sky130A.tech

$ magic -T sky130A.tech sky130_inv.mag &
```

![1](https://user-images.githubusercontent.com/62461290/187424346-c798a1a0-3e8b-43c8-a14a-7fc75e51ef2a.png)<br>

The above layout will open. The design can be verified and various layers can be seen and examined by selecting the area of examination and type `what` in the tcl window.

To extract Spice netlist, Type the following commands in tcl window.

```
% extract all

% ext2spice cthresh 0 rthresh 0

% ext2spice
```
`cthresh 0 rthresh 0` is used to extract parasitic capacitances from the cell.<br>

![2](https://user-images.githubusercontent.com/62461290/187435606-af09735d-64bf-4623-a4bf-e3bae9a2bd56.png)

The spice netlist has to be edited to add the libraries we are using, The final spice netlist should look like the following:

```
* SPICE3 file created from sky130_inv.ext - technology: sky130A

.option scale=0.01u
.include ./libs/pshort.lib
.include ./libs/nshort.lib



M1001 Y A VGND VGND nshort_model.0 ad=1435 pd=152 as=1365 ps=148 w=35 l=23
M1000 Y A VPWR VPWR pshort_model.0 ad=1443 pd=152 as=1517 ps=156 w=37 l=23
VDD VPWR 0 3.3V
VSS VGND 0 0V
Va A VGND PULSE(0V 3.3V 0 0.1ns 0.1ns 2ns 4ns)
C0 Y VPWR 0.08fF
C1 A Y 0.02fF
C2 A VPWR 0.08fF
C3 Y VGND 0.18fF
C4 VPWR VGND 0.74fF


.tran 1n 20n
.control
run
.endc
.end
```

Open the terminal in the directory where ngspice is stored and type the following command, ngspice console will open:

```
$ ngspice sky130_inv.spice 
```

![Screenshot from 2022-09-18 22-30-21](https://user-images.githubusercontent.com/110079807/219848002-0b9a4ea8-4d6e-4286-acd6-e5be88fde4f1.png)
Now you can plot the graphs for the designed inverter model.

```
-> plot y vs time a
```
![Screenshot from 2022-09-18 22-36-24](https://user-images.githubusercontent.com/110079807/219848079-dd4fcf82-fef1-4cc2-9611-7bafde35bac6.png)


Four timing parameters are used to characterize the inverter standard cell:<br>

1. Rise time: Time taken for the output to rise from 20% of max value to 80% of max value<br>
        `Rise time = (2.23843 - 2.17935) = 59.08ps`
2. Fall time- Time taken for the output to fall from 80% of max value to 20% of max value<br>
        `Fall time = (4.09291 - 4.05004) = 42.87ps`
3. Cell rise delay = time(50% output rise) - time(50% input fall)<br>
        `Cell rise delay = (2.20636 - 2.15) = 56.36ps`  
4. Cell fall delay  = time(50% output fall) - time(50% input rise)<br>
        `Cell fall delay = (4.07479 - 4.05) = 24.79ps`
        
To get a grid and to ensure the ports are placed correctly we can use
```
% grid 0.46um 0.34um 0.23um 0.17um
```
![Screenshot from 2022-09-17 09-39-14](https://user-images.githubusercontent.com/110079807/219848181-a52c8850-3eb5-4be7-89b7-8adc2353195d.png)



To save the file with a different name, use the folllowing command in tcl window
```
% save sky130_vsdinv.mag
```

Now open the sky130_vsdinv.mag using the magic command in terminal
```
$ magic -T sky130A.tech sky130_vsdinv.mag
```
In the tcl command type the following command to generate sky130_vsdinv.lef
```
$ lef write
```
A sky130_vsdinv.lef file will be created.


# Layout

## Preparation
The layout is generated using OpenLane. To run a custom design on openlane, Navigate to the openlane folder and run the following commands:<br>
```
$ cd designs

$ mkdir iiitb_pipo

$ cd iiitb_pipo

$ mkdir src

$ touch config.json

$ cd src

$ touch iiitb_pipo.v
```

The iiitb_pipo.v file should contain the verilog RTL code you have used and got the post synthesis simulation for. <br>

Copy  `sky130_fd_sc_hd__fast.lib`, `sky130_fd_sc_hd__slow.lib`, `sky130_fd_sc_hd__typical.lib` and `sky130_vsdinv.lef` files to `src` folder in your design. <br>

The final src folder should look like this: <br>


![Screenshot from 2023-02-18 13-26-36](https://user-images.githubusercontent.com/110079807/219848916-2ad1e5ef-9fed-4aaa-b0c3-194949432f6f.png)

The contents of the config.json are as follows. this can be modified specifically for your design as and when required. <br>

As mentioned by kunal sir dont use defined `DIE_AREA` and `FP_SIZING : absolute`, use `FP_SIZING : relative`
```
{
    "DESIGN_NAME": "iiitb_pipo",
    "VERILOG_FILES": "dir::src/iiitb_pipo.v",
    "CLOCK_PORT": "clkin",
    "CLOCK_NET": "clkin",
    "GLB_RESIZER_TIMING_OPTIMIZATIONS": true,
    "CLOCK_PERIOD": 10,
    "PL_TARGET_DENSITY": 0.7,
    "FP_SIZING" : "relative",
    "pdk::sky130*": {
        "FP_CORE_UTIL": 30,
        "scl::sky130_fd_sc_hd": {
            "FP_CORE_UTIL": 20
        }
    },
    
    "LIB_SYNTH": "dir::src/sky130_fd_sc_hd__typical.lib",
    "LIB_FASTEST": "dir::src/sky130_fd_sc_hd__fast.lib",
    "LIB_SLOWEST": "dir::src/sky130_fd_sc_hd__slow.lib",
    "LIB_TYPICAL": "dir::src/sky130_fd_sc_hd__typical.lib",  
    "TEST_EXTERNAL_GLOB": "dir::../iiitb_freqdiv/src/*"


}
```



Save all the changes made above and Navigate to the openlane folder in terminal and give the following command :<br>

```
$ make mount (if this command doesnot go through prefix it with sudo)
```
![Screenshot from 2022-09-19 16-11-30](https://user-images.githubusercontent.com/110079807/219849003-c9b3476f-f770-498c-b850-ee796714d600.png)

After entering the openlane container give the following command:<br>
```
$ ./flow.tcl -interactive
```
![Screenshot from 2022-09-19 16-11-50](https://user-images.githubusercontent.com/110079807/219849034-85067d3f-ba1f-4332-9dc7-6eaf97bbcaa1.png)

This command will take you into the tcl console. In the tcl console type the following commands:<br>

```
% package require openlane 0.9
```
![Screenshot from 2022-09-19 16-12-06](https://user-images.githubusercontent.com/110079807/219849171-8e500e57-d09f-41ee-9de2-2d1d78c64710.png)	
```
% prep -design iiitb_pipo
```
![Screenshot from 2022-09-19 17-31-18](https://user-images.githubusercontent.com/110079807/219849269-2f027710-3835-45f6-82ab-10a772ca466e.png)


The following commands are to merge external the lef files to the merged.nom.lef. In our case sky130_vsdiat is getting merged to the lef file <br>
```
set lefs [glob $::env(DESIGN_DIR)/src/*.lef]
add_lefs -src $lefs
```
![Screenshot from 2022-09-19 17-33-14](https://user-images.githubusercontent.com/110079807/219849306-b1faf800-f447-4fd8-8497-6fe79cec7772.png)

The contents of the merged.nom.lef file should contain the Macro definition of sky130_vsdinv <br>
<br>

![Screenshot from 2022-09-19 17-44-53](https://user-images.githubusercontent.com/110079807/219849335-facec5d5-416e-4434-9a68-30ab96dbd3cb.png)

## Synthesis
```
% run_synthesis
```
![Screenshot from 2022-09-19 17-55-39](https://user-images.githubusercontent.com/110079807/219849354-c5bae3ab-613f-415d-8f05-b1304d45bb17.png)
### Synthesis Reports
Details of the gates used <br>
<br>

![Screenshot from 2022-09-19 19-28-09](https://user-images.githubusercontent.com/110079807/219849849-d4d69361-3736-4659-80cd-587ad2eaa7bd.png)


Setup and Hold Slack after synthesis<br>
<br>
![Screenshot from 2022-09-19 20-28-37](https://user-images.githubusercontent.com/110079807/219849883-18311de6-9e61-40c0-8254-994b7bc6254e.png)

```
Flop Ratio = Ratio of total number of flip flops / Total number of cells present in the design = 8/71 = 0.1125
```
<br>



## Floorplan
```
% run_floorplan
```

![Screenshot from 2022-09-19 21-46-20](https://user-images.githubusercontent.com/110079807/219850209-76f2e6ae-76f5-4012-9be8-70267d87fa57.png)

### Floorplan Reports
Die Area <br>
	![Screenshot from 2022-09-19 21-49-18](https://user-images.githubusercontent.com/110079807/219850315-ced8229d-01f5-465e-94fb-56efebe54257.png)

<br>

Core Area <br>
	![Screenshot from 2022-09-19 21-48-51](https://user-images.githubusercontent.com/110079807/219850307-32613d5f-8cbb-4e3e-8146-29a3de587fa9.png)

<br>
	
Navigate to results->floorplan and type the Magic command in terminal to open the floorplan <br>
```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_freqdiv.def &
```
![14](https://user-images.githubusercontent.com/62461290/187059593-bdf6b441-9cb8-4838-a2a0-5638af1c7c02.png)<br>
<br>
Floorplan view <br>
<br>
![Screenshot from 2022-09-19 22-27-05](https://user-images.githubusercontent.com/110079807/219850416-f61f6bf0-9357-48aa-a941-c2c6602e4a13.png)

All the cells are placed in the left corner of the floorplan<br>
<br>
![15](https://user-images.githubusercontent.com/62461290/187059629-b135d6dd-dd77-4a0d-a322-6c8864a6210c.png)

## Placement
```
% run_placement
```
![16](https://user-images.githubusercontent.com/62461290/187059712-d8940d40-04f7-4eac-acf6-24ee71c79103.png)<br>

### Placement Reports
Navigate to results->placement and type the Magic command in terminal to open the placement view <br>
```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_freqdiv.def &
```
![19](https://user-images.githubusercontent.com/62461290/187059871-7f4746b1-87ec-40fb-827b-e76df64e3e3d.png)<br>
<br>
Placement View <br>
<br>
![17](https://user-images.githubusercontent.com/62461290/187059887-35c59d00-b959-4983-97f7-f229db63ca4b.png)<br>
<br>
![Screenshot 2022-08-28 112324](https://user-images.githubusercontent.com/62461290/187059896-3cd7613c-abdd-4838-81dc-0291a7a63241.png)<br>
<br>
<b>sky130_vsdinv</b> in the placement view :<br>
<br>
![18](https://user-images.githubusercontent.com/62461290/187059910-27dc9f35-9a5c-4518-8dc5-7c8238747b57.png)<br>
<br>
The sky130_vsdinv should also reflect in your netlist after placement <br>
<br>
![20](https://user-images.githubusercontent.com/62461290/187060017-d9e3eb1b-2cf6-4056-b7e8-4f9afd9daa5b.png)<br>

## Clock Tree Synthesis
```
% run_cts
```
![21](https://user-images.githubusercontent.com/62461290/187060069-447e33ad-952c-4303-92ac-cfbd45dd91b1.png)<br>

## Routing
```
% run_routing
```
![22](https://user-images.githubusercontent.com/62461290/187060096-ad41aab7-6435-45c8-a266-e6ebb955d691.png)<br>

### Routing Reports
Navigate to results->routing and type the Magic command in terminal to open the routing view <br>
```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_freqdiv.def &
```
![23](https://user-images.githubusercontent.com/62461290/187060186-ec8a606b-9f79-4bb4-b0fe-5088fed426bb.png)<br>
<br>
Routing View<br>
<br>
![24](https://user-images.githubusercontent.com/62461290/187060219-d3194c75-d7b6-44c8-b760-19688209ca30.png)<br>
<br>
![25](https://user-images.githubusercontent.com/62461290/187060241-5e1341a4-0293-4957-aded-f30660d226e2.png)<br>
<br>
<b>sky130_vsdinv</b> in the routing view :<br>
<br>
![26](https://user-images.githubusercontent.com/62461290/187060280-5f093b87-366e-4355-a506-aa140022c78a.png)<br>
<br>
Area report by magic :<br>
<br>
![27](https://user-images.githubusercontent.com/62461290/187060331-cb12a7ce-963a-420e-9b38-12f137c11e9c.png)<br>
<br>
The sky130_vsdinv should also reflect in your netlist after routing <br>
<br>
![28](https://user-images.githubusercontent.com/62461290/187060367-db21b544-21b1-4447-9756-bc7aa947d23d.png)<br>

## Viewing Layout in KLayout

![klayou1](https://user-images.githubusercontent.com/62461290/187060556-280c7dc4-0f2f-4c0b-aac3-eec6d542ee06.png) <br>

![klayout2](https://user-images.githubusercontent.com/62461290/187060558-73bbc257-a068-4a11-9cf8-f91d2556b72f.png)<br>

![klayout3](https://user-images.githubusercontent.com/62461290/187060560-52d90a53-e509-4319-ae06-3781c246f384.png)<br>


### NOTE
We can also run the whole flow at once instead of step by step process by giving the following command in openlane container<br>
```
$ ./flow.tcl -design iiitb_freqdiv
```
![100](https://user-images.githubusercontent.com/62461290/186196145-6850e928-d54a-404d-ad30-1fdb124a883b.png)<br>
<br>
All the steps will be automated and all the files will be generated.<br>

we can open the mag file and view the layout after the whole process by the following command, you can follow the path as per the image.<br>

```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech iiitb_freqdiv.mag &
```
<br>

![30](https://user-images.githubusercontent.com/62461290/186206184-3f146947-84d9-4178-9dd2-c54330067168.png)<br>
![31](https://user-images.githubusercontent.com/62461290/186206194-4ea81f2f-ab7f-4d34-840d-7aabff547774.png)<br>
![32](https://user-images.githubusercontent.com/62461290/186206196-526af125-b092-4bfc-9025-33dad27a3e6e.png)<br>

# Results post-layout

### 1. Post Layout synthesis gate count

![image](https://user-images.githubusercontent.com/62461290/192561109-5060bb00-2d5f-41c1-a6b1-f42803c02af1.png) <br>

<b><I> Gate Count = 71 </b></I> <br>

### 2. Area (box command)

![image](https://user-images.githubusercontent.com/62461290/192560025-fbbdb1ea-5964-48fe-81a5-bbf15ee119af.png) <br>

<b><I> Area = 5397.065 um2</b></I> <br>


### 3. Performance

```
$ sta <br>

OpenSTA> read_liberty -max /home/nandu/OpenLane/designs/iiitb_freqdiv/src/sky130_fd_sc_hd__fast.lib <br>

OpenSTA> read_liberty -min /home/nandu/OpenLane/designs/iiitb_freqdiv/src/sky130_fd_sc_hd__slow.lib <br>

OpenSTA> read_verilog /home/nandu/OpenLane/designs/iiitb_freqdiv/runs/RUN_2022.09.27_14.17.25/results/routing/iiitb_freqdiv.resized.v <br>

OpenSTA> link_design iiitb_freqdiv <br>

OpenSTA> read_sdc /home/nandu/OpenLane/designs/iiitb_freqdiv/runs/RUN_2022.09.27_14.17.25/results/cts/iiitb_freqdiv.sdc <br>

OpenSTA> read_spef /home/nandu/OpenLane/designs/iiitb_freqdiv/runs/RUN_2022.09.27_14.17.25/results/routing/iiitb_freqdiv.nom.spef <br>

OpenSTA> set_propagated_clock [all_clocks] <br>

OpenSTA> report_checks <br>
```

![image](https://user-images.githubusercontent.com/62461290/192555217-b263a4e2-cad6-44e3-8682-bb0b70840aa5.png)<br>

![image](https://user-images.githubusercontent.com/62461290/192554957-5c3adff3-850e-4f62-b842-7279bf1ebd6d.png)<br>

<b><I> Performance = 1/(clock period - slack) = 1/(10 - 1.70)ns = 120.482Mhz </b></I><br>

### 4. Flop/standard cell ratio

![image](https://user-images.githubusercontent.com/62461290/192561408-44f38899-38d3-4b34-89f5-1b25cb59a143.png) <br>


<b><I>Flop Ratio = Ratio of total number of flip flops / Total number of cells present in the design = 8/71 = 0.1125 </b></I><br>

### 5. Power (internal, switching, leakage and total)

![image](https://user-images.githubusercontent.com/62461290/192557539-51cbc494-67f6-4a8f-9b39-cd5da92613b5.png) <br>

<b><I> Internal Power = 97.9 uW (74.4%) </b></I><br>
<b><I> Switching Power = 33.7 uW (25.6%) </b></I><br>
<b><I> Leakage Power = 0.459 nW (0.00%) </b></I><br>
<b><I> Total Power = 132 uW (100%) </b></I><br>


# Tapeout : Caravel Flow

Installation screenshot<br>

![install](https://user-images.githubusercontent.com/62461290/189863557-51c9a9f6-9a74-4724-a18d-e66f681fe46e.png)<br>
<br>


We have to edit the `user_pro_example.v` according to our code and edit/add a suitable test bench to verify the design.<br>

```
$ make verify-user_proj_example-rtl
```

![rtltbpassed](https://user-images.githubusercontent.com/62461290/189860847-d078fda3-2cd0-4321-9aa8-9ce64dc6bfb5.png)<br>

![rtl_simulation_passed](https://user-images.githubusercontent.com/62461290/189860729-2fbee431-7c91-4daf-8c62-b001fe898098.png)<br>

```
$ make user_proj_example
```
![make_usr_proj](https://user-images.githubusercontent.com/62461290/189861056-547d6b5d-b3a2-465a-bf58-d85cce7797b6.png)<br>

![flow_comp](https://user-images.githubusercontent.com/62461290/189862072-0b5f53b4-4b54-4f14-ab18-84d7af667a26.png)<br>

Layout view of user_proj_example<br>

![image](https://user-images.githubusercontent.com/62461290/189861367-9e3e518f-400c-4afc-9a99-d38f2cb419d9.png)<br>

![image](https://user-images.githubusercontent.com/62461290/189861579-e83efe47-44be-4eb6-a2e2-5d1020ccf671.png)<br>

```
$ make verify-user_proj_example-gl
```

![gl_sim](https://user-images.githubusercontent.com/62461290/189861837-3370d52b-cb46-4852-b4d8-66e02468897a.png)

```
$ make user_project_wrapper
```
![make_wrapper](https://user-images.githubusercontent.com/62461290/189862235-e111ed9a-2aac-4193-a51c-886dd33a7e10.png)<br>

![flow_complete](https://user-images.githubusercontent.com/62461290/189862258-51be1548-e2f9-40b4-b631-f1f9eb9bff6e.png)<br>

Layout view of user_project_wrapper<br>

![image](https://user-images.githubusercontent.com/62461290/189862491-3945209f-d1d3-4a34-973b-5c0896f7f79d.png)<br>

![image](https://user-images.githubusercontent.com/62461290/189862669-03079397-9d46-451f-a939-5941e174e1b9.png)<br>

```
$ make precheck
```

![make_precheck](https://user-images.githubusercontent.com/62461290/189863143-e55aba4c-c160-4d16-ad0b-73d833438e7b.png)<br>

```
$ make run-precheck
```

![runcheck](https://user-images.githubusercontent.com/62461290/189863250-196c2d09-0058-410d-9f27-5e800d01a818.png)

![precheck_pass](https://user-images.githubusercontent.com/62461290/189863384-6dc85973-2722-4eef-9b45-00134598edad.png)



# Errors and Solutions
## Error 1

If the below error occurs while doing `make mount` replace it with `sudo make mount`<br>
<br>

![error1](https://user-images.githubusercontent.com/62461290/187061092-d76638cb-4fec-4071-b5d2-94c81fd06720.png)

## Error 2

If you face the below error play around with the values of `PL_TARGET_DENSITY`, `FP_CORE_UTIL` and `CLOCK_PERIOD` until it works for your design, these values are very custom for each and every design. <br>
<br>

![image](https://user-images.githubusercontent.com/62461290/187419005-df228345-7811-411d-8f2b-dd16107def0a.png)

## Error 3

Make sure the name of the module is same throughout, otherwise it will not infer the macro.<br>
<br>

![error3](https://user-images.githubusercontent.com/62461290/187060702-e99e2389-6518-4253-961f-4e639cbd1ecd.png)
![error4](https://user-images.githubusercontent.com/62461290/187060706-871d59b7-c212-40fa-b492-382d8ea94c04.png)
![error5](https://user-images.githubusercontent.com/62461290/187060692-91a34f20-d31f-4663-9dd2-ed9231811994.png)<br>

## Error 4

If you are getting the below error please add `"TEST_EXTERNAL_GLOB": "dir::../iiitb_freqdiv/src/*"` to the config.json file.
<br>
<br>

![error6](https://user-images.githubusercontent.com/62461290/187060745-62738ad9-241c-430d-bd5b-321c0d792b3d.png)<br>

## Error 5

If the sky130_vsdinv files are not getting reflected in stat even when the merging was successful and the cell is seen in the merged.nom.lef file. Please use the libraries uploaded in this github page to get the sky130_vsdinv to reflecct in your stat.<br>

`"SYNTH_DRIVING_CELL":"sky130_vsdinv"` please add this to the config.json file while including these libraries. <br>

## Error 6

If you are getting the below error, please check the file name and macro name of `sky130_vsdinv` shoud be same as the once mentioned in  `sky130_fd_sc_hd__fast.lib`, `sky130_fd_sc_hd__slow.lib`, `sky130_fd_sc_hd__typical.lib`<br>
<br>

![WhatsApp Image 2022-08-30 at 4 16 12 PM](https://user-images.githubusercontent.com/62461290/187418027-9c620ff6-c86f-4695-8e65-20ac84898742.jpeg)


## Error 7

If you are getting the below error, please use merged.nom.lef file while opening def files using magic. <br>

```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_freqdiv.def &
```

![error7](https://user-images.githubusercontent.com/62461290/187417649-cbafa63e-a68b-4497-9f59-eee3e6963b2c.png)

## Error 8
If you get the below error, change the `PL_TARGET_DENSITY` to the mentioned value.<br>
<br>
![error](https://user-images.githubusercontent.com/62461290/187060613-a21b3443-92fd-4e1e-8ab5-d17d5b7466d4.png)<br>


# Reference


- https://en.wikipedia.org/wiki/Pipo
- https://github.com/The-OpenROAD-Project/OpenLane

- https://github.com/YosysHQ/yosys

- https://github.com/kunalg123/sky130RTLDesignAndSynthesisWorkshop

- https://github.com/kunalg123/vsdflow

# Author

- Priyanshu

# Contributors
-Priyanshu </br>
- Dantu Nandini Devi </br>
- Kunal Ghosh </br>

# Acknowledgement


- Kunal Ghosh, VSD Corp. Pvt. Ltd. </br>
- Nanditha Rao, Professor, IIITB </br>
- Madhav Rao, Professor, IIITB </br>
- Efabless Corporation
- Skywater Foundry
- Open Road
- Google

# Contact Information

- Priyanshu, Mtech Student, IIITB, priyanshusingh0402.ps@gmail.com </br>
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com </br>
- Nanditha Rao, nanditha.rao@iiitb.ac.in </br>
- Madhav Rao, mr@iiitb.ac.in </br>
