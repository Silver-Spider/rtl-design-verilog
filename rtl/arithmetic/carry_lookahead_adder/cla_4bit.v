// Project     : RTL Design with Verilog
// Module      : 4-bit Carry Lookahead Adder
// File        : cla_4bit.v
// Author      : Charan
// Description : 4-bit CLA using generate and propagate logic


module cla_4bit (
    input  wire [3:0] a,
    input  wire [3:0] b,
    input  wire       cin,

    output wire [3:0] sum,
    output wire       cout
);

    wire [3:0] p;
    wire [3:0] g;

    wire c1;
    wire c2;
    wire c3;
    wire c4;

    // Generate and propagate
    assign p = a ^ b;
    assign g = a & b;

    // Carry lookahead equations
    assign c1 = g[0] | (p[0] & cin);

    assign c2 = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);

    assign c3 = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);

    assign c4 = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);

    // Sum
    assign sum[0] = p[0] ^ cin;
    assign sum[1] = p[1] ^ c1;
    assign sum[2] = p[2] ^ c2;
    assign sum[3] = p[3] ^ c3;

    assign cout = c4;

endmodule