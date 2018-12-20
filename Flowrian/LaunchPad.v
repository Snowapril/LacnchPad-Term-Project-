module LaunchPad(Dip_1,Dip_2,Dip_3,BTN1,BTN2,BTN3,BTN4,BTN5,BTN6,BTN7,BTN8,BTN9,BTN_star,Dip_4,BTN_0,BTN_sharp,CLK,RST,Pout,Dout,Accout,RW,CE);

input Dip_1;
input Dip_2;
input Dip_3;
input BTN1;
input BTN2;
input BTN3;
input BTN4;
input BTN5;
input BTN6;
input BTN7;
input BTN8;
input BTN9;
input BTN_star;
input Dip_4;
input BTN_0;
input BTN_sharp;
input CLK;
input RST;
output Pout;
output [3:0] Dout;
output [11:0] Accout;
output RW;
output CE;

wire  w0;
wire  w1;
wire  w2;
wire  w3;
wire  w34;
wire  w33;
wire  w37;
wire [11:0] b25;
wire [11:0] b48;
wire  w57;
wire  w62;
wire  w59;
wire  w61;
wire [3:0] b41;
wire [3:0] b44;
wire  w64;
wire  w60;
wire [3:0] b46;
wire [3:0] b47;
wire  w66;
wire  w65;
wire  w58;
wire  w63;
wire  b48_0_w45;
wire  b48_1_w46;
wire  b48_2_w47;
wire  b48_3_w48;
wire  b48_4_w49;
wire  b48_5_w50;
wire  b48_6_w51;
wire  b48_7_w52;
wire  b48_8_w53;
wire  b48_9_w54;
wire  b48_10_w55;
wire  b48_11_w56;
wire  b25_11_w78;
wire  b25_0_w67;
wire  b25_2_w68;
wire  b25_1_w69;
wire  b25_3_w70;
wire  b25_4_w71;
wire  b25_5_w72;
wire  b25_6_w73;
wire  b25_7_w74;
wire  b25_8_w75;
wire  b25_9_w76;
wire  b25_10_w77;

assign w0 = Dip_1;
assign w1 = Dip_2;
assign w2 = Dip_3;
assign w60 = Dip_4;
assign w58 = CLK;
assign w63 = RST;
assign Pout = w57;
assign Dout = b46;
assign Accout = b48;
assign RW = w66;
assign CE = w65;

assign b25[11] = BTN_sharp;
assign b25[10] = BTN_0;
assign b25[9] = BTN_star;
assign b25[8] = BTN9;
assign b25[7] = BTN8;
assign b25[6] = BTN7;
assign b25[5] = BTN6;
assign b25[4] = BTN5;
assign b25[3] = BTN4;
assign b25[2] = BTN3;
assign b25[1] = BTN2;
assign b25[0] = BTN1;

assign b48_0_w45 = {b48[0]};
assign b48_1_w46 = {b48[1]};
assign b48_2_w47 = {b48[2]};
assign b48_3_w48 = {b48[3]};
assign b48_4_w49 = {b48[4]};
assign b48_5_w50 = {b48[5]};
assign b48_6_w51 = {b48[6]};
assign b48_7_w52 = {b48[7]};
assign b48_8_w53 = {b48[8]};
assign b48_9_w54 = {b48[9]};
assign b48_10_w55 = {b48[10]};
assign b48_11_w56 = {b48[11]};
assign b25_11_w78 = {b25[11]};
assign b25_0_w67 = {b25[0]};
assign b25_2_w68 = {b25[2]};
assign b25_1_w69 = {b25[1]};
assign b25_3_w70 = {b25[3]};
assign b25_4_w71 = {b25[4]};
assign b25_5_w72 = {b25[5]};
assign b25_6_w73 = {b25[6]};
assign b25_7_w74 = {b25[7]};
assign b25_8_w75 = {b25[8]};
assign b25_9_w76 = {b25[9]};
assign b25_10_w77 = {b25[10]};

mod_converter
     s0 (
      .switch_1(w0),
      .switch_2(w1),
      .switch_3(w2),
      .mod_1(w3),
      .mod_2(w37),
      .mod_3());

PNU_OR2
     s1 (
      .i1(w3),
      .o1(w34),
      .i2(w37));

encoder_12_to_4
     s2 (
      .chk(w59),
      .out_binary(b41),
      .in_11(b25_11_w78),
      .in_0(b25_0_w67),
      .in_2(b25_2_w68),
      .in_1(b25_1_w69),
      .in_3(b25_3_w70),
      .in_4(b25_4_w71),
      .in_5(b25_5_w72),
      .in_6(b25_6_w73),
      .in_7(b25_7_w74),
      .in_8(b25_8_w75),
      .in_9(b25_9_w76),
      .in_10(b25_10_w77));

PianoPlay
     s3 (
      .EN(w33),
      .Dout(w57),
      .Bin(b41),
      .CLK(w58),
      .RST(w63));

PNU_AND2
     s4 (
      .i1(w34),
      .o1(w33),
      .i2(w59));

Accumulator
     s5 (
      .Din(b25),
      .Dout(b48),
      .Ce(w65),
      .CLK(w58),
      .RST(w63));

PNU_AND2
     s6 (
      .i1(w37),
      .i2(w60),
      .o1(w65));

encoder_12_to_4
     s7 (
      .in_0(b48_0_w45),
      .in_1(b48_1_w46),
      .in_2(b48_2_w47),
      .in_3(b48_3_w48),
      .in_4(b48_4_w49),
      .in_5(b48_5_w50),
      .in_6(b48_6_w51),
      .in_7(b48_7_w52),
      .in_8(b48_8_w53),
      .in_9(b48_9_w54),
      .in_10(b48_10_w55),
      .in_11(b48_11_w56),
      .chk(w64),
      .out_binary(b47));

register
     s8 (
      .Ce(w62),
      .Din(b41),
      .Dout(b44),
      .CLK(w58),
      .RST(w63));

PNU_NOT
     s9 (
      .o1(w61),
      .i1(w60));

PNU_AND2
     s10 (
      .o1(w62),
      .i2(w59),
      .i1(w61));

SRAM12bits
     s11 (
      .Address(b44),
      .Dout(b46),
      .Din(b47),
      .RW(w66),
      .CLK(w58),
      .RST(w63));

PNU_AND2
     s12 (
      .i2(w64),
      .o1(w66),
      .i1(w65));

endmodule

