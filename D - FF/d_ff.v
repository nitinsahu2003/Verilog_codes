module d_ff (
    input wire clock,
    input wire D,
    output reg Q
);
    initial Q = 0;
    always @(posedge clock) begin
        Q <= D;
    end
    
endmodule