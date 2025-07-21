module demux1to8_tb;
    //Input
    reg in;
    reg[2:0] sel;

    // Outputs
    wire[7 : 0] out;

    demux1to8 DUT(
        .in(in), .sel(sel), .out(out)
    );

    initial begin
        $dumpfile("demux8bit.vcd");
        $dumpvars(0, demux1to8_tb);
        $monitor($time, " in = %b | sel = %b | out = %b", in, sel, out);
    end

    initial begin
        in = 1; #10;
        sel = 3'b000 ; #10;
        sel = 3'b001 ; #10;
        sel = 3'b010 ; #10;
        sel = 3'b011 ; #10;
        sel = 3'b100 ; #10;
        sel = 3'b101 ; #10;
        sel = 3'b110 ; #10;
        sel = 3'b111 ; #10;
        $finish;
    end
endmodule