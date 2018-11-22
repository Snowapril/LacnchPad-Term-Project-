module Add_two_decimal_to_5bit_binary(A,B,S);

input [9:0] A;
input [9:0] B;
output [4:0] S;

wire [9:0] b0;
wire [9:0] b1;
wire  w12;
wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w20;
wire  w19;
wire  w21;
wire [4:0] b31;
wire  b1_0_w2;
wire  b1_1_w3;
wire  b1_2_w4;
wire  b1_3_w5;
wire  b1_4_w6;
wire  b1_5_w7;
wire  b1_6_w8;
wire  b1_7_w9;
wire  b1_8_w10;
wire  b1_9_w11;
wire  b0_9_w22;
wire  b0_8_w23;
wire  b0_7_w24;
wire  b0_6_w25;
wire  b0_5_w26;
wire  b0_4_w27;
wire  b0_3_w28;
wire  b0_2_w29;
wire  b0_1_w30;
wire  b0_0_w31;
wire  b31_3;
wire  b31_2;
wire  b31_1;
wire  b31_0;
wire  b31_4;

assign b1 = A;
assign b0 = B;
assign S = b31;

assign b31[4] = b31_4;
assign b31[3] = b31_3;
assign b31[2] = b31_2;
assign b31[1] = b31_1;
assign b31[0] = b31_0;

assign b1_0_w2 = {b1[0]};
assign b1_1_w3 = {b1[1]};
assign b1_2_w4 = {b1[2]};
assign b1_3_w5 = {b1[3]};
assign b1_4_w6 = {b1[4]};
assign b1_5_w7 = {b1[5]};
assign b1_6_w8 = {b1[6]};
assign b1_7_w9 = {b1[7]};
assign b1_8_w10 = {b1[8]};
assign b1_9_w11 = {b1[9]};
assign b0_9_w22 = {b0[9]};
assign b0_8_w23 = {b0[8]};
assign b0_7_w24 = {b0[7]};
assign b0_6_w25 = {b0[6]};
assign b0_5_w26 = {b0[5]};
assign b0_4_w27 = {b0[4]};
assign b0_3_w28 = {b0[3]};
assign b0_2_w29 = {b0[2]};
assign b0_1_w30 = {b0[1]};
assign b0_0_w31 = {b0[0]};

PNU_ZERO
     s3 (
      .o1(w21));

Ripple_carray_adder_4bit
     s1 (
      .A0(w12),
      .A1(w13),
      .A2(w14),
      .A3(w15),
      .B0(w16),
      .B1(w17),
      .B2(w20),
      .B3(w19),
      .Cin(w21),
      .S3(b31_3),
      .S2(b31_2),
      .S1(b31_1),
      .S0(b31_0),
      .Cout(b31_4));

Encode_decimal_to_binary
     s2 (
      .d0(b1_0_w2),
      .d1(b1_1_w3),
      .d2(b1_2_w4),
      .d3(b1_3_w5),
      .d4(b1_4_w6),
      .d5(b1_5_w7),
      .d6(b1_6_w8),
      .d7(b1_7_w9),
      .d8(b1_8_w10),
      .d9(b1_9_w11),
      .b0(w12),
      .b11(w13),
      .b12(w14),
      .b13(w15));

Encode_decimal_to_binary
     s4 (
      .b0(w16),
      .b11(w17),
      .b12(w20),
      .b13(w19),
      .d9(b0_9_w22),
      .d8(b0_8_w23),
      .d7(b0_7_w24),
      .d6(b0_6_w25),
      .d5(b0_5_w26),
      .d4(b0_4_w27),
      .d3(b0_3_w28),
      .d2(b0_2_w29),
      .d1(b0_1_w30),
      .d0(b0_0_w31));

endmodule

