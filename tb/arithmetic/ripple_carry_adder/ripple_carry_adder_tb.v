`timescale 1ns/1ps

// Project     : RTL Design with Verilog
// Module      : RCA testbench
// File        : ripple_carry_adder_tb.v
// Author      : Charan

module ripple_carry_adder_tb;
    reg [3:0]a;
    reg [3:0]b;
    reg cin;

    wire [3:0]s;
    wire cout;

    ripple_carry_adder dut (
        .a    (a),
        .b    (b),
        .cin  (cin),
        .s    (s),
        .cout (cout)
    );

    initial begin
        a = 4'b0000; b = 4'b0001; cin = 0; #10;
        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        a = 4'b1111; b = 4'b1111; cin = 0; #10;
        $finish;
    end
endmodule

