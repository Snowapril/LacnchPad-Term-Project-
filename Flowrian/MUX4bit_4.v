module MUX4bit_4(D0,D1,D2,D3,S0,S1,Dout);

input [3:0] D0;
input [3:0] D1;
input [3:0] D2;
input [3:0] D3;
input S0;
input S1;
output [3:0] Dout;

wire  w1;
wire  w2;
wire [3:0] b2;
wire [3:0] b4;
wire [3:0] b5;
wire [3:0] b11;
wire [3:0] b22;
wire  b2_0_w6;
wire  b4_0_w8;
wire  b5_0_w9;
wire  b2_1_w10;
wire  b4_1_w12;
wire  b5_1_w13;
wire  b11_0_w14;
wire  b11_1_w15;
wire  b2_2_w16;
wire  b11_2_w17;
wire  b4_2_w18;
wire  b5_2_w19;
wire  b2_3_w20;
wire  b11_3_w21;
wire  b4_3_w22;
wire  b5_3_w23;
wire  b22_0;
wire  b22_1;
wire  b22_2;
wire  b22_3;

assign b2 = D0;
assign b11 = D1;
assign b4 = D2;
assign b5 = D3;
assign w1 = S0;
assign w2 = S1;
assign Dout = b22;

assign b22[3] = b22_3;
assign b22[2] = b22_2;
assign b22[1] = b22_1;
assign b22[0] = b22_0;

assign b2_0_w6 = {b2[0]};
assign b4_0_w8 = {b4[0]};
assign b5_0_w9 = {b5[0]};
assign b2_1_w10 = {b2[1]};
assign b4_1_w12 = {b4[1]};
assign b5_1_w13 = {b5[1]};
assign b11_0_w14 = {b11[0]};
assign b11_1_w15 = {b11[1]};
assign b2_2_w16 = {b2[2]};
assign b11_2_w17 = {b11[2]};
assign b4_2_w18 = {b4[2]};
assign b5_2_w19 = {b5[2]};
assign b2_3_w20 = {b2[3]};
assign b11_3_w21 = {b11[3]};
assign b4_3_w22 = {b4[3]};
assign b5_3_w23 = {b5[3]};

PNU_MUX4
     s0 (
      .e2(w1),
      .e1(w2),
      .i1(b2_0_w6),
      .i3(b4_0_w8),
      .i4(b5_0_w9),
      .i2(b11_0_w14),
      .o1(b22_0));

PNU_MUX4
     s1 (
      .e2(w1),
      .e1(w2),
      .i1(b2_1_w10),
      .i3(b4_1_w12),
      .i4(b5_1_w13),
      .i2(b11_1_w15),
      .o1(b22_1));

PNU_MUX4
     s2 (
      .e2(w1),
      .e1(w2),
      .i1(b2_2_w16),
      .i2(b11_2_w17),
      .i3(b4_2_w18),
      .i4(b5_2_w19),
      .o1(b22_2));

PNU_MUX4
     s3 (
      .e2(w1),
      .e1(w2),
      .i1(b2_3_w20),
      .i2(b11_3_w21),
      .i3(b4_3_w22),
      .i4(b5_3_w23),
      .o1(b22_3));

endmodule

