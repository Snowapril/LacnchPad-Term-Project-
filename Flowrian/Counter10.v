module Counter10(RST,CLK,CNT10,CR);

input RST;
input CLK;
output [3:0] CNT10;
output CR;

wire  w1;
wire [3:0] b6;
wire  w12;
wire  w10;
wire  w13;
wire  w14;
wire  w17;
wire  w19;
wire  w21;
wire  w22;
wire  w23;
wire  w24;
wire  w27;
wire  w28;
wire  w31;
wire  w25;
wire  w29;
wire  w30;
wire  w32;
wire  b6_3;
wire  b6_3_w26;
wire  b6_0;
wire  b6_0_w34;
wire  b6_1;
wire  b6_1_w33;
wire  b6_2;
wire  b6_2_w35;

assign w12 = RST;
assign w1 = CLK;
assign CNT10 = b6;
assign CR = w32;

assign b6[3] = b6_3;
assign b6[2] = b6_2;
assign b6[1] = b6_1;
assign b6[0] = b6_0;

assign b6_3_w26 = {b6[3]};
assign b6_0_w34 = {b6[0]};
assign b6_1_w33 = {b6[1]};
assign b6_2_w35 = {b6[2]};

PNU_DFF
     s0 (
      .clock(w1),
      .reset(w12),
      .D(w31),
      .Q(b6_3));

PNU_DFF
     s1 (
      .clock(w1),
      .reset(w12),
      .D(w25),
      .Q(b6_2));

PNU_DFF
     s2 (
      .clock(w1),
      .reset(w12),
      .D(w29),
      .Q(b6_1));

PNU_DFF
     s3 (
      .clock(w1),
      .reset(w12),
      .D(w30),
      .Q(b6_0));

PNU_AND2
     s4 (
      .i2(w10),
      .o1(w13),
      .i1(b6_3_w26));

PNU_AND2
     s6 (
      .i2(w17),
      .o1(w24),
      .i1(b6_2_w35));

PNU_AND2
     s7 (
      .i2(w19),
      .o1(w23),
      .i1(b6_2_w35));

PNU_NOT
     s9 (
      .o1(w10),
      .i1(b6_0_w34));

PNU_AND3
     s10 (
      .o1(w14),
      .i3(b6_0_w34),
      .i2(b6_1_w33),
      .i1(b6_2_w35));

PNU_OR2
     s11 (
      .i1(w13),
      .i2(w14),
      .o1(w31));

PNU_NOT
     s12 (
      .o1(w17),
      .i1(b6_1_w33));

PNU_NOT
     s13 (
      .o1(w19),
      .i1(b6_0_w34));

PNU_OR3
     s14 (
      .i3(w22),
      .i2(w23),
      .i1(w24),
      .o1(w25));

PNU_NOT
     s15 (
      .o1(w21),
      .i1(b6_2_w35));

PNU_AND3
     s16 (
      .i1(w21),
      .o1(w22),
      .i3(b6_0_w34),
      .i2(b6_1_w33));

PNU_XOR2
     s17 (
      .o1(w28),
      .i2(b6_0_w34),
      .i1(b6_1_w33));

PNU_NOT
     s18 (
      .o1(w27),
      .i1(b6_3_w26));

PNU_AND2
     s19 (
      .i2(w27),
      .i1(w28),
      .o1(w29));

PNU_NOT
     s20 (
      .o1(w30),
      .i1(b6_0_w34));

PNU_NOR4
     s21 (
      .o1(w32),
      .i2(b6_3_w26),
      .i3(b6_0_w34),
      .i4(b6_1_w33),
      .i1(b6_2_w35));

endmodule

