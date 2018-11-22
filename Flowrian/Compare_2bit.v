module Compare_2bit(GT,EQ,LT,A,B);

output GT;
output EQ;
output LT;
input [1:0] A;
input [1:0] B;

wire  w12;
wire  w13;
wire  w14;
wire  w15;
wire  w23;
wire  w24;
wire  w25;
wire  w26;
wire  w27;
wire  w28;
wire  w16;
wire  w29;
wire  w30;
wire  w31;
wire  w32;
wire  w22;
wire  w21;
wire [1:0] b23;
wire [1:0] b22;
wire  b23_0_w35;
wire  b22_0_w33;
wire  b22_1_w36;
wire  b23_1_w34;

assign GT = w12;
assign EQ = w27;
assign LT = w29;
assign b23 = A;
assign b22 = B;

assign b23_0_w35 = {b23[0]};
assign b22_0_w33 = {b22[0]};
assign b22_1_w36 = {b22[1]};
assign b23_1_w34 = {b23[1]};

PNU_NOT
     s0 (
      .o1(w22),
      .i1(b23_1_w34));

PNU_NOT
     s1 (
      .o1(w21),
      .i1(b23_0_w35));

PNU_NOT
     s2 (
      .o1(w16),
      .i1(b22_1_w36));

PNU_NOT
     s3 (
      .o1(w28),
      .i1(b22_0_w33));

PNU_AND2
     s4 (
      .o1(w13),
      .i1(w16),
      .i2(b23_1_w34));

PNU_AND3
     s5 (
      .o1(w14),
      .i2(w28),
      .i1(w16),
      .i3(b23_0_w35));

PNU_AND3
     s6 (
      .o1(w15),
      .i1(w28),
      .i3(b23_0_w35),
      .i2(b23_1_w34));

PNU_OR3
     s7 (
      .o1(w12),
      .i1(w13),
      .i2(w14),
      .i3(w15));

PNU_AND4
     s8 (
      .o1(w23),
      .i4(w28),
      .i3(w16),
      .i1(w22),
      .i2(w21));

PNU_AND4
     s9 (
      .o1(w24),
      .i2(w16),
      .i1(w22),
      .i3(b23_0_w35),
      .i4(b22_0_w33));

PNU_AND4
     s10 (
      .o1(w25),
      .i2(b23_0_w35),
      .i4(b22_0_w33),
      .i3(b22_1_w36),
      .i1(b23_1_w34));

PNU_AND4
     s11 (
      .o1(w26),
      .i4(w28),
      .i3(w21),
      .i2(b22_1_w36),
      .i1(b23_1_w34));

PNU_OR4
     s12 (
      .i1(w23),
      .i2(w24),
      .i3(w25),
      .i4(w26),
      .o1(w27));

PNU_AND2
     s13 (
      .o1(w30),
      .i1(w22),
      .i2(b22_1_w36));

PNU_AND3
     s14 (
      .o1(w31),
      .i1(w22),
      .i2(w21),
      .i3(b22_0_w33));

PNU_AND3
     s15 (
      .o1(w32),
      .i1(w21),
      .i3(b22_0_w33),
      .i2(b22_1_w36));

PNU_OR3
     s16 (
      .o1(w29),
      .i1(w30),
      .i2(w31),
      .i3(w32));

endmodule

