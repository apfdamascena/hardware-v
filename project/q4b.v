module q4b (
    output wire A,
    input wire B1, B2, B3,
    input wire [1:0] C
);


always @(C, B1, B2, B3) begin
    A = (C == 2'b01) ? B1 : ((C == 2'b10) ? B2 : ((C == 2'b11) ? B3 : 0));
end
    
endmodule