`include "32_bit_full_adder.v"

module top;
reg [31:0] a, b;
reg ci;
wire [31:0] s;
wire co;

thirtytwobitfulladder testadder (a, b, ci, s, co);

initial
begin
	a = 32'd13245;
	#5 b = 32'd12345;
	#5 ci = 1'd1;
end

initial
	$monitor ($time, "  a = %d; b = %d; cin = %d; sum = %d; co = %d", a, b, ci, s, co);

endmodule