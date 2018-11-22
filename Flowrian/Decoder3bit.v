module Decoder3bit(Din,D1,D2,D3,D4,D5,D6,D7,D8);

input [2:0] Din;
output D1;
output D2;
output D3;
output D4;
output D5;
output D6;
output D7;
output D8;

wire [2:0] b0;
wire  w9;
wire  w12;
wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w18;
wire  w22;
wire  w24;
wire  w20;
wire  b0_2_w23;
wire  b0_1_w21;
wire  b0_0_w19;

assign b0 = Din;
assign D1 = w9;
assign D2 = w12;
assign D3 = w13;
assign D4 = w14;
assign D5 = w15;
assign D6 = w16;
assign D7 = w17;
assign D8 = w18;

assign b0_2_w23 = {b0[2]};
assign b0_1_w21 = {b0[1]};
assign b0_0_w19 = {b0[0]};

PNU_NOT
     s0 (
      .o1(w22),
      .i1(b0_2_w23));

PNU_NOT
     s1 (
      .o1(w24),
      .i1(b0_1_w21));

PNU_NOT
     s2 (
      .o1(w20),
      .i1(b0_0_w19));

PNU_AND3
     s3 (
      .o1(w9),
      .i3(w22),
      .i2(w24),
      .i1(w20));

PNU_AND3
     s4 (
      .o1(w12),
      .i3(w22),
      .i2(w24),
      .i1(b0_0_w19));

PNU_AND3
     s5 (
      .o1(w13),
      .i2(w22),
      .i3(w20),
      .i1(b0_1_w21));

PNU_AND3
     s6 (
      .o1(w14),
      .i1(w22),
      .i2(b0_1_w21),
      .i3(b0_0_w19));

PNU_AND3
     s7 (
      .o1(w15),
      .i2(w24),
      .i3(w20),
      .i1(b0_2_w23));

PNU_AND3
     s8 (
      .o1(w16),
      .i2(w24),
      .i1(b0_2_w23),
      .i3(b0_0_w19));

PNU_AND3
     s9 (
      .o1(w17),
      .i3(w20),
      .i1(b0_2_w23),
      .i2(b0_1_w21));

PNU_AND3
     s10 (
      .o1(w18),
      .i1(b0_2_w23),
      .i2(b0_1_w21),
      .i3(b0_0_w19));

endmodule

