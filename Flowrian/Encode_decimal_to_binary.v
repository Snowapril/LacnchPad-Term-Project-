module Encode_decimal_to_binary(d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,b0,b11,b12,b13,CHK);

input d0;
input d1;
input d2;
input d3;
input d4;
input d5;
input d6;
input d7;
input d8;
input d9;
output b0;
output b11;
output b12;
output b13;
output CHK;

wire  w16;
wire  w15;
wire  w17;
wire  w18;
wire  w22;
wire  w25;
wire  w28;
wire  w29;
wire  w30;
wire  w19;
wire  w20;
wire  w23;
wire  w21;
wire  w32;
wire  w26;
wire  w27;
wire  w33;
wire  w34;
wire  w35;
wire  w24;

assign w29 = d0;
assign w30 = d1;
assign w19 = d2;
assign w20 = d3;
assign w23 = d4;
assign w24 = d5;
assign w21 = d6;
assign w32 = d7;
assign w26 = d8;
assign w27 = d9;
assign b0 = w17;
assign b11 = w18;
assign b12 = w22;
assign b13 = w25;
assign CHK = w28;

PNU_OR3
     s0 (
      .o1(w15),
      .i2(w32),
      .i3(w27),
      .i1(w24));

PNU_OR2
     s1 (
      .o1(w16),
      .i1(w30),
      .i2(w20));

PNU_OR2
     s2 (
      .i1(w16),
      .i2(w15),
      .o1(w17));

PNU_OR4
     s3 (
      .o1(w18),
      .i1(w19),
      .i2(w20),
      .i3(w21),
      .i4(w32));

PNU_OR4
     s4 (
      .o1(w22),
      .i1(w23),
      .i3(w21),
      .i4(w32),
      .i2(w24));

PNU_OR2
     s5 (
      .o1(w25),
      .i1(w26),
      .i2(w27));

PNU_OR4
     s6 (
      .i1(w29),
      .i2(w30),
      .i3(w19),
      .i4(w20),
      .o1(w33));

PNU_OR4
     s7 (
      .i1(w23),
      .i3(w21),
      .i4(w32),
      .o1(w34),
      .i2(w24));

PNU_OR3
     s9 (
      .o1(w28),
      .i1(w33),
      .i2(w34),
      .i3(w35));

PNU_OR2
     s10 (
      .i1(w26),
      .i2(w27),
      .o1(w35));

endmodule

