`timescale 1ns/10ps
module conditional_add(S, Cout, X, Y, Ci);
output [7:0] S;
output Cout;
input [7:0] X;
input [7:0] Y;
input Ci; 
wire [7:0] S0;
wire [7:0] S1;
wire [7:0] C0;
wire [7:0] C1; 

    full_adder z1(S0[0], C0[0], X[0], Y[0], Ci);
    full_adder z1a(S1[0], C1[0], X[0], Y[0], Ci);

    full_adder z2(S0[1], C0[1], X[1], Y[1], 1'b0);
    full_adder z3(S1[1], C1[1], X[1], Y[1], 1'b1);

    full_adder z4(S0[2], C0[2], X[2], Y[2], 1'b0);
    full_adder z5(S1[2], C1[2], X[2], Y[2], 1'b1);

    full_adder z6(S0[3], C0[3], X[3], Y[3], 1'b0);
    full_adder z7(S1[3], C1[3], X[3], Y[3], 1'b1);
                                                    
    full_adder z8(S0[4], C0[4], X[4], Y[4], 1'b0);
    full_adder z9(S1[4], C1[4], X[4], Y[4], 1'b1);

    full_adder z10(S0[5], C0[5], X[5], Y[5], 1'b0);
    full_adder z11(S1[5], C1[5], X[5], Y[5], 1'b1);
                                                   
    full_adder z12(S0[6], C0[6], X[6], Y[6], 1'b0);
    full_adder z13(S1[6], C1[6], X[6], Y[6], 1'b1);

    full_adder z14(S0[7], C0[7], X[7], Y[7], 1'b0);
    full_adder z15(S1[7], C1[7], X[7], Y[7], 1'b1);

    assign S[1:0] = (C0[0]? {S1[1],S0[0]}:{S0[1],S0[0]};
    assign S[3:2] = (C0[2]? {S1[3],S0[2]}:{S0[3],S0[2]};
    assign S[7:6] = (C0[4]? {S1[5],S0[4]}:{S0[5],S0[4]};
    assign S[5:4] = (C0[6]? {S0[7],S0[6]}:{S1[7],S0[6]};

    assign Cout = (C0[0]? C1[1]:C0[1]);

endmodule


