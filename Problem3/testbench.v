`timescale 1ns/10ps

module testbench;

    wire [7:0] S;
    wire Cout;
    reg [7:0] X, Y;
    reg Ci;

    localparam period = 20;

    conditional_add DUT(.S(S), .Cout(Cout), .X(X), .Y(Y), .Ci(Ci));
    initial begin

        X[7:0] = 8'b01101110;
        Y[7:0] = 8'b01010101;
        Ci = 1'b0;
        $display("Input1: %p", X);
        $display("Input2: %p", Y);
        #period
        $display("Output: %p", S);
        $display("Carry Out: %p", Cout);
    end
endmodule