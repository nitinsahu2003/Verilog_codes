module counter_up_down (
    input wire clock,
    input wire reset,
    input wire mode,
    output reg[3:0] count
);

    always @(posedge clock or posedge reset) begin
        if(reset) count <= 4'b0000;
        else if(mode) count <= count + 1;
        else count <= count - 1;
    end 
    
endmodule