module RGB_Handler(CLK,RST,event_7,event_9,event_11,led_1_B,led_1_G,led_1_R,led_2_B,led_2_G,led_2_R,led_3_B,led_3_G,led_3_R,led_4_B,led_4_G,led_4_R);

input CLK;
input RST;
input event_7;
input event_9;
input event_11;
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

wire  w5;
wire  w6;
wire  w4;
wire  w7;
wire  w8;
wire  w15;
wire  w10;
wire  w11;
wire  w16;
wire  w12;
wire  w13;
wire  w14;
wire  w17;
wire  w18;
wire  w20;
wire  w21;
wire  w22;
wire  w23;
wire  w24;
wire  w25;
wire  w26;
wire  w27;
wire  w19;
wire  w28;
wire  w29;
wire  w31;
wire  w32;
wire  w33;
wire  w34;
wire  w35;
wire  w36;
wire  w37;
wire  w39;
wire  w40;
wire  w41;
wire  w43;
wire  w38;
wire  w42;
wire  w44;
wire  w45;
wire  w46;
wire  w47;
wire  w48;
wire  w49;
wire  w50;
wire  w51;
wire  w52;
wire  w53;
wire  w54;
wire  w55;
wire  w56;
wire  w57;
wire  w58;

assign w7 = CLK;
assign w8 = RST;
assign w5 = event_7;
assign w6 = event_9;
assign w4 = event_11;
assign led_1_B = w16;
assign led_1_G = w17;
assign led_1_R = w21;
assign led_2_B = w25;
assign led_2_G = w29;
assign led_2_R = w33;
assign led_3_B = w37;
assign led_3_G = w41;
assign led_3_R = w46;
assign led_4_B = w57;
assign led_4_G = w56;
assign led_4_R = w58;

event_7
     s0 (
      .button_inp(w5),
      .clk(w7),
      .rst(w8),
      .led_1_B(w15),
      .led_1_G(w12),
      .led_1_R(w18),
      .led_2_B(w22),
      .led_2_G(w26),
      .led_3_B(w34),
      .led_2_R(w43),
      .led_3_G(w38),
      .led_3_R(w42),
      .led_4_B(w47),
      .led_4_G(w50),
      .led_4_R(w53));

event_9
     s1 (
      .button_inp(w6),
      .clk(w7),
      .rst(w8),
      .led_1_B(w10),
      .led_1_G(w13),
      .led_2_B(w23),
      .led_2_G(w27),
      .led_1_R(w19),
      .led_2_R(w31),
      .led_3_B(w35),
      .led_3_G(w39),
      .led_3_R(w44),
      .led_4_B(w48),
      .led_4_G(w51),
      .led_4_R(w54));

event_11
     s2 (
      .button_inp(w4),
      .clk(w7),
      .rst(w8),
      .led_1_B(w11),
      .led_1_G(w14),
      .led_1_R(w20),
      .led_2_B(w24),
      .led_2_G(w28),
      .led_2_R(w32),
      .led_3_B(w36),
      .led_3_G(w40),
      .led_3_R(w45),
      .led_4_B(w49),
      .led_4_G(w52),
      .led_4_R(w55));

PNU_OR3
     s3 (
      .i1(w15),
      .i2(w10),
      .i3(w11),
      .o1(w16));

PNU_OR3
     s4 (
      .i1(w12),
      .i2(w13),
      .i3(w14),
      .o1(w17));

PNU_OR3
     s5 (
      .i1(w18),
      .i3(w20),
      .o1(w21),
      .i2(w19));

PNU_OR3
     s6 (
      .i1(w22),
      .i2(w23),
      .i3(w24),
      .o1(w25));

PNU_OR3
     s7 (
      .i1(w26),
      .i2(w27),
      .i3(w28),
      .o1(w29));

PNU_OR3
     s8 (
      .i2(w31),
      .i3(w32),
      .o1(w33),
      .i1(w43));

PNU_OR3
     s9 (
      .i1(w34),
      .i2(w35),
      .i3(w36),
      .o1(w37));

PNU_OR3
     s10 (
      .i2(w39),
      .i3(w40),
      .o1(w41),
      .i1(w38));

PNU_OR3
     s11 (
      .i1(w42),
      .i2(w44),
      .i3(w45),
      .o1(w46));

PNU_OR3
     s12 (
      .i1(w47),
      .i2(w48),
      .i3(w49),
      .o1(w57));

PNU_OR3
     s13 (
      .i1(w50),
      .i2(w51),
      .i3(w52),
      .o1(w56));

PNU_OR3
     s14 (
      .i1(w53),
      .i2(w54),
      .i3(w55),
      .o1(w58));

endmodule

