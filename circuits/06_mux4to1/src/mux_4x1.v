module mux_4x1(
    input wire [3:0] i,
    input wire [1:0] s,
    output wire z
);

    assign z = i[3-s];

endmodule
