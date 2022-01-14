`timescale 1ns/10ps

module testbench;
    wire Y;
    reg E, W, clk;

    localparam period = 20;

    machbehave DUT(.Y(Y), .E(E), .W(W), .clk(clk));
    initial begin
        E = 1'b0;
        W = 1'b0;
        clk = 1'b0;
        forever #period clk = ~clk;
    end

    initial begin
        $display("Input %p", E);
        $display("Input %p", W);
        #period;
        #period;
        $display("Output: %p"), Y);

        E = 1'b0; 
        W = 1'b1;
        $display("Input %p", E);
        $display("Input %p", W);
        #period;
        #period;
        $display("Output: %p"), Y);

        E = 1'b1; 
        W = 1'b0;
        $display("Input %p", E);
        $display("Input %p", W);
        #period;
        #period;
        $display("Output: %p"), Y);

        E = 1'b1; 
        W = 1'b1;
        $display("Input %p", E);
        $display("Input %p", W);
        #period;
        #period;
        $display("Output: %p"), Y);
    end
endmodule




















