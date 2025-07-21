module mux8to1 (
    input wire [7:0] in, // input lines
    input wire [2:0] sel, // select lines
    output wire y  // output line
);
    // Selecting input based on the value
    assign y = (sel == 3'b000) ? in[0] : 
               (sel == 3'b001) ? in[1] :
               (sel == 3'b010) ? in[2] :
               (sel == 3'b011) ? in[3] :
               (sel == 3'b100) ? in[4] :
               (sel == 3'b101) ? in[5] :
               (sel == 3'b110) ? in[6] :
                                 in[7];
endmodule