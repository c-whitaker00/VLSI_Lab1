`timescale 1ns/10ps
module dflipflop(Q, D, clk);
output Q;
input D, clk;
wire Qbar;
wire g1, g2, g3, g4;
    nand z1(g1, g4, g2);
    nand z2(g2, g1, clk);
    nand_three z3(g3, clk, g2, g4); 
    nand z4(g4, D, g3);
    nand z5(Q, g2, Qbar);
    nand z6(Qbar, g3, Q);
endmodule
