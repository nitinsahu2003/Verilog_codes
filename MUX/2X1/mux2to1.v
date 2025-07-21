module mux2to1 (
    input a, b, // inputs   
    input sel, // select input
    output y // output
); 

    assign y = (sel) ? b : a; // select one input acc. to condition
    
endmodule