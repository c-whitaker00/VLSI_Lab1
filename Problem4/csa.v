`timescale 1ns/10ps
module csa(Sum, Co, A, B, C, D, E, F, G, H, I, J);
    output [11:0] Sum;
    output Co; 
    input [7:0] A, B, C, D, E, F, G, H, I, J;
    wire Co0, Co1, Co2, Co3, Co4, Co5, Co6, Co7, Co8;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;
    wire w11, w12, w13, w14, w15, w16, w17, w18, w19, w20; 
    wire w21, w22, w23, w24, w25, w26, w27, w28, w29, w30;   
    wire w31, w32, w33, w34, w35, w36, w37, w38, w39, w40; 
    wire w41, w42, w43, w44, w45, w46, w47, w48, w49, w50;  
    wire w51, w52, w53, w54, w55, w56, w57, w58, w59, w60; 
    wire w61, w62, w63, w64, w65, w66, w67, w68, w69, w70;  
    wire w71, w72, w73, w74, w75, w76, w77, w78, w79, w80; 
    wire w81, w82, w83, w84, w85, w86, w87, w88, w89, w90; 
    wire w91, w92, w93, w94, w95, w96, w97, w98, w99, w100; 
    wire w101, w102, w103, w104, w105, w107, w108, w109, w110; 
    wire w111, w112, w113, w114, w115, w116, w117, w118, w119, w120; 
    wire w121, w122, w123, w124, w125, w126, w127, w128, w129; 

    full_adder z1(w1, w2, B[0], C[0], A[0]);
    full_adder z2(w3, w4, B[1], C[1], A[1]);
    full_adder z3(w5, w6, B[2], C[2], A[2]);
    full_adder z4(w7, w8, B[3], C[3], A[3]);
    full_adder z5(w9, w10, B[4], C[4], A[4]);
    full_adder z6(w11, w12, B[5], C[5], A[5]);
    full_adder z7(w13, w14, B[6], C[6], A[6]);
    full_adder z8(w15, Co0, B[7], C[7], A[7]);

    full_adder z9(w16, w17, D[0], w1, 1'b0);
    full_adder z10(w18, w19, D[1], w3, w2);
    full_adder z11(w20, w21, D[2], w5, w4);
    full_adder z12(w22, w23, D[3], w7, w6);
    full_adder z13(w24, w25, D[4], w9, w8);
    full_adder z14(w26, w27, D[5], w11, w10);
    full_adder z15(w28, w29, D[6], w13, w12);
    full_adder z16(w30, Co1, D[7], w15, w14);

    full_adder z17(w31, w32, E[0], w16, 1'b0);
    full_adder z18(w33, w34, E[1], w18, w17);
    full_adder z19(w35, w36, E[2], w20, w19);
    full_adder z20(w37, w38, E[3], w22, w21);
    full_adder z21(w39, w40, E[4], w24, w23);
    full_adder z22(w41, w42, E[5], w26, w25);
    full_adder z23(w43, w44, E[6], w28, w27);
    full_adder z24(w45, Co2, E[7], w30, w29);

    full_adder z25(w46, w47, F[0], w31, 1'b0);
    full_adder z26(w48, w49, F[1], w33, w32);
    full_adder z27(w50, w51, F[2], w35, w34);
    full_adder z28(w52, w53, F[3], w37, w36);
    full_adder z29(w54, w55, F[4], w39, w38);
    full_adder z30(w56, w57, F[5], w41, w40);
    full_adder z31(w58, w59, F[6], w43, w42);
    full_adder z32(w60, Co3, F[7], w45, w44);

    full_adder z33(w61, w62, G[0], w46, 1'b0);
    full_adder z34(w63, w64, G[1], w48, w47);
    full_adder z35(w65, w66, G[2], w50, w49);
    full_adder z36(w67, w68, G[3], w52, w51);
    full_adder z37(w69, w70, G[4], w54, w53);
    full_adder z38(w71, w72, G[5], w56, w55);
    full_adder z39(w73, w74, G[6], w58, w57);
    full_adder z40(w75, Co4, G[7], w60, w59);

    full_adder z41(w76, w77, H[0], w61, 1'b0);
    full_adder z42(w78, w79, H[1], w63, w62);
    full_adder z43(w80, w81, H[2], w65, w64);
    full_adder z44(w82, w83, H[3], w67, w66);
    full_adder z45(w84, w85, H[4], w69, w68);
    full_adder z46(w86, w87, H[5], w71, w70);
    full_adder z47(w88, w89, H[6], w73, w72);
    full_adder z48(w90, Co5, H[7], w75, w74);

    full_adder z49(w91, w92, I[0], w76, 1'b0);
    full_adder z50(w93, w94, I[1], w78, w77);
    full_adder z51(w95, w96, I[2], w80, w79);
    full_adder z52(w97, w98, I[3], w82, w81);
    full_adder z53(w99, w100, I[4], w84, w83);
    full_adder z54(w101, w102, I[5], w86, w85);
    full_adder z55(w103, w104, I[6], w88, w87);
    full_adder z56(w105, Co6, I[7], w90, w89);

    full_adder z57(Sum[0], w107, J[0], w91, 1'b0);
    full_adder z58(w108, w109, J[1], w93, w92);
    full_adder z59(w110, w111, J[2], w95, w94);
    full_adder z60(w112, w113, J[3], w97, w96);
    full_adder z61(w114, w115, J[4], w99, w98);
    full_adder z62(w116, w117, J[5], w101, w100);
    full_adder z63(w118, w119, J[6], w103, w102);
    full_adder z64(w120, Co7, J[7], w105, w104);

    full_adder z65(Sum[1], w121, w107, w108, 1'b0);
    full_adder z66(Sum[2], w122, w109, w110, w121);
    full_adder z67(Sum[3], w123, w111, w112, w122);
    full_adder z68(Sum[4], w124, w113, w114, w123);
    full_adder z69(Sum[5], w125, w115, w116, w124);
    full_adder z70(Sum[6], w126, w117, w118, w125);
    full_adder z71(Sum[7], Co8, w119, w120, w126);

    full_adder z72(Sum[8], w127, Co7, Co6, Co8);
    full_adder z73(Sum[9], w128, Co5, Co4, w127);
    full_adder z74(Sum[10], w129, Co3, Co1, w128);
    full_adder z75(Sum[11], Co, Co1, Co0, w129);

endmodule


