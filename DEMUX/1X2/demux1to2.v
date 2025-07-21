module demux1to2 (
    input wire in, // Single input
    input wire sel, // 1 select line
    output reg y0, y1
);
    always @(*) begin
        // Default output values set to zero
        y0 = 0;
        y1 = 0;

        case (sel)
            1'b0 : y0 = 0; 
            1'b1 : y1 = 1; 
        endcase
    end
endmodule