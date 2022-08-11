# iiitb_pipo- Parallel in parallel out shift register
INRODUCTION

Shift registers are some sort of sequential logic circuitries that are majorly deployed to store data in digital format and mainly for storage of digital data and in the digital circuit to hold temporary data [3]. They are a group of flip-flops connected in a chain so that the output from one flip-flop becomes the input of the next flip-flop. Most of the registers possess no characteristic internal sequence of states. All flip-flop is driven by a common clock, and all are reset simultaneously. There are basically five types of shift registers are present, such as Serial In - Serial Out (SISO), Serial In - Parallel Out(SIPO), Parallel In – Serial Out(PISO), Parallel In - Parallel Out(PIPO), and bidirectional shift registers. 

Register  
• A set of n flip-flops. 
• Each flip-flop stores one bit. 
• Two basic functions: data storage and data movement.

For parallel in - parallel out shift registers, all data bits appear on the parallel outputs immediately following the simultaneous entry of the data bits. The following circuit is a four-bit parallel in - parallel out shift register constructed by D flip-flops.  Fig. 1: Parallel in Parallel Out Design the D's are the parallel inputs and the Q's are the parallel outputs and “clear” is to reset the output of each flip-flop to the 0 logic level. Once the register is clocked, all the data at the D inputs appear at the corresponding Q outputs simultaneously.

BLOCK DIAGRAM




![Shift_reg5](https://user-images.githubusercontent.com/110079807/184118006-eb8baad2-4757-467d-aac2-61650bacb218.png)
