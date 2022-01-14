`timescale 1ns/10ps
module nand_three(Out, A, B, C);
output Out;
input A, B, C;
wire g1, g2;
    nand z1(g1, A, B);
    nand z2(g2, g1, g1);
    nand z3(Out, g2, C);
endmodule