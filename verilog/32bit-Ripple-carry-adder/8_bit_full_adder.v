`include "4_bit_full_adder.v"

module eightbitfulladder (a, b, ci, s, co);
input [7:0] a, b;
input ci;

output [7:0] s;
output co;

wire l1;

fourbitfulladder fa_0 (a[3:0], b[3:0], ci, s[3:0], l1);
fourbitfulladder fa_1 (a[7:4], b[7:4], l1, s[7:4], co);

endmodule