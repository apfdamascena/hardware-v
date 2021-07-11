`timescale 1ns/1ps


module q2 (
    output wire Z,
    input wire A, B, C, D
);

    wire L,M,N,O,P;

    assign #5 L = A & B & C;
    assign #5 M = L | D;
    assign #5 N = ~(B|C);
    assign #5 O = ~(N & A);
    assign #2 P = ~O;
    assign #5 Z = M ^ P; 
    
endmodule