module priorityenc_tb;

    // Input
    reg[7:0] in;

    // Output
    wire[2:0] out;
    wire valid;

    priorityenc DUT(
        .in(in), .out(out), .valid(valid)
    );

    initial begin
        $dumpfile("priorityencwaveform.vcd");
        $dumpvars(0, priorityenc_tb);
        $monitor($time, " in = %b | out = %b | valid = %b", in, out, valid);
    end

    initial begin
        in = 8'b01000000; #10;  // in[6]
        in = 8'b10000000; #10;  // in[7]
        in = 8'b10101010; #10;  // Multiple high → should prioritize in[7]
        in = 8'b00011100; #10;  // Multiple high → should prioritize in[4]
    end
endmodule