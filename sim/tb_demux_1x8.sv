`timescale 1ns/1ps
`default_nettype none

module tb_demux_1x8;
    logic       i;
    logic [2:0] s;
    wire  [7:0] o;

    integer n;
    integer checked;
    logic [7:0] expected;

    demux_1x8 dut (.i(i), .s(s), .o(o));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_demux_1x8);
        i = 1'b0;
        s = 3'b000;
        checked = 0;

        for (n = 0; n < 16; n = n + 1) begin
            {i, s} = n[3:0];
            expected = (n >= 8) ? (8'b10000000 >> (n % 8)) : 8'b00000000;
            #10;
            if (o !== expected)
                $fatal(1,
                    "LAB1_FAIL demux_1x8 case=%0d i=%0b s=%03b expected=%08b actual=%08b",
                    n, i, s, expected, o);
            checked = checked + 1;
        end

        if (checked != 16)
            $fatal(1, "LAB1_FAIL demux_1x8 checked=%0d expected_cases=16", checked);
        $display("LAB1_PASS demux_1x8 cases=%0d", checked);
        $finish;
    end

    initial begin
        #300;
        $fatal(1, "LAB1_FAIL demux_1x8 watchdog timeout");
    end
endmodule

`default_nettype wire
