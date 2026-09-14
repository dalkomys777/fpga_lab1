module seg_decoder(
    input wire [3:0] bcd,
    output reg [7:0] seg_data
);

    always @* begin
        case (bcd)
            4'h0: seg_data = 8'hFC;
            4'h1: seg_data = 8'h60;
            4'h2: seg_data = 8'hDA;
            4'h3: seg_data = 8'hF2;
            4'h4: seg_data = 8'h66;
            4'h5: seg_data = 8'hB6;
            4'h6: seg_data = 8'hBE;
            4'h7: seg_data = 8'hE0;
            4'h8: seg_data = 8'hFE;
            4'h9: seg_data = 8'hF6;
            4'hA: seg_data = 8'hEE;
            4'hB: seg_data = 8'h3E;
            4'hC: seg_data = 8'h9C;
            4'hD: seg_data = 8'h7A;
            4'hE: seg_data = 8'h9E;
            4'hF: seg_data = 8'h8E;
            default: seg_data = 8'h00;
        endcase
    end

endmodule
