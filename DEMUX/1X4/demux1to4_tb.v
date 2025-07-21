module demux1to4_tb;

    // Inputs
    reg in;
    reg[1:0] sel;

    // Outputs
    wire y0, y1, y2, y3;

    demux1to4 DUT(
        .in(in), .sel(sel), .y0(y0), .y1(y1), .y2(y2), .y3(y3)
    );

        initial begin
            $dumpfile("demux4bit.vcd");
            $dumpvars(0, demux1to4_tb);
            $monitor($time, " in = %b | sel = %b | y0 = %b | y1 = %b | y2 = %b | y3 = %b", in, sel, y0, y1, y2, y3);    
        end

        initial begin
            in = 1; #10;
            sel = 2'b00; #10;
            sel = 2'b01; #10;
            sel = 2'b10; #10;
            sel = 2'b11; #10;
            $finish;
        end
endmodule