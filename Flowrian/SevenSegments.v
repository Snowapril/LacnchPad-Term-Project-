module SevenSegments(com1,com2,com3,com4,com5,com6,com7,com8,Seg_a,Seg_b,Seg_c,Seg_d,Seg_e,Seg_f,Seg_g,CLK,RST,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9);

output com1;
output com2;
output com3;
output com4;
output com5;
output com6;
output com7;
output com8;
output Seg_a;
output Seg_b;
output Seg_c;
output Seg_d;
output Seg_e;
output Seg_f;
output Seg_g;
input CLK;
input RST;
input D0;
input D1;
input D2;
input D3;
input D4;
input D5;
input D6;
input D7;
input D8;
input D9;

wire  w4;
wire  w5;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire [3:0] b14;
wire [3:0] b16;
wire  w17;
wire [2:0] b23;
wire [3:0] b17;
wire [3:0] b18;
wire [3:0] b20;
wire [3:0] b21;
wire [3:0] b22;
wire [3:0] b24;
wire [3:0] b25;
wire [3:0] b26;
wire  w26;
wire [3:0] b29;
wire  w31;
wire  w33;
wire  w34;
wire  w35;
wire  w36;
wire  w37;
wire  w38;
wire  w39;
wire  w40;
wire  w41;
wire  w42;
wire  w43;
wire  w44;
wire  w45;
wire [3:0] b43;
wire  w46;
wire  w47;
wire  w48;
wire  w49;
wire  w50;
wire  w51;
wire  w52;
wire  b23_0_w18;
wire  b23_1_w19;
wire  b23_2_w16;
wire  b29_3;
wire  b29_2;
wire  b29_1;
wire  b29_0;

assign com1 = w4;
assign com2 = w5;
assign com3 = w6;
assign com4 = w7;
assign com5 = w8;
assign com6 = w9;
assign com7 = w10;
assign com8 = w11;
assign Seg_a = w46;
assign Seg_b = w47;
assign Seg_c = w48;
assign Seg_d = w49;
assign Seg_e = w50;
assign Seg_f = w51;
assign Seg_g = w52;
assign w34 = CLK;
assign w35 = RST;
assign w36 = D0;
assign w37 = D1;
assign w38 = D2;
assign w39 = D3;
assign w40 = D4;
assign w41 = D5;
assign w42 = D6;
assign w43 = D7;
assign w44 = D8;
assign w45 = D9;

assign b29[3] = b29_3;
assign b29[2] = b29_2;
assign b29[1] = b29_1;
assign b29[0] = b29_0;

assign b23_0_w18 = {b23[0]};
assign b23_1_w19 = {b23[1]};
assign b23_2_w16 = {b23[2]};

LevelToPulse
     s0 (
      .out(w31),
      .check(w33),
      .CLK(w34),
      .RST(w35));

Encode_decimal_to_binary
     s1 (
      .b13(b29_3),
      .b12(b29_2),
      .b11(b29_1),
      .b0(b29_0),
      .CHK(w33),
      .d0(w36),
      .d1(w37),
      .d2(w38),
      .d3(w39),
      .d4(w40),
      .d5(w41),
      .d6(w42),
      .d7(w43),
      .d8(w44),
      .d9(w45));

eight_counter
     s2 (
      .Dout(b23),
      .clk(w34),
      .rst(w35));

Decoder3bit
     s6 (
      .D1(w4),
      .D2(w5),
      .D3(w6),
      .D4(w7),
      .D5(w8),
      .D6(w9),
      .D7(w10),
      .D8(w11),
      .Din(b23));

MUX4bit_4
     s7 (
      .Dout(b14),
      .S0(b23_0_w18),
      .S1(b23_1_w19),
      .D3(b22),
      .D2(b24),
      .D1(b25),
      .D0(b26));

MUX4bit_4
     s8 (
      .Dout(b16),
      .S0(b23_0_w18),
      .S1(b23_1_w19),
      .D3(b17),
      .D2(b18),
      .D1(b20),
      .D0(b21));

MUX4bit_4
     s9 (
      .D0(b14),
      .D3(b16),
      .D2(b16),
      .D1(b16),
      .S1(w17),
      .S0(b23_2_w16),
      .Dout(b43));

PNU_ZERO
     s10 (
      .o1(w17));

PNU_ONE
     s12 (
      .o1(w26));

shift_register
     s11 (
      .D7out(b17),
      .D6out(b18),
      .D5out(b20),
      .D4out(b21),
      .D3out(b22),
      .D2out(b24),
      .D1out(b25),
      .D0out(b26),
      .Ce(w26),
      .Din(b29),
      .CLK(w31),
      .RST(w35));

seven_segment
     s13 (
      .Bin(b43),
      .a(w46),
      .b(w47),
      .c(w48),
      .d(w49),
      .e(w50),
      .f(w51),
      .g(w52));

endmodule

