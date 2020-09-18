module four_one_mux (out, i0, i1, i2, i3, s0, s1);

	input i0, i1, i2, i3, s0, s1;
	output out;

	wire w0, w1, w2, w3, ns0, ns1;

	not not_0 (ns0, s0);
	not not_1 (ns1, s1);
	
	and and_0 (w0, ns0, ns1, i0);
	and and_1 (w1, s0, ns1, i1);
	and and_2 (w2, ns0, s1, i2);
	and and_3 (w3, s0, s1, i3);

	or or_0 (out, w0, w1, w2, w3);

endmodule