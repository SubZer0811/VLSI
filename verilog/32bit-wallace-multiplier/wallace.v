`include "partial_products.v"
`include "carry_save_adder.v"

module wallace (
	input [31:0] a,
	input [31:0] b,
	output [63:0] out
);

	wire [31:0][63:0]p_prods;
	integer i;
	
	partial_products pp (a, b, p_prods);

	wire [63:0] u_l11, v_l11, u_l12, v_l12, u_l13, v_l13;

	// assign v_l11[0] = 0;
	// assign u_l11[63] = 0;
	FA l11 (p_prods[0][63:0], p_prods[1][63:0], p_prods[2][63:0], u_l11[63:0], v_l11[63:0]);
	FA l12 (p_prods[3][63:0], p_prods[4][63:0], p_prods[5][63:0], u_l12[63:0], v_l12[63:0]);
	
	
	initial
	begin
		#5 $display("u=%b\nv=%b\n", u_l11, v_l11);
		#5 $display("u=%b\nv=%b\n", u_l12, v_l12);
		for(i=0; i<4; i=i+1)
			$display("  %b", p_prods[i]);
	end

endmodule