`timescale 1ns/10ps

module testbench2;
  
  wire signed [9:0] Out;
  reg signed [4:0] X;
  reg signed [4:0] Y;
  
  localparam period = 20;
  
  signed_multiplier DUT(.Out(Out), .X(X), .Y(Y));
  initial
  
  begin
    
    X[4:0] = -5'b01101;
    Y[4:0] = 5'b01011;
    $display("Input1: %p", X);
    $display("Input2: %p", Y);
    #period;
    $display("%p", Out);

    X[4:0] = -5'b01010;
    Y[4:0] = 5'b00100;
    $display("Input1: %p", X);
    $display("Input2: %p", Y);
    #period;
    $display("%p", Out);


    X[4:0] = 5'b01011;
    Y[4:0] = -5'b00011;
    $display("Input1: %p", X);
    $display("Input2: %p", Y);
    #period;
    $display("%p", Out);


    X[4:0] = -5'b01010;
    Y[4:0] = -5'b01011;
    $display("Input1: %p", X);
    $display("Input2: %p", Y);
    #period;
    $display("%p", Out);
    
   
  end
  
endmodule