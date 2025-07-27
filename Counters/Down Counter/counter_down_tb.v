module counter_down_tb;

    // Inputs
    reg clock;
    reg reset;

    // Output
    wire[3:0] count;

    counter_down DUT(
        .clock(clock), .reset(reset), .count(count)
    );

    always #5 clock = ~clock;


    initial begin
        reset = 1;
        clock = 0;
        #10;

        reset = 0;

        #200;

        $finish;
    end

    initial begin
        $dumpfile("downcounter4bit.vcd");
        $dumpvars(0, counter_down_tb);
        $monitor($time, " Reset = %b | Count = %b", reset, count);
    end
endmodule