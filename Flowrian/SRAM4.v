module SRAM4(Adress,Dout,Din,RW,RST,CLK);

input [1:0] Adress;
output [3:0] Dout;
input [3:0] Din;
input RW;
input RST;
input CLK;

wire [1:0] b25;
wire [3:0] b4;
wire [3:0] b6;
wire [3:0] b7;
wire  w9;
wire  w11;
wire  w13;
wire [3:0] b18;
wire  w21;
wire  w22;
wire [3:0] b21;
wire [3:0] b22;
wire  w25;
wire  w23;
wire [3:0] b23;
wire [3:0] b24;
wire  w24;
wire  w26;
wire  w27;
wire  w28;
wire  w29;
wire  b25_0_w3;
wire  b25_1_w4;
wire  b18_0;

assign b25 = Adress;
assign Dout = b22;
assign b23 = Din;
assign w21 = RW;
assign w23 = RST;
assign w24 = CLK;

assign b18[3] = b18_0;
assign b18[2] = b18_0;
assign b18[1] = b18_0;
assign b18[0] = b18_0;

assign b25_0_w3 = {b25[0]};
assign b25_1_w4 = {b25[1]};

Register4bit
     s0 (
      .Q(b7),
      .Ce(w13),
      .RST(w23),
      .Din(b23),
      .CLK(w24));

Register4bit
     s1 (
      .Q(b6),
      .Ce(w25),
      .RST(w23),
      .Din(b23),
      .CLK(w24));

Register4bit
     s2 (
      .Ce(w11),
      .RST(w23),
      .Din(b23),
      .Q(b24),
      .CLK(w24));

Register4bit
     s3 (
      .Q(b4),
      .Ce(w9),
      .RST(w23),
      .Din(b23),
      .CLK(w24));

MUX4bit_4
     s4 (
      .S0(b25_0_w3),
      .S1(b25_1_w4),
      .D3(b4),
      .D1(b6),
      .D0(b7),
      .Dout(b21),
      .D2(b24));

PNU_AND2
     s6 (
      .o1(w13),
      .i2(w21),
      .i1(w26));

PNU_AND2
     s7 (
      .i2(w21),
      .o1(w25),
      .i1(w27));

PNU_AND2
     s8 (
      .o1(w11),
      .i2(w21),
      .i1(w28));

PNU_AND2
     s9 (
      .o1(w9),
      .i2(w21),
      .i1(w29));

MUX4bit_4
     s10 (
      .D1(b18),
      .S0(w21),
      .S1(w22),
      .D0(b21),
      .D2(b21),
      .D3(b21),
      .Dout(b22));

PNU_ZERO
     s11 (
      .o1(b18_0));

PNU_ZERO
     s12 (
      .o1(w22));

Decoder2bit
     s13 (
      .Q0(w26),
      .Q1(w27),
      .Q2(w28),
      .Q3(w29),
      .Din(b25));

endmodule

