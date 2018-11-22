module Shift4bitRegister(Ce,CLK,RST,Din,D1out,D0out);

input Ce;
input CLK;
input RST;
input [3:0] Din;
output [3:0] D1out;
output [3:0] D0out;

wire  w10;
wire  w6;
wire  w7;
wire [3:0] b6;
wire [3:0] b5;
wire [3:0] b7;

assign w6 = Ce;
assign w10 = CLK;
assign w7 = RST;
assign b6 = Din;
assign D1out = b5;
assign D0out = b7;

Register4bit
     s0 (
      .CLK(w10),
      .Ce(w6),
      .RST(w7),
      .Din(b6),
      .Q(b7));

Register4bit
     s1 (
      .CLK(w10),
      .Ce(w6),
      .RST(w7),
      .Q(b5),
      .Din(b7));

endmodule

