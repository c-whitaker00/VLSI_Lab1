`timescale 1ns/10ps
module half_adder(S, Cout, A, B);
output S, Cout;
input A, B;
    and z1(Cout, A, B);
    xor z2(S, A, B);
endmodule
