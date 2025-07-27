module jk_ff (
    input wire clock,
    input wire J,
    input wire K,
    output reg Q
);
    initial Q = 0;

    always @(posedge clock) begin
        case ({J,K})
            2'b00 : ;
            2'b01 : Q <= 0;
            2'b10 : Q <= 1;
            2'b11 : Q <= ~Q;
        endcase
    end
    
endmodule