module t_ff (
    input wire clock,
    input wire T,
    output reg Q 
);

    initial Q = 0;

    always @(posedge clock) begin
        if (T) begin
            Q <= ~Q;
        end
    end
    
endmodule