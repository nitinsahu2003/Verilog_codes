module half_adder_tb;
 // Inputs
 reg a;
 reg b;

 // Outputs
 wire sum;
 wire cout;

 half_adder uut(
    .a(a), .b(b), .sum(sum), .cout(cout)
 );

 initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);

    $monitor($time ," a = %b, b = %b, sum = %b, cout = %b", a, b, sum, cout);

     a = 0; b = 0; #5;
     a = 0; b = 1; #5;
     a = 1; b = 0; #5;
     a = 1; b = 1; #5;
    $finish;
 end
endmodule