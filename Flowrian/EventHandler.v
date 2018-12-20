module EventHandler(event_1,event_2,event_3,event_4,event_7,event_9,event_10,event_11,CLK,RST,led_1,led_2,led_3,led_4,led_5,led_6,led_7,led_8,led_1_B,led_1_G,led_1_R,led_2_B,led_2_G,led_2_R,led_3_B,led_3_G,led_3_R,led_4_B,led_4_G,led_4_R);

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

wire  w3;
wire  w4;
wire  w5;
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

assign w3 = event_1;
assign w4 = event_2;
assign w5 = event_3;
assign w6 = event_4;
assign w11 = event_7;
assign w12 = event_9;
assign w7 = event_10;
assign w10 = event_11;
assign w8 = CLK;
assign w9 = RST;
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

LED_Handler
     s0 (
      .event_1(w3),
      .event_2(w4),
      .event_3(w5),
      .event_4(w6),
      .event_10(w7),
      .CLK(w8),
      .RST(w9),
      .led_1(w13),
      .led_2(w14),
      .led_3(w15),
      .led_4(w16),
      .led_5(w17),
      .led_6(w18),
      .led_7(w19),
      .led_8(w20));

RGB_Handler
     s1 (
      .CLK(w8),
      .RST(w9),
      .event_11(w10),
      .event_7(w11),
      .event_9(w12),
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
      .led_1_B(w32));

endmodule

