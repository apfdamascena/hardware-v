
`include "Q1a.v"

module SubtracterFour (
    A, B, Bin, Diff, Bout
);

    output [3:0] Difference;
    output Bout;
    input [3:0] A,B;
    input Bin;

    wire [3:1] Cn;

    FullSubtracter fullsub0 (
        A[0],
        B[0],
        Bin,
        Cn[1],
        Difference[0] 
    );

    FullSubtracter fullsub1 (
        A[1],
        B[1],
        Cn[1],
        Cn[2],
        Difference[1] 
    );

    FullSubtracter fullsub2 (
        A[2],
        B[2],
        Cn[2],
        Cn[3],
        Difference[2] 
    );

    FullSubtracter fullsub3 (
        A[3],
        B[3],
        Cn[3],
        Bout,
        Difference[3] 
    ); 
endmodule