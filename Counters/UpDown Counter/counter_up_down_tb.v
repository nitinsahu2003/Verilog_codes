module counter_up_down_tb;

    // Input
    reg clock;
    reg reset;
    reg mode;

    // Output
    wire[3:0] count;
    

    counter_up_down DUT (
        .clock(clock), .reset(reset), .mode(mode), .count(count)
    );

    always #5 clock = ~clock;

    initial begin
        reset = 1;
        clock = 0;
        mode = 1;
        #10;

        reset = 0;

        #100;

        mode = 0;

        #100;
        $finish;
    end

    initial begin
        $dumpfile("updowncounter.vcd");
        $dumpvars(0, counter_up_down_tb);
        $monitor($time," Reset = %b | Mode = %b | Count = %b", reset, mode, count);
    end
endmodule