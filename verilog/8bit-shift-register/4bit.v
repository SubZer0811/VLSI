`include "2bit.v"

module four_bitSR (s0, s1, ser_in_sl, ser_in_sr, par_in, par_out, clk);

	input s0, s1, ser_in_sl, ser_in_sr, clk;
	input [3:0] par_in;
	output [3:0] d, neg_out, par_out;

	two_bitSR SR_0 (s0, s1, ser_in_sl, par_out[2], par_in[1:0], par_out[1:0], clk);
	two_bitSR SR_1 (s0, s1, par_out[1], ser_in_sr, par_in[3:2], par_out[3:2], clk);

endmodule