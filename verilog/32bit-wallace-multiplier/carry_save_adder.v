module FA (
	input [63:0] x,
	input [63:0] y,
	input [63:0] z,
	output [63:0] u,
	output [63:0] v);

assign u = x^y^z;
assign v[0] = 0;
assign v[63:1] = (x&y) | (y&z) | (z&x);

endmodule