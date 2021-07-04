module encoder_1hot_4to2 (
    output wire [1:0] out,
    input wire [3:0] inp
);

    assign out[1] = inp[3] | inp[2];
    assign out[0] = inp[3] | inp[1]; 
endmodule