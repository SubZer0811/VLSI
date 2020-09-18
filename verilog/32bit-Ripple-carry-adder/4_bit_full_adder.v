`include "1_bit_full_adder.v"

module fourbitfulladder (a, b, ci, s, co);
input [3:0] a, b;
input ci;

output [3:0] s;
output co;

wire l1, l2, l3;

onebitfulladder fa_0 (a[0], b[0], ci, s[0], l1);
onebitfulladder fa_1 (a[1], b[1], l1, s[1], l2);
onebitfulladder fa_2 (a[2], b[2], l2, s[2], l3);
onebitfulladder fa_3 (a[3], b[3], l3, s[3], co);

endmodule