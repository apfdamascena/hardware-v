`include "q5c.v"

module comparator_8bit (
    output Equal, Greater, Less,
    input EqualIn, GreaterIn, LessIn,
    input [7:0] A, B
);

    wire LowGreater, LowLess, LowEqual;

    comparator_4bit C1 (LowEqual, LowGreater, LowLess, EqualIn, GreaterIn, LessIn, A[3:0], B[3:0]); 
    comparator_4bit C2 (Equal, Greater, Less, LowEqual, LowGreater, LowLess, A[7:4], B[7:4]); 

endmodule