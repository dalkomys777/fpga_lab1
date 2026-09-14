module full_adder(
    input wire a,
    input wire b,
    input wire cin,
    output wire s,
    output wire cout
);

    wire partial_sum;
    wire carry_ab;
    wire carry_cin;

    half_adder first(
        .a(a),
        .b(b),
        .s(partial_sum),
        .c(carry_ab)
    );

    half_adder second(
        .a(partial_sum),
        .b(cin),
        .s(s),
        .c(carry_cin)
    );

    assign cout = carry_ab | carry_cin;

endmodule
