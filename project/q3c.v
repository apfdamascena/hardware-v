`timescale 1ns/1ps

module  (
    output wire F,
    input wire A, B,
    input wire [0:1] Sel
);

    always @(*) 
        begin case (Sel)
            2'b00: #10 F = ~A;
            2'b01: #10 F = B;
            2'b10: #10 F = ~B;
            2'b11: #10 F = 0;
        endcase
    end
endmodule