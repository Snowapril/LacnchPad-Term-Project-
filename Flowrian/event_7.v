module event_7(button_inp,led_3_G,led_4_G,led_2_G,led_1_R,led_2_B,clk,rst,led_1_G,led_4_R,led_3_B,led_2_R,led_3_R,led_1_B,led_4_B);

input button_inp;
output led_3_G;
output led_4_G;
output led_2_G;
output led_1_R;
output led_2_B;
input clk;
input rst;
output led_1_G;
output led_4_R;
output led_3_B;
output led_2_R;
output led_3_R;
output led_1_B;
output led_4_B;

wire  w12;
wire  w16;
wire  w17;
wire  w19;
wire  w18;
wire  w20;
wire  w21;
wire  w22;
wire  w23;
wire  w24;
wire  w26;
wire  w35;
wire  w34;
wire  w29;
wire  w33;
wire  w31;
wire  w28;
wire  w25;
wire  w27;
wire  w30;

assign w31 = button_inp;
assign led_3_G = w19;
assign led_4_G = w21;
assign led_2_G = w23;
assign led_1_R = w25;
assign led_2_B = w27;
assign w29 = clk;
assign w12 = rst;
assign led_1_G = w17;
assign led_4_R = w25;
assign led_3_B = w27;
assign led_2_R = w30;
assign led_3_R = w30;
assign led_1_B = w30;
assign led_4_B = w30;

PNU_DFF
     s0 (
      .Q(w16),
      .clock(w29),
      .reset(w33),
      .D(w31));

PNU_DFF
     s1 (
      .D(w16),
      .Q(w18),
      .clock(w29),
      .reset(w33));

PNU_DFF
     s2 (
      .D(w18),
      .Q(w20),
      .clock(w29),
      .reset(w33));

PNU_DFF
     s3 (
      .D(w20),
      .Q(w22),
      .clock(w29),
      .reset(w33));

PNU_DFF
     s4 (
      .D(w22),
      .Q(w24),
      .clock(w29),
      .reset(w33));

PNU_DFF
     s5 (
      .D(w24),
      .Q(w26),
      .clock(w29),
      .reset(w33));

PNU_DFF
     s6 (
      .D(w26),
      .clock(w29),
      .reset(w33),
      .Q(w28));

PNU_OR2
     s9 (
      .i1(w12),
      .i2(w34),
      .o1(w33));

PNU_AND2
     s10 (
      .i2(w16),
      .o1(w17),
      .i1(w31));

PNU_AND2
     s11 (
      .o1(w19),
      .i2(w18),
      .i1(w31));

PNU_AND2
     s12 (
      .i2(w20),
      .o1(w21),
      .i1(w31));

PNU_AND2
     s13 (
      .i2(w22),
      .o1(w23),
      .i1(w31));

PNU_AND2
     s14 (
      .i2(w24),
      .i1(w31),
      .o1(w25));

PNU_AND2
     s15 (
      .i2(w26),
      .i1(w31),
      .o1(w27));

PNU_OR2
     s18 (
      .i1(w35),
      .o1(w34),
      .i2(w28));

PNU_NOT
     s19 (
      .o1(w35),
      .i1(w31));

PNU_ZERO
     s16 (
      .o1(w30));

endmodule

