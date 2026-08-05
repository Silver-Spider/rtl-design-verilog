// Project     : RTL Design with Verilog
// Module      : Half Adder
// File        : half_adder.v
// Author      : Charan

module half_adder(
    input wire a,
    input wire b,
    output wire sum,
    output wire carry
);

assign sum = a ^ b;
assign carry = a & b;

endmodule