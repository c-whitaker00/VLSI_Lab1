`timescale 1ns/10ps
module or_three(Out, A, B, C);
output Out;
input A, B, C;
wire g1;

    or z1(g1, A, B);
    or z2(Out, g1, C);

endmodule