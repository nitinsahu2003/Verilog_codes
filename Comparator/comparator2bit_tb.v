module comparator2bit_tb;

    // Inputs
    reg[1:0] A, B;

    // Outputs
    wire A_gt_b, A_eq_b, A_lt_b;

    comparator2bit DUT(
        .A(A), .B(B), .A_gt_b(A_gt_b), .A_eq_b(A_eq_b), .A_lt_b(A_lt_b)
    );

    initial begin
        $dumpfile("comparator2bitwaveform.vcd");
        $dumpvars(0, comparator2bit_tb);
        $monitor($time, " A = %b | B = %b | A>B = %b | A==B =%b | A<B =%b", A, B, A_gt_b, A_eq_b, A_lt_b);
    end

    initial begin
        A = 2'b00; B = 2'b00; #10;
        A = 2'b01; B = 2'b00; #10;
        A = 2'b10; B = 2'b11; #10;
        A = 2'b11; B = 2'b10; #10;
        A = 2'b10; B = 2'b10; #10;
    end
endmodule