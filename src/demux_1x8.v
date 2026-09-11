`default_nettype none

module demux_1x8 (
    input  wire       i,
    input  wire [2:0] s,
    output wire [7:0] o
);
    // Preserve the lab ordering: 000->o[7], ..., 111->o[0].
    assign o = i ? (8'b10000000 >> s) : 8'b00000000;
endmodule

`default_nettype wire
