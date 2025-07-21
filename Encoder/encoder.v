module encoder (
    input [7:0] in,
    output reg[2:0] out
);
    always @(*) begin
        case (in)
            8'b00000001 : out = 3'b000; // First one high
            8'b00000010 : out = 3'b001; // Second one high
            8'b00000100 : out = 3'b010; // Third one high
            8'b00001000 : out = 3'b011; // Fourth one high
            8'b00010000 : out = 3'b100; // Fifth one high
            8'b00100000 : out = 3'b101; // Sixth one high
            8'b01000000 : out = 3'b110; // Seventh one high
            8'b10000000 : out = 3'b111; // Eighth one high     
            default : out = 3'b000;
        endcase
    end
endmodule