module Compare_4bit(A,B,GT,EQ,LT);

input [3:0] A;
input [3:0] B;
output GT;
output EQ;
output LT;

wire [3:0] b2;
wire [3:0] b1;
wire  w6;
wire  w7;
wire  w9;
wire  w10;
wire  w12;
wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w18;
wire [1:0] b2_1to0_b3;
wire [1:0] b1_1to0_b4;
wire [1:0] b2_3to2_b5;
wire [1:0] b1_3to2_b6;

assign b2 = A;
assign b1 = B;
assign GT = w17;
assign EQ = w15;
assign LT = w16;

assign b2_1to0_b3[1:0] = {b2[1:0]};
assign b1_1to0_b4[1:0] = {b1[1:0]};
assign b2_3to2_b5[1:0] = {b2[3:2]};
assign b1_3to2_b6[1:0] = {b1[3:2]};

Compare_2bit
     s0 (
      .A(b2_1to0_b3),
      .B(b1_1to0_b4),
      .LT(w9),
      .GT(w12),
      .EQ(w13));

Compare_2bit
     s1 (
      .A(b2_3to2_b5),
      .B(b1_3to2_b6),
      .LT(w6),
      .GT(w10),
      .EQ(w14));

PNU_OR2
     s2 (
      .i1(w10),
      .o1(w17),
      .i2(w18));

PNU_OR2
     s4 (
      .i2(w6),
      .i1(w7),
      .o1(w16));

PNU_AND2
     s5 (
      .o1(w7),
      .i1(w9),
      .i2(w14));

PNU_AND2
     s8 (
      .i1(w12),
      .i2(w14),
      .o1(w18));

PNU_AND2
     s6 (
      .i1(w13),
      .i2(w14),
      .o1(w15));

endmodule

