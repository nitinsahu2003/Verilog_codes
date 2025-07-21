module full_adder_tb;

 // Inputs
 reg a;
 reg b;
 reg c;

 // Outputs
 wire sum;
 wire carry;

 full_adder FA(
    .a(a), .b(b), .c(c), .sum(sum), .carry(carry)
 );

 initial begin
    $dumpfile("full_adder.vcd"); // dumpfile created
    $dumpvars(0, full_adder_tb);

    $monitor($time, " a = %b, b = %b, c = %b, sum = %b, carry = %b", a, b, c, sum, carry); // Print command

    a = 0; b = 0; c = 0; #5;
    a = 0; b = 0; c = 1; #5;
    a = 0; b = 1; c = 0; #5;
    a = 0; b = 1; c = 1; #5;
    a = 1; b = 0; c = 0; #5;
    a = 1; b = 0; c = 1; #5;
    a = 1; b = 1; c = 0; #5;
    a = 1; b = 1; c = 1; #5;
    $finish;
 end
endmodule