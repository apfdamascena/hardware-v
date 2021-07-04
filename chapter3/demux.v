module demux_1to4 (
    output wire B,C,D,E,
    input wire A,
    input wire [1:0] Sel
);

    assign B = (A & ~Sel[1] &  ~Sel[0]);
    assign C = (A & ~Sel[1] & Sel[0]);
    assign D = (A & Sel[1] & ~Sel[0]);
    assign E = (A & Sel[1] & Sel[0]);
    
endmodule