module LaunchPad(Dip_1,Dip_2,Dip_3,BTN1,BTN2,BTN3,BTN4,BTN5,BTN6,BTN7,BTN8,BTN9,BTN_star,Dip_4,BTN_0,BTN_sharp,CLK,RST,Pout,Dip_6,Dip_7,Dip_8,led_1,led_3,led_4,led_5,led_6,led_7,led_8,led_1_B,led_1_G,led_1_R,led_2_B,led_2_G,led_2_R,led_3_B,led_3_G,led_3_R,led_4_B,led_4_G,led_4_R,led_2,com1,com2,com3,com4,com5,com6,com7,com8,segout,single_segout,Dip_5);

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
output com1;
output com2;
output com3;
output com4;
output com5;
output com6;
output com7;
output com8;
output [6:0] segout;
output [6:0] single_segout;
input Dip_5;

wire  w0;
wire  w1;
wire  w2;
wire  w3;
wire  w34;
wire  w37;
wire [11:0] b25;
wire  w62;
wire  w61;
wire  w60;
wire  w79;
wire  w80;
wire  w81;
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
wire  w83;
wire  w84;
wire  w85;
wire  w86;
wire  w87;
wire  w88;
wire  w89;
wire  w90;
wire  w92;
wire  w94;
wire  w103;
wire  w104;
wire  w105;
wire  w106;
wire  w107;
wire  w108;
wire  w109;
wire  w110;
wire [6:0] b82;
wire [6:0] b83;
wire [3:0] b70;
wire [3:0] b72;
wire [3:0] b73;
wire [3:0] b74;
wire [3:0] b77;
wire [3:0] b79;
wire [3:0] b80;
wire [3:0] b81;
wire [3:0] b92;
wire [3:0] b93;
wire [3:0] b84;
wire [3:0] b85;
wire  w129;
wire  w130;
wire  w131;
wire  w132;
wire  w133;
wire  w134;
wire  w135;
wire  w136;
wire  w138;
wire  w140;
wire  w139;
wire [2:0] b111;
wire  w137;
wire  w112;
wire  w113;
wire [11:0] b95;
wire  w141;
wire  w126;
wire  w142;
wire [11:0] b109;
wire [3:0] b113;
wire [3:0] b136;
wire [3:0] b135;
wire  w162;
wire  w163;
wire  w164;
wire  w165;
wire  w166;
wire  w167;
wire  w168;
wire  w172;
wire  w173;
wire  w174;
wire  w177;
wire  w178;
wire  w180;
wire  w181;
wire  w183;
wire  w184;
wire  w185;
wire  w179;
wire  w187;
wire  w186;
wire  w182;
wire  w188;
wire  b25_0_w99;
wire  b25_1_w98;
wire  b25_2_w97;
wire  b25_3_w96;
wire  b25_4_w100;
wire  b25_5_w101;
wire  b25_6_w73;
wire  b25_7_w74;
wire  b25_8_w75;
wire  b25_10_w77;
wire  b25_9_w76;
wire  b25_11_w102;
wire  b72_0;
wire  b72_1;
wire  b113_0_w143;
wire  b113_1_w144;
wire  b113_2_w145;
wire  b113_3_w146;
wire  b136_0_w147;
wire  b136_1_w148;
wire  b136_2_w149;
wire  b136_3_w150;
wire  b135_3;
wire  b135_1;
wire  b135_2;
wire  b95_11_w176;
wire  b95_10_w175;
wire  b95_9_w171;
wire  b95_8_w170;
wire  b95_7_w169;
wire  b95_6_w161;
wire  b95_5_w160;
wire  b95_4_w159;
wire  b95_3_w158;
wire  b95_2_w157;
wire  b95_1_w156;
wire  b95_0_w155;
wire  b135_0;

