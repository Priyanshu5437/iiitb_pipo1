module iiitb_pipo_tb;

reg clk;

reg clear;

reg [3:0] pi;

wire [3:0] po;

iiitb_pipo uut (.clk(clk),.clear(clear),.pi(pi),.po(po) );



initial begin

clk = 0;

clear = 0;

pi = 0;
$dumpfile("tb_out.vcd");
$dumpvars(0, iiitb_pipo_tb);

#5 clear=1'b1;

#5 clear=1'b0;

#10 pi=4'b1001;

#10 pi=4'b1010;

#10 pi=4'b1011;

#10 pi=4'b1110;

#10 pi=4'b1111;

#10 pi=4'b0000;

end

always #5 clk = ~clk;

initial #150 $stop;

endmodule
