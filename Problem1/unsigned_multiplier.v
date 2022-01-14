`timescale 1ns/10ps
module unsigned_multiplier (P, A, B);
output [7:0] P;
input [3:0] A, B;
wire aw0, aw1, aw2, bw0, bw1, bw2, bw3, ax0, ax1, ax2;
wire bx0, bx1, bx2, bx3, ay0, ay1, ay2, by0, by1, by2, by3;
wire az0, az1, az2, bz0, bz1, bz2, bz3;

    adding_circuit1 w0(aw0, bw0, A[3], B[0], 1'b0, 1'b0);
    adding_circuit1 w1(aw1, bw1, A[2], B[0], 1'b0, 1'b0); 
    adding_circuit1 w2(aw2, bw2, A[1], B[0], 1'b0, 1'b0); 
    adding_circuit1 w3(P[0], bw3, A[0], B[0], 1'b0, 1'b0); 
    
    adding_circuit1 x0(ax0, bx0, A[3], B[1], 1'b0, bw0);
    adding_circuit1 x1(ax1, bx1, A[2], B[1], aw0, bw1); 
    adding_circuit1 x2(ax2, bx2, A[1], B[1], aw1, bw2); 
    adding_circuit1 x3(P[1], bx3, A[0], B[1], aw2, bw3);
    
    adding_circuit1 y0(ay0, by0, A[3], B[2], 1'b0, bx0);
    adding_circuit1 y1(ay1, by1, A[2], B[2], ax0, bx1); 
    adding_circuit1 y2(ay2, by2, A[1], B[2], ax1, bx2); 
    adding_circuit1 y3(P[2], by3, A[0], B[2], ax2, bx3); 
    
    adding_circuit1 z0(az0, bz0, A[3], B[3], 1'b0, by0);
    adding_circuit1 z1(az1, bz1, A[2], B[3], ay0, by1); 
    adding_circuit1 z2(az2, bz2, A[1], B[3], ay1, by2); 
    adding_circuit1 z3(P[3], bz3, A[0], B[3], ay2, by3); 
    
    full_adder g1(P[4], co1, az2, bz3, 1'b0);
    full_adder g2(P[5], co2, az1, bz2, co1);
    full_adder g3(P[6], co3, az0, bz1, co2);
    full_adder g4(P[7], co4, 1'b0, bz0, co3);
    
endmodule