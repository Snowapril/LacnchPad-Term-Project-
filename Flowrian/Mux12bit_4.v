module Mux12bit_4(B_in,D_out,D3,D4,D5,D6,D7,D8,D9,D0,D_star,D_sharp,D2,D1);

input [3:0] B_in;
output D_out;
input D3;
input D4;
input D5;
input D6;
input D7;
input D8;
input D9;
input D0;
input D_star;
input D_sharp;
input D2;
input D1;

wire  w0;
wire  w1;
wire [3:0] b2;
wire  w4;
wire  w5;
wire  w6;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w12;
wire  w13;
wire  w14;
wire  w25;
wire  w26;
wire  w24;
wire  w27;
wire  b2_3_w3;
wire  b2_2_w18;
wire  b2_1_w19;
wire  b2_0_w20;
wire  b2_2_w21;
wire  b2_0_w23;
wire  b2_1_w22;

assign b2 = B_in;
assign D_out = w4;
assign w27 = D3;
assign w8 = D4;
assign w9 = D5;
assign w10 = D6;
assign w26 = D7;
assign w25 = D8;
assign w11 = D9;
assign w13 = D0;
assign w12 = D_star;
assign w14 = D_sharp;
assign w6 = D2;
assign w5 = D1;

assign b2_3_w3 = {b2[3]};
assign b2_2_w18 = {b2[2]};
assign b2_1_w19 = {b2[1]};
assign b2_0_w20 = {b2[0]};
assign b2_2_w21 = {b2[2]};
assign b2_0_w23 = {b2[0]};
assign b2_1_w22 = {b2[1]};

PNU_MUX8
     s0 (
      .o1(w0),
      .i1(w5),
      .i2(w6),
      .i4(w8),
      .i5(w9),
      .i6(w10),
      .e1(b2_2_w21),
      .e3(b2_0_w23),
      .e2(b2_1_w22),
      .i8(w25),
      .i7(w26),
      .i3(w27));

PNU_MUX8
     s1 (
      .o1(w1),
      .i1(w11),
      .i2(w12),
      .i3(w13),
      .i4(w14),
      .e1(b2_2_w18),
      .e2(b2_1_w19),
      .e3(b2_0_w20),
      .i6(w24),
      .i7(w24),
      .i8(w24),
      .i5(w24));

PNU_MUX2
     s2 (
      .i1(w0),
      .i2(w1),
      .e1(b2_3_w3),
      .o1(w4));

PNU_ZERO
     s3 (
      .o1(w24));

endmodule

