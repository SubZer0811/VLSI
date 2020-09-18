module D1(z, a, b); 
	input [10:1] a, b; output z;
	assign z = a ^ b; 
endmodule 

module top;

reg [10:1] X, a;
reg o;
wire out;

D1 asdf (out, X, a);

initial
begin
	
end

initial
	$monitor($time, " X = %b; out = %b", X, out);

endmodule