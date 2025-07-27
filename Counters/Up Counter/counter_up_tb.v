module counter_up_tb;

    // Inputs
    reg clock;
    reg reset;

    // Output
    wire[3:0] count;

    counter_up DUT(
        .clock(clock), .reset(reset), .count(count)
    );

    always #5 clock = ~clock;

    initial begin
        clock = 0;
        reset = 1;
        #10;
        reset = 0;
        #160;
        $finish;
    end


    initial begin
        $dumpfile("upcounter4bit.vcd");
        $dumpvars(0, counter_up_tb);
        $monitor($time, " Reset = %b | Count = %b", reset,count);
    end
endmodule