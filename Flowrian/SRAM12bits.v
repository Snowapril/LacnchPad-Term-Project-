module SRAM12bits(Din,RW,RST,CLK,Address,Dout);

input [3:0] Din;
input RW;
input RST;
input CLK;
input [3:0] Address;
output [3:0] Dout;

wire  w5;
wire  w4;
wire [3:0] b4;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w12;
wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w19;
wire  w20;
wire  w21;
wire  w22;
wire  w23;
wire  w24;
wire  w25;
wire  w26;
wire  w27;
wire  w28;
wire  w29;
wire  w30;
wire [3:0] b29;
wire [3:0] b30;
wire [3:0] b32;
wire [3:0] b33;
wire [3:0] b34;
wire [3:0] b35;
wire [3:0] b36;
wire [3:0] b37;
wire [3:0] b38;
wire [3:0] b39;
wire [3:0] b41;
wire [3:0] b45;
wire  w18;
wire [3:0] b46;
wire [3:0] b47;
wire  b41_3_w41;
wire  b41_2_w42;
wire  b41_1_w43;
wire  b41_0_w44;

assign b4 = Din;
assign w18 = RW;
assign w4 = RST;
assign w5 = CLK;
assign b41 = Address;
assign Dout = b45;

assign b41_3_w41 = {b41[3]};
assign b41_2_w42 = {b41[2]};
assign b41_1_w43 = {b41[1]};
assign b41_0_w44 = {b41[0]};

Decoder4bits
     s0 (
      .p1(w19),
      .p2(w20),
      .p3(w21),
      .p4(w22),
      .p5(w23),
      .p6(w24),
      .p7(w25),
      .p8(w26),
      .p9(w27),
      .p10(w28),
      .p11(w29),
      .p12(w30),
      .Din(b41),
      .p13(),
      .p14(),
      .p15(),
      .p16());

register
     s1 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w6),
      .Dout(b29));

register
     s2 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w7),
      .Dout(b30));

register
     s3 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w8),
      .Dout(b47));

register
     s4 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w9),
      .Dout(b32));

register
     s5 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w10),
      .Dout(b33));

register
     s6 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w11),
      .Dout(b34));

register
     s7 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w12),
      .Dout(b35));

register
     s8 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w13),
      .Dout(b37));

register
     s9 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w14),
      .Dout(b36));

register
     s10 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w15),
      .Dout(b38));

register
     s11 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w16),
      .Dout(b39));

register
     s12 (
      .CLK(w5),
      .RST(w4),
      .Din(b4),
      .Ce(w17),
      .Dout(b46));

PNU_AND2
     s13 (
      .o1(w6),
      .i1(w19),
      .i2(w18));

PNU_AND2
     s14 (
      .o1(w7),
      .i1(w20),
      .i2(w18));

PNU_AND2
     s15 (
      .o1(w8),
      .i1(w21),
      .i2(w18));

PNU_AND2
     s16 (
      .o1(w9),
      .i1(w22),
      .i2(w18));

PNU_AND2
     s17 (
      .o1(w10),
      .i1(w23),
      .i2(w18));

PNU_AND2
     s18 (
      .o1(w11),
      .i1(w24),
      .i2(w18));

PNU_AND2
     s19 (
      .o1(w12),
      .i1(w25),
      .i2(w18));

PNU_AND2
     s20 (
      .o1(w13),
      .i1(w26),
      .i2(w18));

PNU_AND2
     s21 (
      .o1(w14),
      .i1(w27),
      .i2(w18));

PNU_AND2
     s22 (
      .o1(w15),
      .i1(w28),
      .i2(w18));

PNU_AND2
     s23 (
      .o1(w16),
      .i1(w29),
      .i2(w18));

PNU_AND2
     s24 (
      .o1(w17),
      .i1(w30),
      .i2(w18));

MUX4bit_16
     s25 (
      .p0(b29),
      .p1(b30),
      .p3(b32),
      .p4(b33),
      .p5(b34),
      .p6(b35),
      .p8(b36),
      .p7(b37),
      .p9(b38),
      .p10(b39),
      .S3(b41_3_w41),
      .S2(b41_2_w42),
      .S1(b41_1_w43),
      .S0(b41_0_w44),
      .Dout(b45),
      .p12(b46),
      .p11(b46),
      .p13(b47),
      .p14(b47),
      .p15(b47),
      .p2(b47));

endmodule

