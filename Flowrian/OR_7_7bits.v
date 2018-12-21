module OR_7_7bits(Din,Dout,Din2);

input [6:0] Din;
output [6:0] Dout;
input [6:0] Din2;

wire [6:0] b8;
wire [6:0] b9;
wire [6:0] b23;
wire  b8_0_w1;
wire  b8_1_w2;
wire  b8_2_w3;
wire  b8_3_w4;
wire  b8_4_w5;
wire  b8_5_w6;
wire  b8_6_w7;
wire  b9_0;
wire  b9_1;
wire  b9_2;
wire  b9_3;
wire  b9_4;
wire  b9_5;
wire  b9_6;
wire  b23_1_w17;
wire  b23_2_w18;
wire  b23_3_w19;
wire  b23_4_w20;
wire  b23_5_w21;
wire  b23_6_w22;
wire  b23_0_w23;

assign b8 = Din;
assign Dout = b9;
assign b23 = Din2;

assign b9[6] = b9_6;
assign b9[5] = b9_5;
assign b9[4] = b9_4;
assign b9[3] = b9_3;
assign b9[2] = b9_2;
assign b9[1] = b9_1;
assign b9[0] = b9_0;

assign b8_0_w1 = {b8[0]};
assign b8_1_w2 = {b8[1]};
assign b8_2_w3 = {b8[2]};
assign b8_3_w4 = {b8[3]};
assign b8_4_w5 = {b8[4]};
assign b8_5_w6 = {b8[5]};
assign b8_6_w7 = {b8[6]};
assign b23_1_w17 = {b23[1]};
assign b23_2_w18 = {b23[2]};
assign b23_3_w19 = {b23[3]};
assign b23_4_w20 = {b23[4]};
assign b23_5_w21 = {b23[5]};
assign b23_6_w22 = {b23[6]};
assign b23_0_w23 = {b23[0]};

PNU_OR2
     s0 (
      .i1(b8_0_w1),
      .o1(b9_0),
      .i2(b23_0_w23));

PNU_OR2
     s1 (
      .i1(b8_1_w2),
      .o1(b9_1),
      .i2(b23_1_w17));

PNU_OR2
     s2 (
      .i1(b8_2_w3),
      .o1(b9_2),
      .i2(b23_2_w18));

PNU_OR2
     s3 (
      .i1(b8_3_w4),
      .o1(b9_3),
      .i2(b23_3_w19));

PNU_OR2
     s4 (
      .i1(b8_4_w5),
      .o1(b9_4),
      .i2(b23_4_w20));

PNU_OR2
     s5 (
      .i1(b8_5_w6),
      .o1(b9_5),
      .i2(b23_5_w21));

PNU_OR2
     s6 (
      .i1(b8_6_w7),
      .o1(b9_6),
      .i2(b23_6_w22));

endmodule

