module partial_products (
	input [31:0]a,
	input [31:0]b,
	output reg [31:0][63:0]p_prods
);

	integer i;

	always @(a or b)
	begin
		for(i=0; i<32; i=i+1)begin
			if(b[i] == 1)begin
				p_prods[i] <= a << i;
			end
			else
				p_prods[i] = 64'h00000000;
		end
	end

endmodule