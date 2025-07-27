module counter_down (
    input wire clock,
    input wire reset,
    output reg[3:0] count 
);

    always @(posedge clock or posedge reset) begin
        if(count == 0)
            count <= 4'b1111;
        else if(reset) 
            count <= 4'b1111;
        else
            count <= count - 1;    
    end
    
endmodule