`include "q5c.v"
`timescale 1ns/1ps


module q5c_tb;

    reg [3:0] A, B;
    wire EqualOut, GreaterOut, LessOut; 
    wire EqualIn, GreaterIn, LessIn;


    comparator_4bit uut(

        .EqualOut(EqualOut),
        .GreaterOut(GreaterOut),
        .LessOut(LessOut),
        .EqualIn(EqualIn),
        .GreaterIn(GreaterIn),
        .LessIn(LessIn),
        .A(A),
        .B(B)
    );


    initial begin
        

        $dumpfile("q5c_tb.vcd");
        $dumpvars(0, q5c_tb);

        A = 4'b0;
        B = 4'b0;
        #100

        A = 4'b0100;
        B = 4'b0010;
        #100

        $display("testou");
    end




    
endmodule