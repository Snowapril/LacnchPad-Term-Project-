module SRAM12bits(Din,RW,RST,CLK,Address,Dout);

input [11:0] Din;
input RW;
input RST;
input CLK;
input [3:0] Address;
output [11:0] Dout;

wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w11;
wire  w12;
wire  w13;
wire  w14;
wire  w15;
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
wire  w18;
wire  w16;
wire  w5;
wire  w10;
wire [11:0] b48;
wire [11:0] b31;
wire [11:0] b32;
wire [11:0] b33;
wire [11:0] b34;
wire [11:0] b35;
wire [11:0] b36;
wire [11:0] b37;
wire [11:0] b38;
wire [11:0] b39;
wire [11:0] b40;
wire [11:0] b41;
wire [11:0] b42;
wire [3:0] b43;
wire [11:0] b44;
wire  w41;

assign b48 = Din;
assign w18 = RW;
assign w41 = RST;
assign w5 = CLK;
assign b43 = Address;
assign Dout = b44;

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
      .Din(b43),
      .p13(),
      .p14(),
      .p15(),
      .p16());

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
      .i1(w23),
      .i2(w18),
      .o1(w10));

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
     s24 (
      .o1(w17),
      .i1(w30),
      .i2(w18));

regiset_12bits
     s26 (
      .Ce(w6),
      .CLK(w5),
      .Din(b48),
      .Dout(b31),
      .RST(w41));

PNU_AND2
     s23 (
      .i1(w29),
      .i2(w18),
      .o1(w16));

regiset_12bits
     s27 (
      .Ce(w7),
      .CLK(w5),
      .Din(b48),
      .Dout(b32),
      .RST(w41));

regiset_12bits
     s28 (
      .Ce(w8),
      .CLK(w5),
      .Din(b48),
      .Dout(b33),
      .RST(w41));

regiset_12bits
     s29 (
      .Ce(w9),
      .CLK(w5),
      .Din(b48),
      .Dout(b34),
      .RST(w41));

regiset_12bits
     s30 (
      .CLK(w5),
      .Ce(w10),
      .Din(b48),
      .Dout(b35),
      .RST(w41));

regiset_12bits
     s31 (
      .Ce(w11),
      .CLK(w5),
      .Din(b48),
      .Dout(b36),
      .RST(w41));

regiset_12bits
     s32 (
      .Ce(w12),
      .CLK(w5),
      .Din(b48),
      .Dout(b37),
      .RST(w41));

regiset_12bits
     s33 (
      .Ce(w13),
      .CLK(w5),
      .Din(b48),
      .Dout(b38),
      .RST(w41));

regiset_12bits
     s34 (
      .Ce(w14),
      .CLK(w5),
      .Din(b48),
      .Dout(b39),
      .RST(w41));

regiset_12bits
     s35 (
      .Ce(w15),
      .CLK(w5),
      .Din(b48),
      .Dout(b40),
      .RST(w41));

regiset_12bits
     s36 (
      .Ce(w16),
      .CLK(w5),
      .Din(b48),
      .Dout(b41),
      .RST(w41));

regiset_12bits
     s37 (
      .Ce(w17),
      .CLK(w5),
      .Din(b48),
      .Dout(b42),
      .RST(w41));

Mux12bit_12
     s25 (
      .p0(b31),
      .p1(b32),
      .p2(b33),
      .p3(b34),
      .p4(b35),
      .p5(b36),
      .p6(b37),
      .p7(b38),
      .p8(b39),
      .p9(b40),
      .p10(b41),
      .p11(b42),
      .address(b43),
      .Dout(b44));

endmodule

