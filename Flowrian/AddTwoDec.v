module AddTwoDec(Dec,RST,CLK,Sum);

input [9:0] Dec;
input RST;
input CLK;
output [4:0] Sum;

wire [9:0] b0;
wire [3:0] b2;
wire [3:0] b8;
wire [3:0] b9;
wire  w17;
wire [4:0] b17;
wire  w24;
wire  w25;
wire [4:0] b26;
wire  w1;
wire  w26;
wire  b2_0;
wire  b2_1;
wire  b2_2;
wire  b2_3;
wire  b9_2_w10;
wire  b9_3_w11;
wire  b9_0_w12;
wire  b8_3_w13;
wire  b8_2_w14;
wire  b8_1_w15;
wire  b8_0_w16;
wire  b17_3;
wire  b17_2;
wire  b17_1;
wire  b17_0;
wire  b17_4;
wire  b0_0_w27;
wire  b0_1_w28;
wire  b0_2_w29;
wire  b0_3_w30;
wire  b0_4_w31;
wire  b0_5_w32;
wire  b0_6_w33;
wire  b0_7_w34;
wire  b0_8_w35;
wire  b0_9_w36;
wire  b9_1_w37;

assign b0 = Dec;
assign w24 = RST;
assign w25 = CLK;
assign Sum = b26;

assign b2[3] = b2_3;
assign b2[2] = b2_2;
assign b2[1] = b2_1;
assign b2[0] = b2_0;
assign b17[4] = b17_4;
assign b17[3] = b17_3;
assign b17[2] = b17_2;
assign b17[1] = b17_1;
assign b17[0] = b17_0;

assign b9_2_w10 = {b9[2]};
assign b9_3_w11 = {b9[3]};
assign b9_0_w12 = {b9[0]};
assign b8_3_w13 = {b8[3]};
assign b8_2_w14 = {b8[2]};
assign b8_1_w15 = {b8[1]};
assign b8_0_w16 = {b8[0]};
assign b0_0_w27 = {b0[0]};
assign b0_1_w28 = {b0[1]};
assign b0_2_w29 = {b0[2]};
assign b0_3_w30 = {b0[3]};
assign b0_4_w31 = {b0[4]};
assign b0_5_w32 = {b0[5]};
assign b0_6_w33 = {b0[6]};
assign b0_7_w34 = {b0[7]};
assign b0_8_w35 = {b0[8]};
assign b0_9_w36 = {b0[9]};
assign b9_1_w37 = {b9[1]};

Encode_decimal_to_binary
     s0 (
      .b0(b2_0),
      .b11(b2_1),
      .b12(b2_2),
      .b13(b2_3),
      .d0(b0_0_w27),
      .d1(b0_1_w28),
      .d2(b0_2_w29),
      .d3(b0_3_w30),
      .d4(b0_4_w31),
      .d5(b0_5_w32),
      .d6(b0_6_w33),
      .d7(b0_7_w34),
      .d8(b0_8_w35),
      .d9(b0_9_w36),
      .CHK(w1));

Shift4bitRegister
     s1 (
      .Din(b2),
      .D1out(b8),
      .D0out(b9),
      .RST(w24),
      .CLK(w25),
      .Ce(w1));

Ripple_carray_adder_4bit
     s3 (
      .A2(b9_2_w10),
      .A3(b9_3_w11),
      .A0(b9_0_w12),
      .B3(b8_3_w13),
      .B2(b8_2_w14),
      .B1(b8_1_w15),
      .B0(b8_0_w16),
      .Cin(w17),
      .S3(b17_3),
      .S2(b17_2),
      .S1(b17_1),
      .S0(b17_0),
      .Cout(b17_4),
      .A1(b9_1_w37));

PNU_ZERO
     s4 (
      .o1(w17));

PNU_ONE
     s5 (
      .o1(w26));

Register5bit
     s2 (
      .Din(b17),
      .RST(w24),
      .CLK(w25),
      .Dout(b26),
      .Ce(w26));

endmodule

