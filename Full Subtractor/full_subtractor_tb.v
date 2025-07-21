module full_subtractor_tb;

// Inputs 
reg a;
reg b;
reg c;

// Outputs
wire diff;
wire borrow;

full_subtractor FS(
    .a(a), .b(b), .c(c), .diff(diff), .borrow(borrow)
);

initial begin
    // Testbench
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);

    $monitor(($time), " a = %b, b = %b, c = %b | diff = %b | borrow = %b", a, b, c, diff, borrow);

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