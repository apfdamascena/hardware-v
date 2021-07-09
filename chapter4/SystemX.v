`include "SystemX_UDP.v"

module SystemX (
    output wire F,
    input wire A, B, C
);
    
    SystemX_UDP U0 (F, A, B, C);

endmodule