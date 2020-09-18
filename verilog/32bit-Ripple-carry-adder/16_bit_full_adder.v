`include "8_bit_full_adder.v"

module sixteenbitfulladder (a, b, ci, s, co);
input [15:0] a, b;
input ci;

output [15:0] s;
output co;

wire l1;

eightbitfulladder fa_0 (a[7:0], b[7:0], ci, s[7:0], l1);
eightbitfulladder fa_1 (a[15:8], b[15:8], l1, s[15:8], co);

endmodule