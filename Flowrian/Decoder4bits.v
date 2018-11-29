module Decoder4bits(Din,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16);

input [3:0] Din;
output p1;
output p2;
output p3;
output p4;
output p5;
output p6;
output p7;
output p8;
output p9;
output p10;
output p11;
output p12;
output p13;
output p14;
output p15;
output p16;

wire [3:0] b0;
wire  w14;
wire  w15;
wire  w16;
wire  w22;
wire  w23;
wire  w24;
wire  w25;
wire  w26;
wire  w27;
wire  w28;
wire  w32;
wire  w30;
wire  w33;
wire  w34;
wire  w35;
wire  w36;
wire  w37;
wire  w38;
wire  w31;
wire  w39;
wire  b0_0_w42;
wire  b0_1_w29;
wire  b0_2_w40;
wire  b0_3_w41;

assign b0 = Din;
assign p1 = w14;
assign p2 = w15;
assign p3 = w16;
assign p4 = w28;
assign p5 = w27;
assign p6 = w26;
assign p7 = w25;
assign p8 = w24;
assign p9 = w23;
assign p10 = w22;
assign p11 = w33;
assign p12 = w34;
assign p13 = w35;
assign p14 = w36;
assign p15 = w37;
assign p16 = w38;

assign b0_0_w42 = {b0[0]};
assign b0_1_w29 = {b0[1]};
assign b0_2_w40 = {b0[2]};
assign b0_3_w41 = {b0[3]};

PNU_NOT
     s0 (
      .o1(w32),
      .i1(b0_3_w41));

PNU_NOT
     s1 (
      .o1(w30),
      .i1(b0_2_w40));

PNU_NOT
     s2 (
      .o1(w31),
      .i1(b0_1_w29));

PNU_NOT
     s3 (
      .o1(w39),
      .i1(b0_0_w42));

PNU_AND4
     s4 (
      .o1(w14),
      .i4(w32),
      .i3(w30),
      .i2(w31),
      .i1(w39));

PNU_AND4
     s5 (
      .o1(w15),
      .i4(w32),
      .i3(w30),
      .i2(w31),
      .i1(b0_0_w42));

PNU_AND4
     s6 (
      .o1(w16),
      .i4(w32),
      .i3(w30),
      .i1(w39),
      .i2(b0_1_w29));

PNU_AND4
     s7 (
      .o1(w28),
      .i4(w32),
      .i3(w30),
      .i1(b0_0_w42),
      .i2(b0_1_w29));

PNU_AND4
     s8 (
      .o1(w27),
      .i4(w32),
      .i2(w31),
      .i1(w39),
      .i3(b0_2_w40));

PNU_AND4
     s9 (
      .o1(w26),
      .i4(w32),
      .i2(w31),
      .i1(b0_0_w42),
      .i3(b0_2_w40));

PNU_AND4
     s10 (
      .o1(w25),
      .i1(w32),
      .i4(w39),
      .i3(b0_1_w29),
      .i2(b0_2_w40));

PNU_AND4
     s11 (
      .o1(w24),
      .i4(w32),
      .i1(b0_0_w42),
      .i2(b0_1_w29),
      .i3(b0_2_w40));

PNU_AND4
     s12 (
      .o1(w23),
      .i2(w30),
      .i3(w31),
      .i4(w39),
      .i1(b0_3_w41));

PNU_AND4
     s13 (
      .o1(w22),
      .i3(w30),
      .i2(w31),
      .i1(b0_0_w42),
      .i4(b0_3_w41));

PNU_AND4
     s14 (
      .i3(w30),
      .o1(w33),
      .i1(w39),
      .i2(b0_1_w29),
      .i4(b0_3_w41));

PNU_AND4
     s15 (
      .i3(w30),
      .o1(w34),
      .i1(b0_0_w42),
      .i2(b0_1_w29),
      .i4(b0_3_w41));

PNU_AND4
     s16 (
      .o1(w35),
      .i2(w31),
      .i1(w39),
      .i3(b0_2_w40),
      .i4(b0_3_w41));

PNU_AND4
     s17 (
      .o1(w36),
      .i2(w31),
      .i1(b0_0_w42),
      .i3(b0_2_w40),
      .i4(b0_3_w41));

PNU_AND4
     s18 (
      .o1(w37),
      .i1(w39),
      .i2(b0_1_w29),
      .i3(b0_2_w40),
      .i4(b0_3_w41));

PNU_AND4
     s19 (
      .o1(w38),
      .i1(b0_0_w42),
      .i2(b0_1_w29),
      .i3(b0_2_w40),
      .i4(b0_3_w41));

endmodule

