module event_5(CLK,RST,led_1_R,led_1_G,led_1_B,led_2_R,led_2_G,led_2_B,led_3_R,led_3_G,led_3_B,led_4_R,led_4_G,led_4_B,button_inp);

input CLK;
input RST;
output led_1_R;
output led_1_G;
output led_1_B;
output led_2_R;
output led_2_G;
output led_2_B;
output led_3_R;
output led_3_G;
output led_3_B;
output led_4_R;
output led_4_G;
output led_4_B;
input button_inp;

wire [2:0] b0;
wire  w10;
wire  w9;
wire [1:0] b12;
wire  w14;
wire  w21;
wire  w22;
wire  w23;
wire  w24;
wire  w25;
wire  w18;
wire  w19;
wire  w20;
wire  w17;
wire  b0_0_w15;
wire  b0_1_w16;
wire  b12_1;
wire  b12_0;

assign w10 = CLK;
assign w9 = RST;
assign led_1_R = w17;
assign led_1_G = w17;
assign led_1_B = w17;
assign led_2_R = w18;
assign led_2_G = w18;
assign led_2_B = w18;
assign led_3_R = w20;
assign led_3_G = w20;
assign led_3_B = w20;
assign led_4_R = w19;
assign led_4_G = w19;
assign led_4_B = w19;
assign w21 = button_inp;

assign b12[1] = b12_1;
assign b12[0] = b12_0;

assign b0_0_w15 = {b0[0]};
assign b0_1_w16 = {b0[1]};

eight_counter
     s0 (
      .Dout(b0),
      .clk(w10),
      .rst(w9));

Decoder2bit
     s1 (
      .Din(b12),
      .Q0(w22),
      .Q1(w23),
      .Q2(w24),
      .Q3(w25));

PNU_XOR2
     s2 (
      .i1(b0_0_w15),
      .o1(b12_0),
      .i2(w14));

PNU_XOR2
     s3 (
      .i1(b0_1_w16),
      .o1(b12_1),
      .i2(w14));

PNU_ZERO
     s4 (
      .o1(w14));

PNU_AND2
     s5 (
      .i1(w21),
      .i2(w22),
      .o1(w17));

PNU_AND2
     s6 (
      .i1(w21),
      .i2(w23),
      .o1(w18));

PNU_AND2
     s7 (
      .i1(w21),
      .i2(w24),
      .o1(w19));

PNU_AND2
     s8 (
      .i1(w21),
      .i2(w25),
      .o1(w20));

endmodule

