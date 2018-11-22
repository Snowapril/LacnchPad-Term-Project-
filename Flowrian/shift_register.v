module shift_register(RST,CLK,Ce,Din,D0out,D1out,D2out,D3out,D4out,D5out,D6out,D7out);

input RST;
input CLK;
input Ce;
input [3:0] Din;
output [3:0] D0out;
output [3:0] D1out;
output [3:0] D2out;
output [3:0] D3out;
output [3:0] D4out;
output [3:0] D5out;
output [3:0] D6out;
output [3:0] D7out;

wire [3:0] b4;
wire [3:0] b6;
wire [3:0] b5;
wire [3:0] b7;
wire [3:0] b8;
wire [3:0] b9;
wire [3:0] b10;
wire [3:0] b11;
wire  w13;
wire  w11;
wire  w12;
wire [3:0] b12;

assign w13 = RST;
assign w11 = CLK;
assign w12 = Ce;
assign b4 = Din;
assign D0out = b6;
assign D1out = b5;
assign D2out = b7;
assign D3out = b8;
assign D4out = b9;
assign D5out = b10;
assign D6out = b11;
assign D7out = b12;

register
     s0 (
      .Din(b4),
      .Dout(b6),
      .RST(w13),
      .CLK(w11),
      .Ce(w12));

register
     s1 (
      .Din(b6),
      .Dout(b5),
      .RST(w13),
      .CLK(w11),
      .Ce(w12));

register
     s2 (
      .Din(b7),
      .Dout(b8),
      .RST(w13),
      .CLK(w11),
      .Ce(w12));

register
     s3 (
      .Din(b5),
      .Dout(b7),
      .RST(w13),
      .CLK(w11),
      .Ce(w12));

register
     s4 (
      .Din(b9),
      .Dout(b10),
      .RST(w13),
      .CLK(w11),
      .Ce(w12));

register
     s5 (
      .Din(b8),
      .Dout(b9),
      .RST(w13),
      .CLK(w11),
      .Ce(w12));

register
     s6 (
      .Din(b11),
      .RST(w13),
      .CLK(w11),
      .Ce(w12),
      .Dout(b12));

register
     s7 (
      .Din(b10),
      .Dout(b11),
      .RST(w13),
      .CLK(w11),
      .Ce(w12));

endmodule

