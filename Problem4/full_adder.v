`timescale 1ns/10ps
module full_adder (S, Cout, A, B, Cin);
output S, Cout;
input A, B, Cin;
    wire g1, g2, g3;
    xor z1(g1, A, B);
    xor z2(S, Cin, g1);
    and z3(a2, Cin, g1);
    and z4(a3, A, B);
    or z5(Cout, a2, a3);
endmodule

