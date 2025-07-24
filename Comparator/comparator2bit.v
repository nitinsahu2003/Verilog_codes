module comparator2bit (
    input[1:0] A, B,
    output reg A_gt_b, A_eq_b, A_lt_b
);

    always @(*) begin
        if (A > B) begin
            A_gt_b = 1;
            A_eq_b = 0;
            A_lt_b = 0;
        end
        else if(A == B) begin
            A_gt_b = 0;
            A_eq_b = 1;
            A_lt_b = 0;
        end
        else begin
            A_gt_b = 0;
            A_eq_b = 0;
            A_lt_b = 1;
        end
    end
    
endmodule