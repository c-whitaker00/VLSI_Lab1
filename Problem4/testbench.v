`timescale 1ns/10ps

module testbench;
    wire [11:0] Sum;
    wire Co;
    reg [7:0] A, B, C, D, E, F, G, H, I, J;

    localparam period = 20;

    csa DUT(.Sum(Sum), .Co(Co), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G), .H(H), .I(I), .J(J));
   
    initial begin
        A[7:0] = 8'b00000001;
        B[7:0] = 8'b00000010;
        C[7:0] = 8'b00000011;
        D[7:0] = 8'b00000100;
        E[7:0] = 8'b00000101;
        F[7:0] = 8'b00000110;
        G[7:0] = 8'b00000111;
        H[7:0] = 8'b00001000;
        I[7:0] = 8'b00001001;
        J[7:0] = 8'b00001010;
        $display("Cumulative sum from 1 to 10...");
        $display("Expecting 55...");
        #period;
        $display("Answer: %p, Carry out: %p", Sum, Co);


        A[7:0] = 8'b00000000;
        B[7:0] = 8'b00000000;
        C[7:0] = 8'b00000011;
        D[7:0] = 8'b00000100;
        E[7:0] = 8'b00000101;
        F[7:0] = 8'b00000110;
        G[7:0] = 8'b00000111;
        H[7:0] = 8'b00001000;
        I[7:0] = 8'b00001001;
        J[7:0] = 8'b00001010;
        $display("Cumulative sum from 3 to 10...");
        $display("Expecting 52...");
        #period;
        $display("Answer: %p, Carry out: %p", Sum, Co);


    end
endmodule









