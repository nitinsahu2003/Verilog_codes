module demux1to4 (
    input wire in, // Input wire
    input wire[1:0] sel, // Total Select lines
    output reg y0, y1, y2, y3 // Total Outputs
);
    always @(*) begin

        y0 = 0; y1 = 0; y2 = 0; y3 = 0; // Initialising all O/P to zero in starting
        case (sel)
            2'b00 : y0 = in; // Case I
            2'b01 : y1 = in; // Case II
            2'b10 : y2 = in; // Case III
            2'b11 : y3 = in; // Case IV
        endcase
    end
endmodule