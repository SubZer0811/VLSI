`include "8bit.v"

module testbench;

reg s0, s1;
reg ser_in_sl, ser_in_sr, ser_out, clk;
reg [7:0] par_in;
wire [7:0] par_out;

eight_bitSR SR (s0, s1, ser_in_sl, ser_in_sr, par_in, par_out, clk);

initial clk = 1'b1;
always #5 clk = ~clk;

initial
begin
	par_in = 8'b11111111; ser_in_sr = 1; ser_in_sl = 0; 
	
	#5 s0 = 1; s1 = 1;
	#5 s0 = 0; s1 = 1;
	#80 s0 = 1; s1 = 0;
	
end

initial
	$monitor($time, ":  par_out=%b", par_out);
	
initial
begin
	$dumpfile("8bit_sr.vcd");
	$dumpvars;
	#200 $finish;
end

endmodule
