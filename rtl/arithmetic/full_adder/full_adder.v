// Project     : RTL Design with Verilog
// Module      : Full Adder
// File        : full_adder.v
// Author      : Charan

module full_adder(
    input wire a,
    input wire b,
    input wire cin,

    output wire sum,
    output wire cout
);

assign sum = a ^ b ^ cin ;
assign cout = (a & b) | (b & cin) | (a & cin);

endmodule