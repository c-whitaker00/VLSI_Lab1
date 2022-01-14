`timescale 1ns/10ps
module logic_ciruit(Y, E, W, clk);
output Y;
input E, W;
input clk;
wire QA, QB, DA, DB, g1, g2, g3, g4, g5, g6;


    dflipflop DFFA(QA, DA, clk);
    dflipflop DFFB(QB, DB, clk);

    or_three z1(DA, E, g3, g4);
    or_three z2(DB, W, g5, g6);
    not z3(g1, QB);
    not z4(g2, QA);
    and z5(g3, QA, g1);
    and z6(g5, QB, g2);
    and z7(g4, QA, W);
    and z8(g6, QB, E);    
    nand z9(Y, QA, QB);

endmodule










