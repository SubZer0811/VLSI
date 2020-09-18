`include "32rdcla.v"

module top;
reg [31:0] a, b;
wire [31:0] s;
wire cout;
reg cin;

rdcla test (s, cout, a, b, cin);

initial
begin

	a = 32'd123;
	b = 32'd123;
	cin = 1'b1;
	
end
initial
	$monitor ("         a = %d;\n         b = %d;\n  carry_in = %d;\n       sum = %d;\n carry_out = %d;\n", a, b, cin, s, cout);

endmodule