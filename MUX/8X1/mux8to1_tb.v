module mux8to1_tb;
//Input
reg[7:0] in;
reg[2:0] sel;

//Output
wire y;

mux8to1 DUT(
    .in(in), .sel(sel), .y(y)
);

initial begin
    $dumpfile("mux8bit.vcd");
    $dumpvars(0, mux8to1_tb);
    $monitor($time, " sel = %d, y = %b", sel, y);
end

initial begin
    // Test case 
    in = 8'b10101010;
    sel = 3'b000;
    repeat(7) begin
        #10;
        sel = sel + 1;
    end
    #10;
    $finish;
end


endmodule