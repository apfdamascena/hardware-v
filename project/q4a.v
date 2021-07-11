module q4a (
    output wire A,
    input wire B1, B2, B3,
    input wire [1:0] C
);

    always @(C,B1,B2,B3) begin

        if(C == 2'b01)
            A = B1;
        else if(C == 2'b10)
            A = B2;
        else if( C == 2'b11)
            A = B3;
        else
            A = 0; 
    end    
endmodule