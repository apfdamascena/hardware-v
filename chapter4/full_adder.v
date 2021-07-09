`timescale 1ns/1ps
`include "half_adder.v"

module full_adder (
    output wire Sum, Cout,
    input wire A, B, Cin 
);

    wire HA1_Sum, HA1_Cout, HA2_Cout;
    half_adder U1 (
        .Sum(HA1_Sum),
        .Cout(HA1_Cout),
        .A(A),
        .B(B));

    half_adder U2 (
        .Sum(Sum),
        .Cout(HA2_Cout),
        .A(HA1_Sum),
        .B(Cin));

    or #1 U3 (Cout, HA2_CoutM HA1_Cout); 

    
endmodule