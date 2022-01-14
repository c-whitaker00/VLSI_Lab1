`timescale 1ns/10ps
module adding_circuit1 (S, Cout, A, B, Sin, Cin);
output S, Cout;
input A, B, Cin, Sin;
    wire g1, g2, g3, g4;
    and z1(g1, A, B);
    xor z2(g2, g1, Sin);
    xor z3(S, g2, Cin);
    and z4(g3, Cin, g2);
    and z5(g4, g1, Sin);
    or z6(Cout, g3, g4);
endmodule
