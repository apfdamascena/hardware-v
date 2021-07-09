`timescale 1ns/1ps

module half_adder (
    output wire Sum, Cout,
    input wire A,B
);

    xor #1 U1 (Sum, A, B);
    and #1 U2 (Cout, A, B);
    
endmodule