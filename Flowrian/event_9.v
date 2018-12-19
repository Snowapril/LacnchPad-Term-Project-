module event_9(button_inp,led_2_R,led_3_R,led_4_R,led_1_G,led_3_G,led_4_G,led_2_G,clk,rst,led_1_R,led_1_B,led_2_B,led_3_B,led_4_B);

input button_inp;
output led_2_R;
output led_3_R;
output led_4_R;
output led_1_G;
output led_3_G;
output led_4_G;
output led_2_G;
input clk;
input rst;
output led_1_R;
output led_1_B;
output led_2_B;
output led_3_B;
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
wire  w25;
wire  w26;
wire  w27;
wire  w28;
wire  w29;
wire  w32;
wire  w33;
wire  w30;
wire  w37;
wire  w38;
wire  w39;
wire  w35;
wire  w36;
wire  w40;
wire  w41;
wire  w42;
wire  w43;
wire  w31;
wire  w34;
wire  w44;
wire  w45;

assign w31 = button_inp;
assign led_2_R = w41;
assign led_3_R = w42;
assign led_4_R = w43;
assign led_1_G = w25;
assign led_3_G = w29;
assign led_4_G = w33;
assign led_2_G = w27;
assign w35 = clk;
assign w12 = rst;
assign led_1_R = w40;
assign led_1_B = w17;
assign led_2_B = w19;
assign led_3_B = w21;
assign led_4_B = w23;

PNU_DFF
     s0 (
      .Q(w16),
      .clock(w35),
      .reset(w36),
      .D(w31));

PNU_DFF
     s1 (
      .D(w16),
      .Q(w18),
      .clock(w35),
      .reset(w36));

PNU_DFF
     s2 (
      .D(w18),
      .Q(w20),
      .clock(w35),
      .reset(w36));

PNU_DFF
     s3 (
      .D(w20),
      .Q(w22),
      .clock(w35),
      .reset(w36));

PNU_DFF
     s4 (
      .D(w22),
      .Q(w24),
      .clock(w35),
      .reset(w36));

PNU_DFF
     s5 (
      .D(w24),
      .Q(w26),
      .clock(w35),
      .reset(w36));

PNU_DFF
     s6 (
      .D(w26),
      .Q(w28),
      .clock(w35),
      .reset(w36));

PNU_DFF
     s7 (
      .D(w28),
      .Q(w32),
      .clock(w35),
      .reset(w36));

PNU_DFF
     s8 (
      .D(w32),
      .Q(w30),
      .clock(w35),
      .reset(w36));

PNU_OR2
     s9 (
      .i1(w12),
      .o1(w36),
      .i2(w45));

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
      .o1(w25),
      .i1(w31));

PNU_AND2
     s15 (
      .i2(w26),
      .o1(w27),
      .i1(w31));

PNU_AND2
     s16 (
      .i2(w28),
      .o1(w29),
      .i1(w31));

PNU_AND2
     s17 (
      .i2(w32),
      .o1(w33),
      .i1(w31));

PNU_DFF
     s18 (
      .D(w30),
      .Q(w37),
      .clock(w35),
      .reset(w36));

PNU_AND2
     s19 (
      .i2(w30),
      .o1(w40),
      .i1(w31));

PNU_DFF
     s20 (
      .D(w37),
      .Q(w38),
      .clock(w35),
      .reset(w36));

PNU_AND2
     s21 (
      .i2(w37),
      .o1(w41),
      .i1(w31));

PNU_DFF
     s22 (
      .D(w38),
      .Q(w39),
      .clock(w35),
      .reset(w36));

PNU_AND2
     s23 (
      .i2(w38),
      .o1(w42),
      .i1(w31));

PNU_DFF
     s24 (
      .D(w39),
      .clock(w35),
      .reset(w36),
      .Q(w34));

PNU_AND2
     s25 (
      .i2(w39),
      .o1(w43),
      .i1(w31));

PNU_NOT
     s26 (
      .i1(w31),
      .o1(w44));

PNU_OR2
     s27 (
      .i2(w34),
      .i1(w44),
      .o1(w45));

endmodule

