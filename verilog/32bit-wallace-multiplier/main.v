`include "partial_products.v"

module wallace;


reg [31:0] a, b;
wire [31:0][63:0]out;

initial
begin 
    a = 32'd123;
    b = 32'd10;
    $display("a=%b;\nb=%b", a, b);
end

partial_products pp (a, b, out);

endmodule