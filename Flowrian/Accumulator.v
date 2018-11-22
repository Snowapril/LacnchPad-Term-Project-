module Accumulator(Din,Ce,CLK,RST,Dout);

input [11:0] Din;
input Ce;
input CLK;
input RST;
output [11:0] Dout;

wire [11:0] b27;
wire [11:0] b28;
wire  w43;
wire  w39;
wire  w41;
wire  w45;
wire  w47;
wire  w49;
wire  w51;
wire  w53;
wire  w55;
wire  w57;
wire  w59;
wire  w61;
wire  w63;
wire  w66;
wire  w70;
wire  w71;
wire  w74;
wire  w76;
wire  w78;
wire  w80;
wire  w81;
wire  w84;
wire  w86;
wire  w65;
wire  w88;
wire  w68;
wire  w93;
wire  b27_11_w37;
wire  b28_11;
wire  b28_11_w40;
wire  b27_10_w67;
wire  b27_9_w69;
wire  b27_8_w72;
wire  b27_7_w73;
wire  b27_6_w75;
wire  b27_5_w77;
wire  b27_4_w79;
wire  b27_3_w82;
wire  b27_2_w83;
wire  b27_1_w85;
wire  b27_0_w87;
wire  b28_0;
wire  b28_0_w64;
wire  b28_1;
wire  b28_1_w62;
wire  b28_2;
wire  b28_2_w60;
wire  b28_3;
wire  b28_3_w89;
wire  b28_4;
wire  b28_4_w58;
wire  b28_5;
wire  b28_5_w90;
wire  b28_6;
wire  b28_6_w56;
wire  b28_7;
wire  b28_7_w91;
wire  b28_8;
wire  b28_8_w54;
wire  b28_9;
wire  b28_9_w92;
wire  b28_10;
wire  b28_10_w52;

assign b27 = Din;
assign w65 = Ce;
assign w68 = CLK;
assign w93 = RST;
assign Dout = b28;

assign b28[11] = b28_11;
assign b28[10] = b28_10;
assign b28[9] = b28_9;
assign b28[8] = b28_8;
assign b28[7] = b28_7;
assign b28[6] = b28_6;
assign b28[5] = b28_5;
assign b28[4] = b28_4;
assign b28[3] = b28_3;
assign b28[2] = b28_2;
assign b28[1] = b28_1;
assign b28[0] = b28_0;

assign b27_11_w37 = {b27[11]};
assign b28_11_w40 = {b28[11]};
assign b27_10_w67 = {b27[10]};
assign b27_9_w69 = {b27[9]};
assign b27_8_w72 = {b27[8]};
assign b27_7_w73 = {b27[7]};
assign b27_6_w75 = {b27[6]};
assign b27_5_w77 = {b27[5]};
assign b27_4_w79 = {b27[4]};
assign b27_3_w82 = {b27[3]};
assign b27_2_w83 = {b27[2]};
assign b27_1_w85 = {b27[1]};
assign b27_0_w87 = {b27[0]};
assign b28_0_w64 = {b28[0]};
assign b28_1_w62 = {b28[1]};
assign b28_2_w60 = {b28[2]};
assign b28_3_w89 = {b28[3]};
assign b28_4_w58 = {b28[4]};
assign b28_5_w90 = {b28[5]};
assign b28_6_w56 = {b28[6]};
assign b28_7_w91 = {b28[7]};
assign b28_8_w54 = {b28[8]};
assign b28_9_w92 = {b28[9]};
assign b28_10_w52 = {b28[10]};

PNU_DFF_Ce
     s0 (
      .Ce(w80),
      .D(b27_3_w82),
      .clock(w68),
      .Q(b28_3),
      .reset(w93));

PNU_DFF_Ce
     s1 (
      .D(b27_2_w83),
      .Ce(w84),
      .clock(w68),
      .Q(b28_2),
      .reset(w93));

PNU_DFF_Ce
     s2 (
      .D(b27_1_w85),
      .Ce(w86),
      .clock(w68),
      .Q(b28_1),
      .reset(w93));

