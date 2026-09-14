module sub_4bit(
    input wire [3:0] a,
    input wire [3:0] b,
    output wire [3:0] d,
    output wire bor
);

    assign d = a - b;
    assign bor = a < b;

endmodule
