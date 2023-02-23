# iiitb_pipo- Parallel in parallel out shift register
parallel in - parallel out shift registers, all data bits appear on the parallel outputs immediately following the simultaneous entry of the data bits.

### Descripton
Shift registers are a type of sequential logic circuitry that are primarily used for digital data storage and temporary data holding in digital circuits. They are made up of a series of interconnected flip-flops, with each flip-flop's output becoming the input of the next. Most shift registers do not have any inherent internal sequence of states, and are driven by a common clock and reset simultaneously. There are five main types of shift registers: Serial In - Serial Out (SISO), Serial In - Parallel Out (SIPO), Parallel In - Serial Out (PISO), Parallel In - Parallel Out (PIPO), and bidirectional shift registers. 

Register  
• A set of n flip-flops. 
• Each flip-flop stores one bit. 
• Two basic functions: data storage and data movement.

Parallel in - parallel out shift registers allow for immediate availability of all data bits on the parallel outputs once they are entered simultaneously. A four-bit parallel in - parallel out shift register constructed using D flip-flops is shown in Figure 1, where the parallel inputs are denoted as D, the parallel outputs as Q, and "clear" resets the output of each flip-flop to the 0 logic level. After being clocked, all the data at the D inputs appears simultaneously at the corresponding Q outputs

### Block Diagram