PNU_DFF_Ce
     s3 (
      .D(b27_0_w87),
      .Ce(w88),
      .clock(w68),
      .Q(b28_0),
      .reset(w93));

PNU_DFF_Ce
     s4 (
      .D(b27_11_w37),
      .Ce(w39),
      .Q(b28_11),
      .clock(w68),
      .reset(w93));

PNU_DFF_Ce
     s5 (
      .Ce(w66),
      .D(b27_10_w67),
      .clock(w68),
      .Q(b28_10),
      .reset(w93));

PNU_DFF_Ce
     s6 (
      .D(b27_9_w69),
      .Ce(w70),
      .clock(w68),
      .Q(b28_9),
      .reset(w93));

PNU_DFF_Ce
     s7 (
      .Ce(w71),
      .D(b27_8_w72),
      .clock(w68),
      .Q(b28_8),
      .reset(w93));

PNU_DFF_Ce
     s8 (
      .D(b27_7_w73),
      .Ce(w74),
      .clock(w68),
      .Q(b28_7),
      .reset(w93));

PNU_DFF_Ce
     s9 (
      .D(b27_6_w75),
      .Ce(w76),
      .clock(w68),
      .Q(b28_6),
      .reset(w93));

PNU_DFF_Ce
     s10 (
      .D(b27_5_w77),
      .Ce(w78),
      .clock(w68),
      .Q(b28_5),
      .reset(w93));

PNU_DFF_Ce
     s11 (
      .D(b27_4_w79),
      .Ce(w81),
      .clock(w68),
      .Q(b28_4),
      .reset(w93));

PNU_AND2
     s14 (
      .i2(w43),
      .o1(w39),
      .i1(w65));

PNU_NOT
     s15 (
      .o1(w43),
      .i1(b28_11_w40));

PNU_AND2
     s16 (
      .i2(w41),
      .o1(w66),
      .i1(w65));

PNU_NOT
     s17 (
      .o1(w41),
      .i1(b28_10_w52));

PNU_AND2
     s18 (
      .i2(w45),
      .o1(w70),
      .i1(w65));

PNU_NOT
     s19 (
      .o1(w45),
      .i1(b28_9_w92));

PNU_AND2
     s20 (
      .i2(w47),
      .o1(w71),
      .i1(w65));

PNU_NOT
     s21 (
      .o1(w47),
      .i1(b28_8_w54));

PNU_AND2
     s22 (
      .i2(w49),
      .o1(w74),
      .i1(w65));

PNU_NOT
     s23 (
      .o1(w49),
      .i1(b28_7_w91));

PNU_AND2
     s24 (
      .i2(w51),
      .o1(w76),
      .i1(w65));

PNU_NOT
     s25 (
      .o1(w51),
      .i1(b28_6_w56));

PNU_AND2
     s26 (
      .i2(w53),
      .o1(w78),
      .i1(w65));

PNU_NOT
     s27 (
      .o1(w53),
      .i1(b28_5_w90));

PNU_AND2
     s28 (
      .i2(w55),
      .o1(w81),
      .i1(w65));

PNU_NOT
     s29 (
      .o1(w55),
      .i1(b28_4_w58));

PNU_AND2
     s30 (
      .i2(w57),
      .o1(w80),
      .i1(w65));

PNU_NOT
     s31 (
      .o1(w57),
      .i1(b28_3_w89));

PNU_AND2
     s32 (
      .i2(w59),
      .o1(w84),
      .i1(w65));

PNU_NOT
     s33 (
      .o1(w59),
      .i1(b28_2_w60));

PNU_AND2
     s34 (
      .i2(w61),
      .o1(w86),
      .i1(w65));

PNU_NOT
     s35 (
      .o1(w61),
      .i1(b28_1_w62));

PNU_AND2
     s36 (
      .i2(w63),
      .i1(w65),
      .o1(w88));

PNU_NOT
     s37 (
      .o1(w63),
      .i1(b28_0_w64));

endmodule

