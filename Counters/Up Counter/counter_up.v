module counter_up (
    input wire clock,
    input wire reset,
    output reg [3:0] count
);
    always @(posedge clock or posedge reset) begin
        if (reset)
            count = 4'b0000;
        else
            count = count + 1;
    end
endmodule