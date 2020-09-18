`include "wallace.v"

module tbench;

reg [31:0] a, b;
wire [63:0]out;

wallace test (a, b, out);

initial
begin
	a = 32'b101;
	b = 32'b111;
end
always @(*)
begin
	// $monitor("a=%b\nb=%b", a, b);
end
	


endmodule