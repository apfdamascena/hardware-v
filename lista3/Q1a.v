


module FullSubtracter (
    output difference, Bout,
    input A, B, Bin
); 

    assign difference =  A ^ B ^ Bin;
    assign Bout = ((~A) && B) | (B && Bin) | (Bin && (~A));

endmodule