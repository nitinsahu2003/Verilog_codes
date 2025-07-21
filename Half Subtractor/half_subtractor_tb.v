module half_subtractor_tb;

// Inputs
reg a;
reg b;

// Outputs
wire diff;
wire borrow;

half_subtractor hs(
    .a(a), .b(b), .diff(diff), .borrow(borrow)
);

initial begin
    $dumpfile("half_subtractor.vcd");
    $dumpvars(0, half_subtractor_tb);

    $monitor($time, " a = %b, b = %b | diff = %b | borrow = %b", a, b, diff, borrow);

    a = 0; b = 0; #5;
    a = 0; b = 1; #5;
    a = 1; b = 0; #5;
    a = 1; b = 1; #5;
    $finish;
end

endmodule