assign w0 = Dip_1;
assign w1 = Dip_2;
assign w2 = Dip_3;
assign w60 = Dip_4;
assign w112 = CLK;
assign w92 = RST;
assign Pout = w141;
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
assign com1 = w103;
assign com2 = w104;
assign com3 = w105;
assign com4 = w106;
assign com5 = w107;
assign com6 = w108;
assign com7 = w109;
assign com8 = w110;
assign segout = b83;
assign single_segout = b82;
assign w182 = Dip_5;

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
assign b70[3] = b72_1;
assign b70[2] = b72_1;
assign b70[1] = b72_1;
assign b70[0] = b72_1;
assign b72[3] = b72_1;
assign b72[2] = b72_1;
assign b72[1] = b72_1;
assign b72[0] = b72_0;
assign b73[3] = b72_1;
assign b73[2] = b72_1;
assign b73[1] = b72_1;
assign b73[0] = b72_0;
assign b74[3] = b72_1;
assign b74[2] = b72_1;
assign b74[1] = b72_0;
assign b74[0] = b72_0;
assign b77[3] = b72_1;
assign b77[2] = b72_1;
assign b77[1] = b72_1;
assign b77[0] = b72_0;
assign b79[3] = b72_1;
assign b79[2] = b72_1;
assign b79[1] = b72_0;
assign b79[0] = b72_0;
assign b80[3] = b72_1;
assign b80[2] = b72_1;
assign b80[1] = b72_0;
assign b80[0] = b72_0;
assign b81[3] = b72_1;
assign b81[2] = b72_0;
assign b81[1] = b72_0;
assign b81[0] = b72_0;
assign b92[3] = b72_1;
assign b92[2] = b72_1;
assign b92[1] = b72_1;
assign b92[0] = b72_0;
assign b93[3] = b72_1;
assign b93[2] = b72_1;
assign b93[1] = b72_0;
assign b93[0] = b72_0;
assign b84[3] = b72_1;
assign b84[2] = b72_1;
assign b84[1] = b72_0;
assign b84[0] = b72_0;
assign b85[3] = b72_1;
assign b85[2] = b72_0;
assign b85[1] = b72_0;
assign b85[0] = b72_0;
assign b135[3] = b135_3;
assign b135[2] = b135_2;
assign b135[1] = b135_1;
assign b135[0] = b135_0;

assign b25_0_w99 = {b25[0]};
assign b25_1_w98 = {b25[1]};
assign b25_2_w97 = {b25[2]};
assign b25_3_w96 = {b25[3]};
assign b25_4_w100 = {b25[4]};
assign b25_5_w101 = {b25[5]};
assign b25_6_w73 = {b25[6]};
assign b25_7_w74 = {b25[7]};
assign b25_8_w75 = {b25[8]};
assign b25_10_w77 = {b25[10]};
assign b25_9_w76 = {b25[9]};
assign b25_11_w102 = {b25[11]};
assign b113_0_w143 = {b113[0]};
assign b113_1_w144 = {b113[1]};
assign b113_2_w145 = {b113[2]};
assign b113_3_w146 = {b113[3]};
assign b136_0_w147 = {b136[0]};
assign b136_1_w148 = {b136[1]};
assign b136_2_w149 = {b136[2]};
assign b136_3_w150 = {b136[3]};
assign b95_11_w176 = {b95[11]};
assign b95_10_w175 = {b95[10]};
assign b95_9_w171 = {b95[9]};
assign b95_8_w170 = {b95[8]};
assign b95_7_w169 = {b95[7]};
assign b95_6_w161 = {b95[6]};
assign b95_5_w160 = {b95[5]};
assign b95_4_w159 = {b95[4]};
assign b95_3_w158 = {b95[3]};
assign b95_2_w157 = {b95[2]};
assign b95_1_w156 = {b95[1]};
assign b95_0_w155 = {b95[0]};

mod_converter
     s0 (
      .switch_1(w0),
      .switch_2(w1),
      .switch_3(w2),
      .mod_1(w3),
      .mod_2(w37),
      .mod_3(w179));

PNU_OR2
     s1 (
      .i1(w3),
      .o1(w34),
      .i2(w37));

