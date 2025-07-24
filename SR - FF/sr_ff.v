module sr_ff (
    input wire clock,
    input wire S,
    input wire R,
    output reg Q = 0
);

    always @(posedge clock) begin
        case ({S, R})
            2'b00 : Q <= Q;  // Depicts no change
            2'b01 : Q <= 0;  // Depicts a reset
            2'b10 : Q <= 1;  // Depicts a set
            2'b11 : Q <= 1'bx;  // Depicts a invalid case
        endcase
    end
    
endmodule