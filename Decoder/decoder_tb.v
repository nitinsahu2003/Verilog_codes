module decoder_tb;

    // Input
    reg [2 : 0] in;

    // Output
    wire[7 : 0] out;

    decoder DUT(
        .in(in), .out(out)
    );

    initial begin
        $dumpfile("decoderwaveform.vcd");
        $dumpvars(0, decoder_tb);
        $monitor($time, " in = %b | out = %b", in, out);
    end

    initial begin
        in = 3'b011; #10;
        
    end
endmodule