encoder_12_to_4
     s2 (
      .in_0(b25_0_w99),
      .in_1(b25_1_w98),
      .in_2(b25_2_w97),
      .in_3(b25_3_w96),
      .in_4(b25_4_w100),
      .in_5(b25_5_w101),
      .in_6(b25_6_w73),
      .in_7(b25_7_w74),
      .in_8(b25_8_w75),
      .in_10(b25_10_w77),
      .in_9(b25_9_w76),
      .in_11(b25_11_w102),
      .out_binary(b113),
      .chk(w180));

PianoPlay
     s3 (
      .octave(b111),
      .CLK(w112),
      .Dout(w142),
      .Bin(b113),
      .EN(w184),
      .RST(w185));

PNU_AND2
     s4 (
      .i1(w34),
      .i2(w180),
      .o1(w183));

PNU_AND2
     s6 (
      .i1(w37),
      .i2(w60),
      .o1(w113));

register
     s8 (
      .Ce(w62),
      .CLK(w112),
      .Din(b113),
      .RST(w185),
      .Dout(b136));

PNU_NOT
     s9 (
      .o1(w61),
      .i1(w60));

PNU_AND2
     s10 (
      .o1(w62),
      .i1(w61),
      .i2(w180));

PriorityEncoder3
     s13 (
      .D0(w79),
      .D1(w80),
      .D2(w81),
      .Dout(b111));

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
      .led_2(w83),
      .led_1(w84),
      .led_3(w85),
      .led_4(w86),
      .led_5(w87),
      .led_6(w88),
      .led_7(w89),
      .led_8(w90),
      .RST(w94),
      .event_1(b25_0_w99),
      .event_2(b25_1_w98),
      .event_3(b25_2_w97),
      .event_4(b25_3_w96),
      .event_5(b25_4_w100),
      .event_6(b25_5_w101),
      .event_7(b25_6_w73),
      .event_8(b25_7_w74),
      .event_9(b25_8_w75),
      .event_11(b25_10_w77),
      .event_10(b25_9_w76),
      .event_12(b25_11_w102),
      .com1(w103),
      .com2(w104),
      .com3(w105),
      .com4(w106),
      .com5(w107),
      .com6(w108),
      .com7(w109),
      .com8(w110),
      .single_segout(b82),
      .Segout(b83),
      .CLK(w112));

PNU_NOT
     s15 (
      .i1(w92),
      .o1(w185));

ToneConverter
     s20 (
      .B_in(b70),
      .D_out(w129),
      .octave(b111),
      .CLK(w112),
      .EN(w162),
      .RST(w185));

ToneConverter
     s21 (
      .B_in(b72),
      .D_out(w130),
      .octave(b111),
      .CLK(w112),
      .EN(w163),
      .RST(w185));

ToneConverter
     s22 (
      .B_in(b73),
      .D_out(w131),
      .octave(b111),
      .CLK(w112),
      .EN(w164),
      .RST(w185));

ToneConverter
     s23 (
      .B_in(b74),
      .D_out(w132),
      .octave(b111),
      .CLK(w112),
      .EN(w165),
      .RST(w185));

ToneConverter
     s24 (
      .B_in(b77),
      .D_out(w133),
      .octave(b111),
      .CLK(w112),
      .EN(w166),
      .RST(w185));

ToneConverter
     s25 (
      .B_in(b79),
      .D_out(w134),
      .octave(b111),
      .CLK(w112),
      .EN(w167),
      .RST(w185));

ToneConverter
     s26 (
      .B_in(b80),
      .D_out(w135),
      .octave(b111),
      .CLK(w112),
      .EN(w168),
      .RST(w185));

ToneConverter
     s27 (
      .B_in(b81),
      .D_out(w136),
      .octave(b111),
      .CLK(w112),
      .EN(w172),
      .RST(w185));

ToneConverter
     s28 (
      .B_in(b92),
      .octave(b111),
      .D_out(w137),
      .CLK(w112),
      .EN(w173),
      .RST(w185));

