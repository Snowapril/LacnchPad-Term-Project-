module seven_segment(Bin,a,b,c,d,e,f,g);

input [3:0] Bin;
output a;
output b;
output c;
output d;
output e;
output f;
output g;

wire [3:0] b2;
wire  w16;
wire  w18;
wire  w24;
wire  w34;
wire  w35;
wire  w25;
wire  w36;
wire  w29;
wire  w31;
wire  w33;
wire  w45;
wire  w32;
wire  w43;
wire  w41;
wire  w39;
wire  w38;
wire  w37;
wire  w40;
wire  w27;
wire  w26;
wire  w46;
wire  b2_3_w28;
wire  b2_2_w44;
wire  b2_1_w42;
wire  b2_0_w30;

assign b2 = Bin;
assign a = w46;
assign b = w26;
assign c = w27;
assign d = w40;
assign e = w37;
assign f = w38;
assign g = w39;

assign b2_3_w28 = {b2[3]};
assign b2_2_w44 = {b2[2]};
assign b2_1_w42 = {b2[1]};
assign b2_0_w30 = {b2[0]};

PNU_NOT
     s0 (
      .i1(b2_3_w28),
      .o1(w45));

PNU_NOT
     s1 (
      .i1(b2_2_w44),
      .o1(w32));

PNU_NOT
     s2 (
      .i1(b2_1_w42),
      .o1(w43));

PNU_NOT
     s3 (
      .i1(b2_0_w30),
      .o1(w41));

PNU_AND2
     s4 (
      .o1(w18),
      .i1(b2_2_w44),
      .i2(b2_0_w30));

PNU_AND2
     s5 (
      .o1(w36),
      .i1(b2_2_w44),
      .i2(w41));

PNU_AND2
     s6 (
      .o1(w35),
      .i1(w32),
      .i2(w41));

PNU_AND2
     s7 (
      .o1(w24),
      .i1(b2_1_w42),
      .i2(b2_0_w30));

PNU_OR3
     s8 (
      .i1(w24),
      .i3(w25),
      .i2(w32),
      .o1(w26));

PNU_AND2
     s9 (
      .o1(w25),
      .i1(w43),
      .i2(w41));

PNU_AND2
     s10 (
      .o1(w31),
      .i1(w32),
      .i2(b2_1_w42));

PNU_AND2
     s11 (
      .o1(w34),
      .i2(w33),
      .i1(b2_0_w30));

PNU_AND2
     s12 (
      .o1(w33),
      .i1(b2_2_w44),
      .i2(w43));

PNU_AND2
     s13 (
      .o1(w29),
      .i1(b2_1_w42),
      .i2(w41));

PNU_OR4
     s14 (
      .i1(w18),
      .i2(w35),
      .i3(b2_3_w28),
      .i4(b2_1_w42),
      .o1(w46));

PNU_OR3
     s15 (
      .i1(b2_2_w44),
      .i2(w43),
      .i3(b2_0_w30),
      .o1(w27));

PNU_OR4
     s16 (
      .i4(w16),
      .i2(w35),
      .i3(w29),
      .i1(b2_3_w28),
      .o1(w40));

PNU_OR2
     s17 (
      .o1(w16),
      .i2(w34),
      .i1(w31));

PNU_OR2
     s18 (
      .i2(w35),
      .i1(w29),
      .o1(w37));

PNU_OR4
     s19 (
      .i1(w29),
      .i4(w31),
      .i2(w33),
      .i3(b2_3_w28),
      .o1(w39));

PNU_OR4
     s20 (
      .i1(w25),
      .i2(w36),
      .i3(w33),
      .i4(b2_3_w28),
      .o1(w38));

endmodule

