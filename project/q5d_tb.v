`timescale 1ns/1ps

`include "q5d.v"

module q5d_tb;

    reg [7:0] A, B;
    wire Greater, Less, Equal;
    wire EqualIn, GreaterIn, LessIn;

    comparator_8bit uut (
        .Equal(Equal),
        .Greater(Greater),
        .Less(Less),
        .EqualIn(EqualIn),
        .GreaterIn(GreaterIn),
        .LessIn(LessIn),
        .A(A),
        .B(B));

    initial begin

        $dumpfile("q5d_tb.vcd");
        $dumpvars(0, q5d_tb);
        
        A = 8'b0;
        B = 8'b0;
        #100;

        A = 8'b00001000;
        B = 8'b00010000;
        #100

        $display("testou");
    end

endmodule