![Shift_reg5](https://user-images.githubusercontent.com/110079807/184118006-eb8baad2-4757-467d-aac2-61650bacb218.png)

### Operation of working

In Parallel-In Parallel-Out (PIPO) shift register input loads in parallel manner and also out in parallel manner. In this paper we are implementing the 4-bit PIPO shift register using Verilog HDL and it is simulated by the “iverilog” simulator tool and the result is stored in the .vcd (value change dump) format and can be viewed in the tool called “gtkwave”.
For testing the design, the test code is written in such a way so that we can verify the working of PIPO, for that we provided the input “pi” and “clk” and “clear” in a certain pattern. Using the “iverilog” tool, saved the result after applying the stimulus in to the .vcd format. later plotted the output with the help of “gtkwave” as shown in the Fig. 2, and it can be clearly seen that as we provide the “clk” for each positive edge the output “po” follow the “pi”. Also as the “clear” signal provided it with presence of the positive edge output “po“ get low.   

### RTL Simulation

 ![pre_synthesis](https://user-images.githubusercontent.com/110079807/185230950-fca19ccb-abf3-4144-b743-e57fac3ad7fc.png)
 
### Tools which is used
 
#### IVERILOG
Icarus Verilog is installed by using following command:
```
$ sudo apt install iverilog 
```
#### GTKWAVE
GTKWave is a VCD waveform viewer based on the GTK library. This viewer support VCD and LXT formats for signal dumps.
```
$ sudo apt install gtkwave 
```
#### YOSYS
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.
Synthesis transforms the simple RTL design into a gate-level netlist with all the constraints as specified by the designer. In simple language, Synthesis is a process that converts the abstract form of design to a properly implemented chip in terms of logic gates.

Synthesis takes place in multiple steps:

- Converting RTL into simple logic gates.
- Mapping those gates to actual technology-dependent logic gates available in the technology libraries.
- Optimizing the mapped netlist keeping the constraints set by the designer intact.
- Yosys can be adapted to perform any synthesis job by combining the existing passes (algorithms) using synthesis scripts and adding additional passes   as needed by extending the yosys C++ code base.
- Yosys is free software licensed under the ISC license (a GPL compatible license that is similar in terms to the MIT license or the 2-clause BSD  license).

##### To install Yosys follow the following steps:
```
$ sudo apt-get install build-essential clang bison flex \ libreadline-dev gawk tcl-dev libffi-dev git \ graphviz xdot pkg-config python3 libboost-system-dev \ libboost-python-dev libboost-filesystem-dev zlib1g-dev
```
##### To configure the build system to use a specific compiler, use one of the following command:
```
$ make config-clang
$ make config-gcc
```
##### To build Yosys simply type 'make' in this directory.
```
$ make
$ sudo make install
$ make test
```
#### GLS- Gate Level Simulation
GLS is generating the simulation output by running test bench with netlist file generated from synthesis as design under test. Netlist is logically same as RTL code, therefore, same test bench can be used for it.
Below picture gives an insight of the procedure. Here while using iverilog, you also include gate level verilog models to generate GLS simulation.

![183838608-b56e1d75-929d-492a-b112-8203a5e40cff](https://user-images.githubusercontent.com/110079807/185231441-8ae2f7ca-5af4-4df3-8a31-8649b3e68970.png)
To clone the repository and download the netlist files for simulation, enter the following command in your terminal

$ git clone https://github.com/Priyanshu5437/iiitb_pipo

After cloning the git repository, type the following in "iiitb_pipo" directory in the terminal for RTL Simulation.
```
$ iverilog iiitb_pipo.v iiitb_pipo_tb.v
$ ./a.out 
$ gtkwave iiitb_pipo_out.vcd
```
For synthesis, run "yosys_run.sh" file in the same directory in terminal.
```
$ yosys -s yosys_run.sh
```
The above commands create the netlist of iverilog code.

For Gate level syntheses(GLS), type the following in the same directory in terminal

$ iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 ../iiitb_pipo/verilog_model/primitives.v ../iiitb_pipo/verilog_model/sky130_fd_sc_hd.v iiitb_pipo_net.v iiitb_pipo_tb.v
To generate the simulation, type the following in the same directory in terminal

$ ./a.out
$ gtkwave iiitb_pipo.vcd
#### NETLIST
In electronic design, a netlist is a description of the connectivity of an electronic circuit.In its simplest form, a netlist consists of a list of the electronic components in a circuit and a list of the nodes they are connected to. A network (net) is a collection of two or more interconnected components.

![netlist](https://user-images.githubusercontent.com/110079807/185232556-0a08a701-6f81-4ec4-a659-ecb38c7289d9.png)
The above picture shows the netlist of this project after synthesis.

#### Post synthesis simulation

![post synthesis](https://user-images.githubusercontent.com/110079807/185232688-cc14aa7e-c6d9-453a-ba5e-ed6946daa4fd.png)

# Tools Used

### Layout
#### OpenLane and Magic Tool Installation
##### Installation of Python3
```
$ sudo apt install -y build-essential python3 python3-venv python3-pip
```
##### Installation of Docker
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
##### Installation of OpenLane on ubuntu
```
$ git clone https://github.com/The-OpenROAD-Project/OpenLane.git
$ cd OpenLane/
$ make
$ make test
```
##### Installation of magic on ubuntu
Additional packages to be installed as a part of system requirements to compile magic before magic installation.<br>
###### Installing M4 preprocessor
```
$ sudo apt-get install m4
```
###### Installing tcsh shell
```
$ sudo apt-get install tcsh
```
###### Installing csh shell
```
$ sudo apt-get install csh 
```
###### Installing Xlib.h
```
$ sudo apt-get install libx11-dev
```
###### Installing Tcl/Tk
```
$ sudo apt-get install tcl-dev tk-dev
```
###### Installing Cairo
```
$ sudo apt-get install libcairo2-dev
```
###### Installing OpenGL
```
$ sudo apt-get install mesa-common-dev libglu1-mesa-dev
```
###### Installing ncurses
```
$ sudo apt-get install libncurses-dev
```
###### Installing Magic
```
$ git clone https://github.com/RTimothyEdwards/magic
$ cd magic
$ ./configure
$ make
$ make install
```
##### Installing Klayout
```
$ sudo apt-get install klayout
```

   

# PreSynthesis

To clone the repository, download the netlist files and simulate the results, Enter the following commands in your terminal:

```
 $ git clone https://github.com/Priyanshu5437/iiitb_pipo

 $ cd iiitb_pipo
 
 $ iverilog -o iiitb_pipo_out.out iiitb_pipo.v iiitb_pipo_tb.v
 
 $ ./iiitb_pipo_out.out
 
 $ gtkwave iiitb_pipo_vcd.vcd
```



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



-> plot y vs time a

![Screenshot from 2022-09-18 22-36-24](https://user-images.githubusercontent.com/110079807/219848079-dd4fcf82-fef1-4cc2-9611-7bafde35bac6.png)




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
        "FP_PDN_VPITCH" : 7.6, 
        "FP_PDN_HPITCH" : 7.6,

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
        "TEST_EXTERNAL_GLOB": "dir::../iiitb_pipo/src/*"
}
```

Saving changes done and Navigate to the openlane folder in terminal and give  command :<br>

```
$ sudo make mount
```
![Screenshot from 2022-09-19 16-11-30](https://user-images.githubusercontent.com/110079807/219849003-c9b3476f-f770-498c-b850-ee796714d600.png)

After entering the openlane container give the following command:<br>
```
$ ./flow.tcl -interactive
```
![Screenshot from 2022-09-19 16-11-50](https://user-images.githubusercontent.com/110079807/219849034-85067d3f-ba1f-4332-9dc7-6eaf97bbcaa1.png)

In tcl console we need to enter command

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
$ magic -T /home/priyanshu/OpenLane/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_pipo.def &
```
![Screenshot from 2023-02-18 20-39-49](https://user-images.githubusercontent.com/110079807/219873283-0db47e9d-610d-43e0-bfef-534f6de8f719.png)

<br>
Floorplan view <br>

![Screenshot from 2023-02-18 20-14-22](https://user-images.githubusercontent.com/110079807/219873443-239b5100-f626-404a-83e6-413841cbbbe9.png)

All the cells are placed in the left corner of the floorplan<br>
<br>
![Screenshot from 2023-02-18 20-15-13](https://user-images.githubusercontent.com/110079807/219873460-8fbb7796-5819-46a3-aa07-ed7473665fc1.png)
![Screenshot from 2023-02-18 20-21-49](https://user-images.githubusercontent.com/110079807/219873471-97fb4052-cef8-4e18-8b8f-414565cb3c96.png)


## Placement
```
% run_placement
```
![Screenshot from 2023-02-18 20-45-52](https://user-images.githubusercontent.com/110079807/219873524-41b82314-ddc0-4631-a682-1c184d5b78d1.png)

### Placement Reports
Navigate to results->placement and type the Magic command in terminal to open the placement view <br>
```
$ magic -T /home/priyanshu/OpenLane/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_pipo.def &
```
![Screenshot from 2023-02-18 20-47-11](https://user-images.githubusercontent.com/110079807/219873591-5dea400a-3bef-4614-bd7d-bdddf9168745.png)

<br>
Placement View <br>

![Screenshot from 2023-02-18 20-27-24](https://user-images.githubusercontent.com/110079807/219873675-4039112f-1957-4489-9c2d-bd99f0bd4837.png)

<br>


## Clock Tree Synthesis
```
% run_cts
```
![Screenshot from 2023-02-18 20-52-30](https://user-images.githubusercontent.com/110079807/219873859-feb52e5a-eed8-4398-96a4-555abcc98099.png)



## Routing
```
% run_routing
```
![Screenshot from 2023-02-18 20-53-51](https://user-images.githubusercontent.com/110079807/219873924-df68a472-bcc9-484f-a852-3c2bfa462d8f.png)


### Routing Reports
Navigate to results->routing and type the Magic command in terminal to open the routing view <br>
```
$ magic -T /home/priyanshu/OpenLane/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_pipo.def &
```
![Screenshot from 2023-02-22 21-15-53](https://user-images.githubusercontent.com/110079807/220677063-c0f5268f-db3c-44e3-84a3-ea4fa0ffcb04.png)


Routing View<br>
<br>
![Screenshot from 2023-02-18 20-27-24](https://user-images.githubusercontent.com/110079807/219874050-a4102530-595d-434c-93a7-d91200ec152b.png)


![Screenshot from 2023-02-18 20-29-05](https://user-images.githubusercontent.com/110079807/219874061-d5bef437-5bfa-43a7-950f-2eef9ce3bfde.png)

<br>

### Area Report by MAGIC :<br>

![Screenshot from 2023-02-22 21-02-37](https://user-images.githubusercontent.com/110079807/220673111-90357f49-a82a-4ecc-b3bd-291b17cfabfd.png)

<br>


### NOTE
We can also run the whole flow at once instead of step by step process by giving the following command in openlane container<br>
```
$ ./flow.tcl -design iiitb_pipo
```
![Screenshot from 2023-02-18 21-10-46](https://user-images.githubusercontent.com/110079807/219874929-ae521c9a-6db2-411f-9cfe-17413166bf1f.png)
![Screenshot from 2023-02-18 21-17-47](https://user-images.githubusercontent.com/110079807/219877396-8bf68f8a-a7b1-4f35-9cc1-862f6572e02c.png)
![Screenshot from 2023-02-18 21-17-57](https://user-images.githubusercontent.com/110079807/219877398-15813ff0-dedb-4afb-92ec-78703603a4a0.png)
![Screenshot from 2023-02-18 21-18-03](https://user-images.githubusercontent.com/110079807/219877400-afac913d-e4f6-4149-be8d-72590052f16d.png)
![Screenshot from 2023-02-18 21-18-09](https://user-images.githubusercontent.com/110079807/219877404-b8eb5b3d-0445-4861-837d-5f5f76ca1ed0.png)
![Screenshot from 2023-02-18 21-18-14](https://user-images.githubusercontent.com/110079807/219877406-17ae4608-b49b-4752-ae09-ef9c6a771df3.png)

	
	
All the steps will be automated and all the files will be generated.<br>

we can open the mag file and view the layout after the whole process by the following command, you can follow the path as per the image.<br>


![Screenshot from 2023-02-18 21-18-49](https://user-images.githubusercontent.com/110079807/219875319-f42c5da3-a778-4e3d-a888-10f1ac3ca045.png)




![Screenshot from 2023-02-18 21-19-30](https://user-images.githubusercontent.com/110079807/219877448-cf19bc45-30f4-4c23-b3ce-44ea3c58d2de.png)


# Results post-layout

### 1. Post Layout synthesis gate count
![Screenshot from 2023-02-19 01-02-22](https://user-images.githubusercontent.com/110079807/219961967-606da75f-2bec-4a86-a95c-bdf60c4147f2.png)



<b><I> Gate Count =12 </b></I> <br>

### 2. Area (box command)

![Screenshot from 2023-02-22 15-09-22](https://user-images.githubusercontent.com/110079807/220583107-4c1a5b30-62fa-4dff-8072-1473e1e56744.png)


<b><I> Area = 1769.030 um2</b></I> <br>


### 3. Flop/standard cell ratio


![Screenshot from 2023-02-19 02-24-02](https://user-images.githubusercontent.com/110079807/219962234-6c67ea7c-3dcf-4d2f-9b18-72a4195af8c3.png)

<b><I>Flop Ratio = Ratio of total number of flip flops / Total number of cells present in the design = 4/12 = 0.333 </b></I><br>

### 4. Power (internal, switching, leakage and total)

![Screenshot from 2023-02-19 02-38-49](https://user-images.githubusercontent.com/110079807/219899611-cc8e61de-91cd-4df5-bd88-a876dc7f309c.png)
 <br>

<b><I> Internal Power = 3.02 uW (72.4%) </b></I><br>
<b><I> Switching Power =  1.15 uW (27.6%) </b></I><br>
<b><I> Leakage Power = 0.141 nW (0.00%) </b></I><br>
<b><I> Total Power = 4.18 uW (100%) </b></I><br>

### Reference


- https://en.wikipedia.org/wiki/Pipo
- https://github.com/The-OpenROAD-Project/OpenLane

- https://github.com/YosysHQ/yosys

- https://github.com/kunalg123/sky130RTLDesignAndSynthesisWorkshop

- https://github.com/kunalg123/vsdflow

### Author

- Priyanshu

### Contributors
- Priyanshu </br>
- Dantu Nandini Devi </br>
- Kunal Ghosh </br>

### Acknowledgement


- Kunal Ghosh, VSD Corp. Pvt. Ltd. </br>
- Nanditha Rao, Professor, IIITB </br>
- Madhav Rao, Professor, IIITB </br>
- Efabless Corporation
- Skywater Foundry
- Open Road
- Google

### Contact Information

- Priyanshu, Mtech Student, IIITB, priyanshusingh0402.ps@gmail.com </br>
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com </br>
- Nanditha Rao, nanditha.rao@iiitb.ac.in </br>
- Madhav Rao, mr@iiitb.ac.in </br>
