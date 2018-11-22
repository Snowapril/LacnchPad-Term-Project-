module eight_counter(clk,rst,Dout);

input clk;
input rst;
output [2:0] Dout;

wire  w1;
wire  w2;
wire  w7;
wire  w8;
wire  w11;
wire  w12;
wire  w13;
wire  w14;
wire  w16;
wire  w19;
wire  w20;
wire  w21;
wire  w23;
wire  w24;
wire  w26;
wire  w28;
wire  w29;
wire  w22;
wire  w32;
wire  w30;
wire [2:0] b11;
wire  b11_2;
wire  b11_2_w31;
wire  b11_1;
wire  b11_1_w25;
wire  b11_0;
wire  b11_0_w27;

assign w1 = clk;
assign w2 = rst;
assign Dout = b11;

assign b11[2] = b11_2;
assign b11[1] = b11_1;
assign b11[0] = b11_0;

assign b11_2_w31 = {b11[2]};
assign b11_1_w25 = {b11[1]};
assign b11_0_w27 = {b11[0]};

PNU_DFF
     s3 (
      .clock(w1),
      .reset(w2),
      .D(w30),
      .Q(b11_0));

PNU_DFF
     s1 (
      .clock(w1),
      .reset(w2),
      .D(w32),
      .Q(b11_1));

PNU_DFF
     s2 (
      .clock(w1),
      .reset(w2),
      .D(w22),
      .Q(b11_2));

PNU_AND2
     s4 (
      .i2(w7),
      .o1(w13),
      .i1(b11_2_w31));

PNU_AND3
     s5 (
      .i1(w8),
      .o1(w12),
      .i2(b11_1_w25),
      .i3(b11_0_w27));

PNU_AND2
     s6 (
      .i2(w11),
      .o1(w14),
      .i1(b11_2_w31));

PNU_NOT
     s7 (
      .o1(w7),
      .i1(b11_1_w25));

PNU_NOT
     s8 (
      .o1(w8),
      .i1(b11_2_w31));

PNU_NOT
     s9 (
      .o1(w11),
      .i1(b11_0_w27));

PNU_OR3
     s10 (
      .i2(w12),
      .i1(w13),
      .i3(w14),
      .o1(w22));

PNU_AND2
     s11 (
      .i1(w16),
      .o1(w20),
      .i2(b11_0_w27));

PNU_AND2
     s12 (
      .i2(w19),
      .o1(w21),
      .i1(b11_1_w25));

PNU_NOT
     s13 (
      .o1(w16),
      .i1(b11_1_w25));

PNU_NOT
     s14 (
      .o1(w19),
      .i1(b11_0_w27));

PNU_OR2
     s15 (
      .i1(w20),
      .i2(w21),
      .o1(w32));

PNU_AND2
     s16 (
      .i2(w23),
      .i1(w24),
      .o1(w28));

PNU_AND2
     s17 (
      .i2(w26),
      .o1(w29),
      .i1(b11_1_w25));

PNU_NOT
     s18 (
      .o1(w24),
      .i1(b11_1_w25));

PNU_NOT
     s19 (
      .o1(w23),
      .i1(b11_0_w27));

PNU_NOT
     s20 (
      .o1(w26),
      .i1(b11_0_w27));

PNU_OR2
     s21 (
      .i1(w28),
      .i2(w29),
      .o1(w30));

endmodule

