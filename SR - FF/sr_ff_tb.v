module sr_ff_tb;    

    // Inputs
    reg clock;
    reg S;
    reg R;

    // Outputs
    wire Q;

    sr_ff DUT(
        .clock(clock), .S(S), .R(R), .Q(Q)
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    initial begin
        $dumpfile("srff.vcd");
        $dumpvars(0, sr_ff_tb);

        // TestCase 1
        S = 0; R = 0; #10;  // No change
        $display($time, " S = %b | R = %b | Q = %b", S, R, Q);

        // TestCase 2
        S = 1; R = 0; #10;  // Set
        $display($time, " S = %b | R = %b | Q = %b", S, R, Q);

        // TestCase 3
        S = 0; R = 1; #10;  // Reset
        $display($time, " S = %b | R = %b | Q = %b", S, R, Q);

        // TestCase 4
        S = 0; R = 0; #10;  // No change
        $display($time, " S = %b | R = %b | Q = %b", S, R, Q);

        // TestCase 5
        S = 1; R = 1; #10;  // Invalid
        $display($time, " S = %b | R = %b | Q = %b", S, R, Q);

        $finish;
    end
endmodule