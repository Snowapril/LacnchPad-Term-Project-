module event_3(button_inp,led_2,led_3,led_4,led_5,led_7,led_8,led_6,clk,rst,led_1);

input button_inp;
output led_2;
output led_3;
output led_4;
output led_5;
output led_7;
output led_8;
output led_6;
input clk;
input rst;
output led_1;

wire  w12;
wire  w13;
wire  w14;
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
wire  w28;
wire  w32;
wire  w25;
wire  w34;
wire  w27;
wire  w35;
wire  w29;
wire  w36;
wire  w33;
wire  w37;
wire  w38;
wire  w31;
wire  w39;
wire  w30;

assign w31 = button_inp;
assign led_2 = w36;
assign led_3 = w35;
assign led_4 = w34;
assign led_5 = w34;
assign led_7 = w36;
assign led_8 = w37;
assign led_6 = w35;
assign w14 = clk;
assign w12 = rst;
assign led_1 = w37;

PNU_DFF
     s0 (
      .reset(w13),
      .clock(w14),
      .Q(w16),
      .D(w31));

PNU_DFF
     s1 (
      .reset(w13),
      .clock(w14),
      .D(w16),
      .Q(w18));

PNU_DFF
     s2 (
      .reset(w13),
      .clock(w14),
      .D(w18),
      .Q(w20));

PNU_DFF
     s3 (
      .reset(w13),
      .clock(w14),
      .D(w20),
      .Q(w22));

PNU_DFF
     s4 (
      .reset(w13),
      .clock(w14),
      .D(w22),
      .Q(w24));

PNU_DFF
     s5 (
      .reset(w13),
      .clock(w14),
      .D(w24),
      .Q(w26));

PNU_DFF
     s6 (
      .reset(w13),
      .clock(w14),
      .D(w26),
      .Q(w28));

PNU_DFF
     s7 (
      .reset(w13),
      .clock(w14),
      .D(w28),
      .Q(w32));

PNU_DFF
     s8 (
      .reset(w13),
      .clock(w14),
      .D(w32),
      .Q(w30));

PNU_OR2
     s9 (
      .i1(w12),
      .o1(w13),
      .i2(w38));

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

PNU_XOR2
     s18 (
      .i2(w23),
      .i1(w25),
      .o1(w34));

PNU_XOR2
     s19 (
      .i2(w21),
      .i1(w27),
      .o1(w35));

PNU_XOR2
     s20 (
      .i2(w19),
      .i1(w29),
      .o1(w36));

PNU_XOR2
     s21 (
      .i2(w17),
      .i1(w33),
      .o1(w37));

PNU_OR2
     s22 (
      .o1(w38),
      .i1(w39),
      .i2(w30));

PNU_NOT
     s23 (
      .i1(w31),
      .o1(w39));

endmodule

