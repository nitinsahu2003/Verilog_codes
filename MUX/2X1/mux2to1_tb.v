module mux2to1_tb;
// Inputs
reg a, b, sel;

// Outputs
wire y;

mux2to1 DUT(
    .a(a), .b(b), .sel(sel), .y(y)
);

initial begin

    $dumpfile("mux2bit.vcd");
    $dumpvars(0, mux2to1_tb);

    $monitor($time, " a = %b, b = %b, sel = %b | y = %b", a, b, sel, y);
    a = 0; b = 1; sel = 0; #10;
    a = 0; b = 1; sel = 1; #10;
    a = 1; b = 0; sel = 0; #10;
    a = 1; b = 0; sel = 1; #10;
end
endmodule