module demux_1x8(
    input wire i,
    input wire [2:0] s,
    output wire [7:0] o
);

    assign o = i ? (8'b10000000 >> s) : 8'b0;

endmodule
