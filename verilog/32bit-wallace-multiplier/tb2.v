`include "partial_products.v"

module tbench;

reg [31:0] a, b;
wire reg [31:0][63:0]out;

integer i;

partial_products test (a, b, out);

initial
begin
	a = 32'b101;
	b = 32'b111;

end
initial
begin
	#5 $display("im here\n");
	for(i=0;i<32;i=i+1)begin
		$display("%d:  %b", i, out[i]);
	end
	// $display("  %b", a);
	$display("im done\n");
//	$monitor("a=%b\nb=%b,\nout=%b", a, b,out);
end

endmodule