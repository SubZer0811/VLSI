module FA (
	input [63:0] x,
	input [63:0] y,
	input [63:0] z,
	output [63:0] u,
	output [63:0] v);

// assign {v, u} = x+y+z;
assign u = x^y^z;
assign v[0] = 0;
assign v[63:1] = (x&y) | (y&z) | (z&x);

initial
begin
	#5 $display("u=%b, v=%b", u, v);
end
// assign v = v << 1;

// assign u = a ^ b ^ cin;
// assign ca=(a & b) | (a & cin) | (b & cin);

endmodule