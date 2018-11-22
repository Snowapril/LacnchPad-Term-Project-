module encoder_12_to_4(in_0,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_9,in_10,in_11,out_binary,chk);

input in_0;
input in_1;
input in_2;
input in_3;
input in_4;
input in_5;
input in_6;
input in_7;
input in_8;
input in_9;
input in_10;
input in_11;
output [3:0] out_binary;
output chk;

wire  w18;
wire  w19;
wire  w23;
wire  w24;
wire [3:0] b20;
wire  w32;
wire  w33;
wire  w20;
wire  w34;
wire  w25;
wire  w21;
wire  w26;
wire  w35;
wire  w28;
wire  w36;
wire  w22;
wire  w37;
wire  w38;
wire  w39;
wire  w40;
wire  b20_1;
wire  b20_0;
wire  b20_2;
wire  b20_3;

assign w32 = in_0;
assign w33 = in_1;
assign w20 = in_2;
assign w34 = in_3;
assign w25 = in_4;
assign w26 = in_5;
assign w21 = in_6;
assign w35 = in_7;
assign w28 = in_8;
assign w36 = in_9;
assign w22 = in_10;
assign w37 = in_11;
assign out_binary = b20;
assign chk = w40;

assign b20[3] = b20_3;
assign b20[2] = b20_2;
assign b20[1] = b20_1;
assign b20[0] = b20_0;

PNU_OR4
     s0 (
      .o1(w18),
      .i1(w33),
      .i2(w34),
      .i3(w26),
      .i4(w35));

PNU_OR2
     s1 (
      .o1(w19),
      .i1(w36),
      .i2(w37));

PNU_OR2
     s2 (
      .i1(w18),
      .i2(w19),
      .o1(b20_0));

PNU_OR2
     s3 (
      .o1(w23),
      .i1(w20),
      .i2(w34));

PNU_OR4
     s4 (
      .o1(w24),
      .i1(w21),
      .i2(w35),
      .i3(w22),
      .i4(w37));

PNU_OR2
     s5 (
      .i1(w23),
      .i2(w24),
      .o1(b20_1));

PNU_OR4
     s6 (
      .o1(b20_2),
      .i1(w25),
      .i3(w21),
      .i2(w26),
      .i4(w35));

PNU_OR4
     s7 (
      .o1(b20_3),
      .i1(w28),
      .i2(w36),
      .i3(w22),
      .i4(w37));

PNU_OR8
     s8 (
      .i1(w32),
      .i2(w33),
      .i3(w20),
      .i4(w34),
      .i5(w25),
      .i7(w21),
      .i6(w26),
      .i8(w35),
      .o1(w38));

PNU_OR4
     s9 (
      .i1(w28),
      .i2(w36),
      .i3(w22),
      .i4(w37),
      .o1(w39));

PNU_OR2
     s10 (
      .i1(w38),
      .i2(w39),
      .o1(w40));

endmodule

