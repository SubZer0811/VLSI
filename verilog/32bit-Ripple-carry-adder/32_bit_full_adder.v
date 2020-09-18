`include "16_bit_full_adder.v"

module thirtytwobitfulladder (a, b, ci, s, co);
input [31:0] a, b;
input ci;

output [31:0] s;
output co;

wire l1;

sixteenbitfulladder fa_0 (a[15:0], b[15:0], ci, s[15:0], l1);
sixteenbitfulladder fa_1 (a[31:16], b[31:16], l1, s[31:16], co);

endmodule