module Mux12_4_4(Sin,D0,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D1,Dout);

input [3:0] Sin;
input [3:0] D0;
input [3:0] D2;
input [3:0] D3;
input [3:0] D4;
input [3:0] D5;
input [3:0] D6;
input [3:0] D7;
input [3:0] D8;
input [3:0] D9;
input [3:0] D10;
input [3:0] D11;
input [3:0] D1;
output [3:0] Dout;

wire [3:0] b2;
wire [3:0] b1;
wire [3:0] b6;
wire [3:0] b11;
wire [3:0] b16;
wire [3:0] b21;
wire [3:0] b25;
wire [3:0] b30;
wire [3:0] b31;
wire [3:0] b32;
wire [3:0] b33;
wire [3:0] b35;
wire [3:0] b36;
wire [3:0] b60;
wire  b1_3_w2;
wire  b1_2_w3;
wire  b1_1_w4;
wire  b1_0_w5;
wire  b6_3_w7;
wire  b6_2_w8;
wire  b6_1_w9;
wire  b6_0_w10;
wire  b11_0_w12;
wire  b11_1_w13;
wire  b11_2_w14;
wire  b11_3_w15;
wire  b16_3_w17;
wire  b16_2_w18;
wire  b16_1_w19;
wire  b16_0_w20;
wire  b21_3_w22;
wire  b21_2_w23;
wire  b21_0_w24;
wire  b25_3_w26;
wire  b25_2_w27;
wire  b25_1_w28;
wire  b25_0_w29;
wire  b30_0_w36;
wire  b30_1_w37;
wire  b30_2_w38;
wire  b30_3_w39;
wire  b31_3_w40;
wire  b31_2_w41;
wire  b31_1_w42;
wire  b31_0_w43;
wire  b32_3_w44;
wire  b32_2_w45;
wire  b32_1_w46;
wire  b32_0_w47;
wire  b33_0_w48;
wire  b33_1_w49;
wire  b33_2_w50;
wire  b33_3_w51;
wire  b36_3_w52;
wire  b35_3_w53;
wire  b36_2_w54;
wire  b35_2_w55;
wire  b35_1_w56;
wire  b36_1_w57;
wire  b36_0_w58;
wire  b35_0_w59;
wire  b60_3;
wire  b60_2;
wire  b60_1;
wire  b60_0;
wire  b21_1_w65;

assign b2 = Sin;
assign b6 = D0;
assign b16 = D2;
assign b21 = D3;
assign b25 = D4;
assign b30 = D5;
assign b31 = D6;
assign b32 = D7;
assign b33 = D8;
assign b1 = D9;
assign b35 = D10;
assign b36 = D11;
assign b11 = D1;
assign Dout = b60;

assign b60[3] = b60_3;
assign b60[2] = b60_2;
assign b60[1] = b60_1;
assign b60[0] = b60_0;

assign b1_3_w2 = {b1[3]};
assign b1_2_w3 = {b1[2]};
assign b1_1_w4 = {b1[1]};
assign b1_0_w5 = {b1[0]};
assign b6_3_w7 = {b6[3]};
assign b6_2_w8 = {b6[2]};
assign b6_1_w9 = {b6[1]};
assign b6_0_w10 = {b6[0]};
assign b11_0_w12 = {b11[0]};
assign b11_1_w13 = {b11[1]};
assign b11_2_w14 = {b11[2]};
assign b11_3_w15 = {b11[3]};
assign b16_3_w17 = {b16[3]};
assign b16_2_w18 = {b16[2]};
assign b16_1_w19 = {b16[1]};
assign b16_0_w20 = {b16[0]};
assign b21_3_w22 = {b21[3]};
assign b21_2_w23 = {b21[2]};
assign b21_0_w24 = {b21[0]};
assign b25_3_w26 = {b25[3]};
assign b25_2_w27 = {b25[2]};
assign b25_1_w28 = {b25[1]};
assign b25_0_w29 = {b25[0]};
assign b30_0_w36 = {b30[0]};
assign b30_1_w37 = {b30[1]};
assign b30_2_w38 = {b30[2]};
assign b30_3_w39 = {b30[3]};
assign b31_3_w40 = {b31[3]};
assign b31_2_w41 = {b31[2]};
assign b31_1_w42 = {b31[1]};
assign b31_0_w43 = {b31[0]};
assign b32_3_w44 = {b32[3]};
assign b32_2_w45 = {b32[2]};
assign b32_1_w46 = {b32[1]};
assign b32_0_w47 = {b32[0]};
assign b33_0_w48 = {b33[0]};
assign b33_1_w49 = {b33[1]};
assign b33_2_w50 = {b33[2]};
assign b33_3_w51 = {b33[3]};
assign b36_3_w52 = {b36[3]};
assign b35_3_w53 = {b35[3]};
assign b36_2_w54 = {b36[2]};
assign b35_2_w55 = {b35[2]};
assign b35_1_w56 = {b35[1]};
assign b36_1_w57 = {b36[1]};
assign b36_0_w58 = {b36[0]};
assign b35_0_w59 = {b35[0]};
assign b21_1_w65 = {b21[1]};

Mux12bit_4
     s0 (
      .B_in(b2),
      .D0(b1_0_w5),
      .D1(b6_0_w10),
      .D2(b11_0_w12),
      .D3(b16_0_w20),
      .D4(b21_0_w24),
      .D5(b25_0_w29),
      .D6(b30_0_w36),
      .D7(b31_0_w43),
      .D8(b32_0_w47),
      .D9(b33_0_w48),
      .D_sharp(b36_0_w58),
      .D_star(b35_0_w59),
      .D_out(b60_0));

Mux12bit_4
     s1 (
      .B_in(b2),
      .D0(b1_1_w4),
      .D1(b6_1_w9),
      .D2(b11_1_w13),
      .D3(b16_1_w19),
      .D5(b25_1_w28),
      .D6(b30_1_w37),
      .D7(b31_1_w42),
      .D8(b32_1_w46),
      .D9(b33_1_w49),
      .D_star(b35_1_w56),
      .D_sharp(b36_1_w57),
      .D_out(b60_1),
      .D4(b21_1_w65));

Mux12bit_4
     s2 (
      .B_in(b2),
      .D0(b1_2_w3),
      .D1(b6_2_w8),
      .D2(b11_2_w14),
      .D3(b16_2_w18),
      .D4(b21_2_w23),
      .D5(b25_2_w27),
      .D6(b30_2_w38),
      .D7(b31_2_w41),
      .D8(b32_2_w45),
      .D9(b33_2_w50),
      .D_sharp(b36_2_w54),
      .D_star(b35_2_w55),
      .D_out(b60_2));

Mux12bit_4
     s3 (
      .B_in(b2),
      .D0(b1_3_w2),
      .D1(b6_3_w7),
      .D2(b11_3_w15),
      .D3(b16_3_w17),
      .D4(b21_3_w22),
      .D5(b25_3_w26),
      .D6(b30_3_w39),
      .D7(b31_3_w40),
      .D8(b32_3_w44),
      .D9(b33_3_w51),
      .D_sharp(b36_3_w52),
      .D_star(b35_3_w53),
      .D_out(b60_3));

endmodule

