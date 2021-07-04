`include"example.v"


module example_tb;

    reg A,B,C;
    wire F;

    Example uut (
        .F(F),
        .A(A),
        .B(B),
        .C(C)
    );

    initial begin

        $dumpfile("example.vcd");
        $dumpvars(0, example_tb);
        
        A=0;
        B=1;
        C=0;

        #100

        A=1;
        B=1;
        C=1;

        #100

        $display("testou");
    end
    
endmodule