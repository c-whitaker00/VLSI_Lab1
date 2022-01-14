`timescale 1ns/10ps
module machbehave(Y,E,W, clk); 
    output reg Y;
    input clk, E, W;
    reg [1:0] state;
    reg [1:0] Q;

    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;

    always @ (posedge clk) begin 
       state <= S0;
       case (state)
             S0:
             begin
               if (E == 1'b0 && W == 1'b0) begin
                 state <= S0;
               end else if (E == 1'b0 && W == 1'b1) begin
                 state <= S1;
               end else if (E == 1'b1 && W == 1'b0) begin
                 state <= S2;
               end else begin
                 state <= S3;
               end
             end
             S1:
             begin
               if (E == 1'b0 && W == 1'b0) begin
                 state <= S1;
               end else if (E == 1'b0 && W == 1'b1) begin
                 state <= S1;
               end else if (E == 1'b1 && W == 1'b0) begin
                 state <= S3;
               end else begin
                 state <= S3;
               end
             end
             S2:
             begin
               if (E == 1'b0 && W == 1'b0) begin
                 state <= S2;
               end else if (E == 1'b0 && W == 1'b1) begin
                 state <= S3;
               end else if (E == 1'b1 && W == 1'b0) begin
                 state <= S2;
               end else begin
                 state <= S3;
               end
             end
             S3:
             begin
               if (E == 1'b0 && W == 1'b0) begin
                 state <= S0;
               end else if (E == 1'b0 && W == 1'b1) begin
                 state <= S3;
               end else if (E == 1'b1 && W == 1'b0) begin
                 state <= S3;
               end else begin
                 state <= S3;
               end
             end
             default:
                 state <= S0;
             endcase
           end
    always@(state)
        begin
        case (state)
            S0: Y = 1'b1;
            S1: Y = 1'b0;
            S2: Y = 1'b0;
            S3: Y = 1'b0;
            end
    end

    always @ (state) begin
        case (state)
            S0:
            Q = 2'b00;
            S1:
            Q = 2'b01;
            S2:
            Q = 2'b10;
            S3:
            Q = 2'b11;
            default:
            Q = b'00;
            endcase
        end
endmodule









































































