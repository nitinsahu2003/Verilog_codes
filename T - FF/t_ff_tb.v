module t_ff_tb;

    // Inputs
    reg clock;
    reg T;

    // Output
    wire Q;

    t_ff DUT(
        .clock(clock), .T(T), .Q(Q)
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    initial begin
        $dumpfile("tffwaveform.vcd");
        $dumpvars(0, t_ff_tb);

        // Initial Value
        T = 0; #12;

        // Testcase 1
        T = 0; #10;
        $display("T = %b | Q = %b", T, Q);

        //Testcase 2
        T = 1; #10;
        $display("T = %b | Q = %b", T, Q);

        // Testcase 3
        T = 0; #10;
        $display("T = %b | Q = %b", T, Q);

        //Testcase 4
        T = 1; #10;
        $display("T = %b | Q = %b", T, Q);

        $finish;
    end

endmodule