module comparator_4bit (
    output reg EqualOut, GreaterOut, LessOut,
    input EqualIn, GreaterIn, LessIn,
    input [3:0] A,B
);

    initial begin
        EqualOut = 0;
        GreaterOut = 0;
        LessOut = 0;
    end


    always @(A, B, EqualIn, GreaterIn, LessIn) begin
        if( A > B )
            begin
                EqualOut = 0;
                GreaterOut = 1;
                LessOut = 0; 
            end
        else if ( A < B )
            begin
                EqualOut = 0;
                GreaterOut = 0;
                LessOut = 1; 
            end
        else if (GreaterIn == 1)
            begin
                EqualOut = 0;
                GreaterOut = 1;
                LessOut = 0; 
            end
        else if (LessIn == 1)
            begin
                EqualOut = 0;
                GreaterOut = 0;
                LessOut = 1; 
            end
        else
            begin
                EqualOut = 1;
                GreaterOut = 0;
                LessOut = 0; 
            end
    end
    
endmodule