module jk_ff_tb;

    // Inputs
    reg clock;
    reg J;
    reg K;

    // Output
    wire Q;

    jk_ff DUT(
        .clock(clock), .J(J), .K(K), .Q(Q)
    );
    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    initial begin
        $dumpfile("jkffwaveform.vcd");
        $dumpvars(0, jk_ff_tb);

        //Initial State
        J = 0; K = 0;

        // TestCase 1
         J = 0; K = 0; #3; 
         $display(" J = %b | K = %b | Q = %b", J, K, Q);

        // TestCase 2
         J = 0; K = 1; #10;
         $display(" J = %b | K = %b | Q = %b", J, K, Q);

        // TestCase 3
         J = 1; K = 0; #10; 
         $display(" J = %b | K = %b | Q = %b", J, K, Q);

        // TestCase 4
         J = 1; K = 1; #10;
         $display(" J = %b | K = %b | Q = %b", J, K, Q);


        #10 $finish;

    end
endmodule