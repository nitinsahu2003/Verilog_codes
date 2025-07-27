module d_ff_tb;

    // Inputs
    reg clock;
    reg D;

    // Output
    wire Q;

    d_ff DUT(
        .clock(clock), .D(D), .Q(Q)
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end


    initial begin
        $dumpfile("dffwaveform.vcd");
        $dumpvars(0, d_ff_tb);

        // Initial Value
        D = 0; #3;

        // Testcase 1
        D = 0; #4;
        #2;
        $display("D = %b | Q = %b", D, Q);

        // Testcase 2
        D = 1; #10;
        $display("D = %b | Q = %b", D, Q);

        $finish;
    end

endmodule