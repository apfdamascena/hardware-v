module Example (
    output F,
    input A,B,C
);

    wire An;

    assign An = !A;
    assign F = (An && B) || C;
    
endmodule