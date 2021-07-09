primitive SystemX_UDP(
    output F,
    input A, B, C
);

    table
//      A B C : F
        0 0 0 : 1;
        0 0 1 : 0;
        0 1 0 : 1;
        0 1 1 : 0;
        1 0 0 : 0;
        1 0 1 : 0;
        1 1 0 : 1;
        1 1 1 : 0;

    endtable

endprimitive