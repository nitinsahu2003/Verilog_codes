module encoder_tb;

    //Input
    reg[7 : 0] in;

    // Output
    wire[2 : 0] out;

    encoder DUT(
        .in(in), .out(out)
    );

    initial begin
        $dumpfile("encoderwaveform.vcd");
        $dumpvars(0, encoder_tb);
        $monitor("in = %b | out = %b", in, out);
    end

    initial begin
        in = 8'b1000001; #10;
    end

endmodule