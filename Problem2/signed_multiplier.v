`timescale 1ns/10ps
module signed_multiplier(Out, X, Y);
output signed [9:0] Out;
input signed [4:0] X, Y;
wire g1, g2, g3, g4, g5, g6, g7, g8, g9, g10;
wire g11, g12, g13, g14, g15, g16, g17, g18, g19, g20;
wire g21, g22, g23, g24, g25, g26, g27, g28, g29, g30;
wire g31, g32, g33, g34, g35, g36, g37, g38, g39, g40;
wire g41, g42, g43, g44, g45;

    and a1(Out[0], X[0], Y[0]);
    and a2(g1, X[1], Y[0]);
    and a3(g2, X[2], Y[0]);
    and a4(g3, X[3], Y[0]);
    and a5(g4, X[4], Y[0]);

    and b1(g5, X[0], Y[1]);
    and b2(g6, X[1], Y[1]);
    and b3(g7, X[2], Y[1]);
    and b4(g8, X[3], Y[1]);
    and b5(g9, X[4], Y[1]);

    half_adder c1(Out[1], m1, g1, g5);
    full_adder c2(g10, m2, g2, g6, m1);
    full_adder c3(g11, m3, g3, g7, m2);
    full_adder c4(g12, m4, g4, g8, m3);
    full_adder c5(g13, m5, g9, g4, m4);
    full_adder c6(g14, m6, g9, g4, m5);
    full_adder c7(g15, m7, g9, g4, m6);
    full_adder c8(g16, m8, g9, g4, m7);
    full_adder c9(g17, m9, g9, g4, m8);

    and d1(g18, X[0], Y[2]);
    and d2(g19, X[1], Y[2]);
    and d3(g20, X[2], Y[2]);
    and d4(g21, X[3], Y[2]);
    and d5(g22, X[4], Y[2]);

    half_adder e1(Out[2], m10, g10, g18);
    full_adder e2(g23, m11, g11, g19, m10);
    full_adder e3(g24, m12, g12, g20, m11);
    full_adder e4(g25, m13, g13, g21, m12);
    full_adder e5(g26, m14, g14, g22, m13);
    full_adder e6(g27, m15, g15, g22, m14);
    full_adder e7(g28, m16, g16, g22, m15);
    full_adder e8(g29, out3, g17, g22, m16);

    and f1(g30, X[0], Y[3]);
    and f2(g31, X[1], Y[3]);
    and f3(g32, X[2], Y[3]);
    and f4(g33, X[3], Y[3]);
    and f5(g34, X[4], Y[3]);
 
    half_adder h1(Out[3], m17, g23, g30);
    full_adder h2(g35, m18, g24, g31, m17);
    full_adder h3(g36, m19, g25, g32, m18);
    full_adder h4(g37, m20, g26, g33, m19);
    full_adder h5(g38, m21, g27, g34, m20);
    full_adder h6(g39, m22, g34, g28, m21);
    full_adder h7(g40, out4, g34, g29, m22);

    nand i1(g41, X[0], Y[4]);
    nand i2(g42, X[1], Y[4]);
    nand i3(g43, X[2], Y[4]);
    nand i4(g44, X[3], Y[4]);
    nand i5(g45, X[4], Y[4]);

    full_adder j1(Out[4], m23, g35, g41, 1'b1);
    full_adder j2(Out[5], m24, g36, g42, m23);
    full_adder j3(Out[6], m25, g37, g43, m24);
    full_adder j4(Out[7], m26, g38, g44, m25);
    full_adder j5(Out[8], m27, g39, g45, m26);
    full_adder j6(Out[9], out5, g40, g45, m27);

endmodule












