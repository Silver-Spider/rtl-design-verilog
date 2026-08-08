// Project     : RTL Design with Verilog
// Module      : RCA
// File        : rca.v
// Author      : Charan

module ripple_carry_adder(
    input wire [3:0]a,
    input wire [3:0]b,
    input wire cin,

    output wire [3:0]s,
    output wire cout
);

wire c1,c2,c3;

full_adder FA0(a[0],b[0],cin,s[0],c1);
full_adder FA1(a[1],b[1],c1,s[1],c2);
full_adder FA2(a[2],b[2],c2,s[2],c3);
full_adder FA3(a[3],b[3],c3,s[3],cout);

endmodule