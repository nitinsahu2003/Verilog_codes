module demux1to2_tb;

    // Inputs
    reg in;
    reg sel;

    // Outputs
    wire y0, y1;

    demux1to2 DUT(
        .in(in), .sel(sel), .y0(y0), .y1(y1)
    );

    initial begin
        $dumpfile("demux2bit.vcd");
        $dumpvars(0, demux1to2_tb);
        $monitor($time, " in = %b | sel = %b | y0 = %b | y1 = %b", in, sel, y0, y1);
    end

    initial begin
        in = 0; 
        sel = 0; #10;

        sel = 1; #10;
        in = 1; #10;
        $finish;
    end
endmodule