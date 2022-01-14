`timescale 1ns/10ps
module testbench;
  
  wire [7:0] P;
  reg [3:0] A;
  reg [3:0] B;
  
  localparam period = 20;
  
  unsigned_multiplier DUT(.P(P), .A(A), .B(B));
  initial
  
  begin
    
    A[3:0] = 4'b0010;
    B[3:0] = 4'b0100;
    $display("Input1 (in binary): %p %p %p %p, Input1 (Numerical): %p", A[3], A[2], A[1], A[0], A);
    $display("Input2 (in binary): %p %p %p %p, Input1 (Numerical): %p", B[3], B[2], B[1], B[0], B);
    #period;
    $display("Output (in binary): %p %p %p %p %p %p %p %p, Output (Numerical): %p", P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0], P);
    
    
    A[3:0] = 4'b1111;
    B[3:0] = 4'b0011;
    $display("Input1 (in binary): %p %p %p %p, Input1 (Numerical): %p", A[3], A[2], A[1], A[0], A);
    $display("Input2 (in binary): %p %p %p %p, Input1 (Numerical): %p", B[3], B[2], B[1], B[0], B);
    #period;
    $display("Output (in binary): %p %p %p %p %p %p %p %p, Output (Numerical): %p", P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0], P);
    
    
  end
  
endmodule
