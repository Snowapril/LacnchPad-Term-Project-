module Decoder2bit(Din,Q0,Q1,Q2,Q3);

input [1:0] Din;
output Q0;
output Q1;
output Q2;
output Q3;

wire [1:0] b0;
wire  w4;
wire  w6;
wire  w8;
wire  w10;
wire  w11;
wire  w9;
wire  b0_0_w7;
wire  b0_1_w5;

assign b0 = Din;
assign Q0 = w4;
assign Q1 = w11;
assign Q2 = w10;
assign Q3 = w9;

assign b0_0_w7 = {b0[0]};
assign b0_1_w5 = {b0[1]};

PNU_NOR2
     s0 (
      .o1(w4),
      .i1(b0_0_w7),
      .i2(b0_1_w5));

PNU_AND2
     s1 (
      .i2(w6),
      .i1(b0_0_w7),
      .o1(w11));

PNU_NOT
     s2 (
      .o1(w6),
      .i1(b0_1_w5));

PNU_AND2
     s3 (
      .i1(w8),
      .i2(b0_1_w5),
      .o1(w10));

PNU_NOT
     s4 (
      .o1(w8),
      .i1(b0_0_w7));

PNU_AND2
     s5 (
      .i1(b0_0_w7),
      .i2(b0_1_w5),
      .o1(w9));

endmodule

