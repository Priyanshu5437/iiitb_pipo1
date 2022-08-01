# read design

read_verilog /home/prashant/Desktop/iiitb_pipo/iiitb_pipo.v
# generic synthesis
synth -top iiitb_pipo

# mapping to mycells.lib
dfflibmap -liberty /home/prashant/Desktop/iiitb_pipo/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/prashant/Desktop/iiitb_pipo/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
# write synthesized design
write_verilog -noattr iiitb_pipo_synth.v
