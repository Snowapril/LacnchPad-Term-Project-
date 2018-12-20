module LaunchPad(Dip_1,Dip_2,Dip_3,BTN1,BTN2,BTN3,BTN4,BTN5,BTN6,BTN7,BTN8,BTN9,BTN_star,Dip_4,BTN_0,BTN_sharp,CLK,RST,Pout,Dout,Dip_6,Dip_7,Dip_8,led_1,led_3,led_4,led_5,led_6,led_7,led_8,led_1_B,led_1_G,led_1_R,led_2_B,led_2_G,led_2_R,led_3_B,led_3_G,led_3_R,led_4_B,led_4_G,led_4_R,led_2);

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
input Dip_6;
input Dip_7;
input Dip_8;
output led_1;
output led_3;
output led_4;
output led_5;
output led_6;
output led_7;
output led_8;
output led_1_B;
output led_1_G;
output led_1_R;
output led_2_B;
output led_2_G;
output led_2_R;
output led_3_B;
output led_3_G;
output led_3_R;
output led_4_B;
output led_4_G;
output led_4_R;
output led_2;

wire  w0;
wire  w1;
wire  w2;
wire  w3;
wire  w34;
wire  w33;
wire  w37;
wire [11:0] b25;
wire [11:0] b48;
wire  w62;
wire  w59;
wire  w61;
wire [3:0] b41;
wire  w64;
wire  w60;
wire [3:0] b46;
wire  w79;
wire  w80;
wire  w81;
wire [2:0] b50;
wire  w57;
wire  w82;
wire [3:0] b51;
wire [3:0] b52;
wire  w65;
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
wire  w31;
wire  w32;
wire  w78;
wire  w83;
wire  w84;
wire  w85;
wire  w86;
wire  w87;
wire  w88;
wire  w89;
wire  w90;
wire  w92;
wire  w91;
wire  w94;
wire  w95;
wire  w93;
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
wire  b25_11_w69;
wire  b25_5_w72;
wire  b25_4_w71;
wire  b25_7_w74;
wire  b25_0_w66;
wire  b25_9_w76;
wire  b25_10_w77;
wire  b25_1_w67;
wire  b25_2_w68;
wire  b25_3_w70;
wire  b25_6_w73;
wire  b25_8_w75;

assign w0 = Dip_1;
assign w1 = Dip_2;
assign w2 = Dip_3;
assign w60 = Dip_4;
assign w78 = CLK;
assign w92 = RST;
assign Pout = w57;
assign Dout = b46;
assign w79 = Dip_6;
assign w80 = Dip_7;
assign w81 = Dip_8;
assign led_1 = w84;
assign led_3 = w85;
assign led_4 = w86;
assign led_5 = w87;
assign led_6 = w88;
assign led_7 = w89;
assign led_8 = w90;
assign led_1_B = w32;
assign led_1_G = w31;
assign led_1_R = w30;
assign led_2_B = w29;
assign led_2_G = w28;
assign led_2_R = w27;
assign led_3_B = w26;
assign led_3_G = w25;
assign led_3_R = w24;
assign led_4_B = w23;
assign led_4_G = w22;
assign led_4_R = w21;
assign led_2 = w83;

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
assign b25_11_w69 = {b25[11]};
assign b25_5_w72 = {b25[5]};
assign b25_4_w71 = {b25[4]};
assign b25_7_w74 = {b25[7]};
assign b25_0_w66 = {b25[0]};
assign b25_9_w76 = {b25[9]};
assign b25_10_w77 = {b25[10]};
assign b25_1_w67 = {b25[1]};
assign b25_2_w68 = {b25[2]};
assign b25_3_w70 = {b25[3]};
assign b25_6_w73 = {b25[6]};
assign b25_8_w75 = {b25[8]};

mod_converter
     s0 (
      .switch_1(w0),
      .switch_2(w1),
      .switch_3(w2),
      .mod_1(w3),
      .mod_2(w37),
      .mod_3(w93));

PNU_OR2
     s1 (
      .i1(w3),
      .o1(w34),
      .i2(w37));

encoder_12_to_4
     s2 (
      .chk(w59),
      .out_binary(b41),
      .in_11(b25_11_w69),
      .in_5(b25_5_w72),
      .in_4(b25_4_w71),
      .in_7(b25_7_w74),
      .in_0(b25_0_w66),
      .in_9(b25_9_w76),
      .in_10(b25_10_w77),
      .in_1(b25_1_w67),
      .in_2(b25_2_w68),
      .in_3(b25_3_w70),
      .in_6(b25_6_w73),
      .in_8(b25_8_w75));

PianoPlay
     s3 (
      .EN(w33),
      .Bin(b41),
      .octave(b50),
      .Dout(w57),
      .CLK(w78),
      .RST(w91));

PNU_AND2
     s4 (
      .i1(w34),
      .o1(w33),
      .i2(w59));

Accumulator
     s5 (
      .Din(b25),
      .Dout(b48),
      .Ce(w82),
      .CLK(w78),
      .RST(w91));

PNU_AND2
     s6 (
      .i1(w37),
      .i2(w60),
      .o1(w82));

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
      .out_binary(b52));

register
     s8 (
      .Ce(w62),
      .Din(b41),
      .Dout(b51),
      .CLK(w78),
      .RST(w91));

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
      .Dout(b46),
      .Address(b51),
      .Din(b52),
      .RW(w65),
      .CLK(w78),
      .RST(w91));

PNU_AND2
     s12 (
      .i2(w64),
      .i1(w82),
      .o1(w65));

PriorityEncoder3
     s13 (
      .D0(w79),
      .D1(w80),
      .D2(w81),
      .Dout(b50));

EventHandler
     s14 (
      .led_4_R(w21),
      .led_4_G(w22),
      .led_4_B(w23),
      .led_3_R(w24),
      .led_3_G(w25),
      .led_3_B(w26),
      .led_2_R(w27),
      .led_2_G(w28),
      .led_2_B(w29),
      .led_1_R(w30),
      .led_1_G(w31),
      .led_1_B(w32),
      .event_1(b25_0_w66),
      .event_10(b25_9_w76),
      .event_11(b25_10_w77),
      .event_2(b25_1_w67),
      .event_3(b25_2_w68),
      .event_4(b25_3_w70),
      .event_7(b25_6_w73),
      .event_9(b25_8_w75),
      .CLK(w78),
      .led_2(w83),
      .led_1(w84),
      .led_3(w85),
      .led_4(w86),
      .led_5(w87),
      .led_6(w88),
      .led_7(w89),
      .led_8(w90),
      .RST(w94));

PNU_NOT
     s15 (
      .i1(w92),
      .o1(w91));

PNU_OR2
     s16 (
      .i1(w91),
      .o1(w94),
      .i2(w95));

PNU_NOT
     s17 (
      .o1(w95),
      .i1(w93));

endmodule

