module event_11(button_inp,led_2_R,led_3_R,led_4_R,led_1_G,led_3_G,led_2_G,clk,rst,led_1_B,led_2_B,led_3_B,led_4_B,led_1_R,led_4_G);

input button_inp;
output led_2_R;
output led_3_R;
output led_4_R;
output led_1_G;
output led_3_G;
output led_2_G;
input clk;
input rst;
output led_1_B;
output led_2_B;
output led_3_B;
output led_4_B;
output led_1_R;
output led_4_G;

wire  w12;
wire  w16;
wire  w17;
wire  w18;
wire  w20;
wire  w22;
wire  w24;
wire  w25;
wire  w44;
wire  w45;
wire  w47;
wire  w48;
wire  w28;
wire  w26;
wire  w19;
wire  w21;
wire  w23;

assign w28 = button_inp;
assign led_2_R = w23;
assign led_3_R = w23;
assign led_4_R = w25;
assign led_1_G = w19;
assign led_3_G = w21;
assign led_2_G = w21;
assign w47 = clk;
assign w12 = rst;
assign led_1_B = w17;
assign led_2_B = w19;
assign led_3_B = w19;
assign led_4_B = w21;
assign led_1_R = w21;
assign led_4_G = w23;

PNU_DFF
     s0 (
      .Q(w16),
      .clock(w47),
      .reset(w48),
      .D(w28));

PNU_DFF
     s1 (
      .D(w16),
      .Q(w18),
      .clock(w47),
      .reset(w48));

PNU_DFF
     s2 (
      .D(w18),
      .Q(w20),
      .clock(w47),
      .reset(w48));

PNU_DFF
     s3 (
      .D(w20),
      .Q(w22),
      .clock(w47),
      .reset(w48));

PNU_DFF
     s4 (
      .D(w22),
      .Q(w24),
      .clock(w47),
      .reset(w48));

PNU_DFF
     s5 (
      .D(w24),
      .clock(w47),
      .reset(w48),
      .Q(w26));

PNU_OR2
     s9 (
      .i1(w12),
      .i2(w45),
      .o1(w48));

PNU_AND2
     s10 (
      .i2(w16),
      .o1(w17),
      .i1(w28));

PNU_AND2
     s11 (
      .i2(w18),
      .i1(w28),
      .o1(w19));

PNU_AND2
     s12 (
      .i2(w20),
      .i1(w28),
      .o1(w21));

PNU_AND2
     s13 (
      .i2(w22),
      .i1(w28),
      .o1(w23));

PNU_AND2
     s14 (
      .i2(w24),
      .o1(w25),
      .i1(w28));

PNU_NOT
     s26 (
      .o1(w44),
      .i1(w28));

PNU_OR2
     s27 (
      .i1(w44),
      .o1(w45),
      .i2(w26));

endmodule

