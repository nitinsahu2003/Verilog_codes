module rca_4bit_tb;
// Inputs
reg[3:0] a, b;
reg cin;

//Outputs
wire[3:0] sum;
wire cout;

rca_4bit DUT(
    .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout) 
);

initial begin
    $dumpfile("rca4bit.vcd");
    $dumpvars(0, rca_4bit_tb);

    $monitor("sum = %b | cout = %b\n", sum, cout);

    // Test case 1
    a = 4'b1101; b = 4'b0111; cin = 0; #10;

    // Test case 2
    a = 4'b1110; b = 4'b0001; cin = 0; #10;

    // Test case 3
    a = 4'b1001; b = 4'b0111; cin = 0; #10;
    
end
endmodule