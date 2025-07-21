module rca_4bit (
    input[3:0] a, //input a
    input[3:0] b, //input b
    input cin, //carry input
    output[3:0] sum, //sum output
    output cout //carry output
);
    wire c1, c2, c3; // Intermediate carry wires

    rca_fa FA0(a[0], b[0], cin, sum[0], c1); // Full Adder 0
    rca_fa FA1(a[1], b[1], c1, sum[1], c2); // Full Adder 1
    rca_fa FA2(a[2], b[2], c2, sum[2], c3); // Full Adder 2
    rca_fa FA3(a[3], b[3], c3, sum[3], cout); // Full Adder 3

endmodule