ToneConverter
     s29 (
      .B_in(b93),
      .D_out(w138),
      .octave(b111),
      .CLK(w112),
      .EN(w174),
      .RST(w185));

ToneConverter
     s30 (
      .B_in(b84),
      .D_out(w139),
      .octave(b111),
      .CLK(w112),
      .EN(w177),
      .RST(w185));

ToneConverter
     s31 (
      .B_in(b85),
      .D_out(w140),
      .octave(b111),
      .CLK(w112),
      .EN(w178),
      .RST(w185));

PNU_ZERO
     s32 (
      .o1(b72_1));

PNU_ONE
     s33 (
      .o1(b72_0));

Digit_selecter
     s34 (
      .Din_0(w129),
      .Din_1(w130),
      .Din_10(w131),
      .Din_11(w132),
      .Din_2(w133),
      .Din_3(w134),
      .Din_4(w135),
      .Din_5(w136),
      .Din_7(w138),
      .Din_9(w140),
      .Din_8(w139),
      .Din_6(w137),
      .CLK(w112),
      .Dout(w126),
      .RST(w185));

SRAM12bits
     s35 (
      .CLK(w112),
      .RW(w113),
      .Dout(b95),
      .Din(b109),
      .Address(b135),
      .RST(w185));

PNU_OR2
     s36 (
      .o1(w141),
      .i1(w126),
      .i2(w142));

Accumulator
     s37 (
      .Din(b25),
      .CLK(w112),
      .Ce(w113),
      .Dout(b109),
      .RST(w185));

PNU_OR2
     s38 (
      .i1(b113_0_w143),
      .i2(b136_0_w147),
      .o1(b135_0));

PNU_OR2
     s39 (
      .i1(b113_1_w144),
      .i2(b136_1_w148),
      .o1(b135_1));

PNU_OR2
     s40 (
      .i1(b113_2_w145),
      .i2(b136_2_w149),
      .o1(b135_2));

PNU_OR2
     s41 (
      .i1(b113_3_w146),
      .i2(b136_3_w150),
      .o1(b135_3));

PNU_AND2
     s42 (
      .o1(w162),
      .i2(b95_0_w155),
      .i1(w181));

PNU_AND2
     s43 (
      .o1(w163),
      .i2(b95_1_w156),
      .i1(w181));

PNU_AND2
     s44 (
      .o1(w164),
      .i2(b95_2_w157),
      .i1(w181));

PNU_AND2
     s45 (
      .o1(w165),
      .i2(b95_3_w158),
      .i1(w181));

PNU_AND2
     s46 (
      .o1(w166),
      .i2(b95_4_w159),
      .i1(w181));

PNU_AND2
     s47 (
      .o1(w167),
      .i2(b95_5_w160),
      .i1(w181));

PNU_AND2
     s48 (
      .o1(w168),
      .i2(b95_6_w161),
      .i1(w181));

PNU_AND2
     s49 (
      .o1(w172),
      .i2(b95_7_w169),
      .i1(w181));

PNU_AND2
     s50 (
      .o1(w173),
      .i2(b95_8_w170),
      .i1(w181));

PNU_AND2
     s51 (
      .o1(w174),
      .i2(b95_9_w171),
      .i1(w181));

PNU_AND2
     s52 (
      .o1(w177),
      .i2(b95_10_w175),
      .i1(w181));

PNU_AND2
     s53 (
      .o1(w178),
      .i2(b95_11_w176),
      .i1(w181));

PNU_AND2
     s54 (
      .i2(w180),
      .o1(w181),
      .i1(w179));

PNU_OR2
     s55 (
      .i1(w183),
      .o1(w184),
      .i2(w182));

PNU_NOT
     s57 (
      .i1(w179),
      .o1(w187));

PNU_OR2
     s58 (
      .i2(w187),
      .o1(w186),
      .i1(w188));

PNU_NOT
     s59 (
      .i1(w182),
      .o1(w188));

PNU_AND2
     s56 (
      .o1(w94),
      .i1(w185),
      .i2(w186));

endmodule

