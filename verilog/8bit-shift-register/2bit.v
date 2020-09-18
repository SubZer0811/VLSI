`include "4:1-MUX.v"
`include "dff.v"

module two_bitSR (s0, s1, ser_in_sl, ser_in_sr, par_in, par_out, clk);

	input s0, s1, ser_in_sl, ser_in_sr, clk;
	input [1:0] par_in;
	output [1:0] d, neg_out, par_out;
	
	wire [1:0] l;

	dff dff_0 (l[0], clk, par_out[0], neg_out[0]);
	dff dff_1 (l[1], clk, par_out[1], neg_out[1]);

	four_one_mux mux_0 (l[0], par_out[0], par_out[1], ser_in_sl, par_in[0], s0, s1);
	four_one_mux mux_1 (l[1], par_out[1], ser_in_sr, par_out[0], par_in[1], s0, s1);

endmodule