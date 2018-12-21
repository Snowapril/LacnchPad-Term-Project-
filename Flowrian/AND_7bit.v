module AND_7bit(Din,mask,Dout);

input [6:0] Din;
input mask;
output [6:0] Dout;

wire [6:0] b8;
wire  w8;
wire [6:0] b9;
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

assign b8 = Din;
assign w8 = mask;
assign Dout = b9;

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

PNU_AND2
     s0 (
      .i1(b8_0_w1),
      .i2(w8),
      .o1(b9_0));

PNU_AND2
     s1 (
      .i1(b8_1_w2),
      .i2(w8),
      .o1(b9_1));

PNU_AND2
     s2 (
      .i1(b8_2_w3),
      .i2(w8),
      .o1(b9_2));

PNU_AND2
     s3 (
      .i1(b8_3_w4),
      .i2(w8),
      .o1(b9_3));

PNU_AND2
     s4 (
      .i1(b8_4_w5),
      .i2(w8),
      .o1(b9_4));

PNU_AND2
     s5 (
      .i1(b8_5_w6),
      .i2(w8),
      .o1(b9_5));

PNU_AND2
     s6 (
      .i1(b8_6_w7),
      .i2(w8),
      .o1(b9_6));

endmodule

