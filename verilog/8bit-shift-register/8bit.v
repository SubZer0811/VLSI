`include "4bit.v"

module eight_bitSR (s0, s1, ser_in_sl, ser_in_sr, par_in, par_out, clk);

	input s0, s1, ser_in_sl, ser_in_sr, clk;
	input [7:0] par_in;
	output [7:0] d, neg_out, par_out;

	four_bitSR SR_0 (s0, s1, ser_in_sl, par_out[4], par_in[3:0], par_out[3:0], clk);
	four_bitSR SR_1 (s0, s1, par_out[3], ser_in_sr, par_in[7:4], par_out[7:4], clk);

endmodule