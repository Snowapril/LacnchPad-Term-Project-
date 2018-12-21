module EventHandler(event_1,event_2,event_3,event_4,event_7,event_9,event_10,event_11,CLK,RST,led_1,led_2,led_3,led_4,led_5,led_6,led_7,led_8,led_1_B,led_1_G,led_1_R,led_2_B,led_2_G,led_2_R,led_3_B,led_3_G,led_3_R,led_4_B,led_4_G,led_4_R,event_12,event_8,Segout,com1,com2,com3,com4,com5,com6,com7,com8,event_5,event_6,single_segout);

input event_1;
input event_2;
input event_3;
input event_4;
input event_7;
input event_9;
input event_10;
input event_11;
input CLK;
input RST;
output led_1;
output led_2;
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
input event_12;
input event_8;
output [6:0] Segout;
output com1;
output com2;
output com3;
output com4;
output com5;
output com6;
output com7;
output com8;
input event_5;
input event_6;
output [6:0] single_segout;

wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w18;
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
wire  w31;
wire  w32;
wire  w101;
wire  w36;
wire  w40;
wire  w41;
wire  w42;
wire  w43;
wire  w44;
wire  w45;
wire  w46;
wire  w47;
wire  w37;
wire  w38;
wire [6:0] b35;
wire  w48;
wire  w49;
wire  w50;
wire  w51;
wire  w52;
wire  w53;
wire  w54;
wire  w55;
wire  w56;
wire  w58;
wire  w59;
wire  w57;
wire  w60;
wire [6:0] b46;

assign w40 = event_1;
assign w42 = event_2;
assign w43 = event_3;
assign w44 = event_4;
assign w47 = event_7;
assign w58 = event_9;
assign w41 = event_10;
assign w45 = event_11;
assign w56 = CLK;
assign w57 = RST;
assign led_1 = w13;
assign led_2 = w14;
assign led_3 = w15;
assign led_4 = w16;
assign led_5 = w17;
assign led_6 = w18;
assign led_7 = w19;
assign led_8 = w20;
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
assign w37 = event_12;
assign w38 = event_8;
assign Segout = b35;
assign com1 = w48;
assign com2 = w49;
assign com3 = w50;
assign com4 = w51;
assign com5 = w52;
assign com6 = w53;
assign com7 = w54;
assign com8 = w55;
assign w46 = event_5;
assign w60 = event_6;
assign single_segout = b46;

LED_Handler
     s0 (
      .led_1(w13),
      .led_2(w14),
      .led_3(w15),
      .led_4(w16),
      .led_5(w17),
      .led_6(w18),
      .led_7(w19),
      .led_8(w20),
      .event_1(w40),
      .event_10(w41),
      .event_2(w42),
      .event_3(w43),
      .event_4(w44),
      .CLK(w59),
      .RST(w57));

RGB_Handler
     s1 (
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
      .event_11(w45),
      .event_5(w46),
      .event_7(w47),
      .event_9(w58),
      .CLK(w59),
      .RST(w57));

Segments8_Handler
     s5 (
      .event_12(w37),
      .event_8(w38),
      .Segout(b35),
      .com1(w48),
      .com2(w49),
      .com3(w50),
      .com4(w51),
      .com5(w52),
      .com6(w53),
      .com7(w54),
      .com8(w55),
      .CLK(w56),
      .delay_CLK(w59),
      .RST(w57));

PNU_NOT
     s20 (
      .o1(w101),
      .i1(w59));

PNU_DFF
     s21 (
      .D(w101),
      .clock(w36),
      .Q(w59),
      .reset(w57));

Counter20000
     s22 (
      .CR(w36),
      .CLK(w56),
      .RST(w57));

event_6
     s6 (
      .clk(w59),
      .rst(w57),
      .button_inp(w60),
      .seven_seg(b46));

endmodule

