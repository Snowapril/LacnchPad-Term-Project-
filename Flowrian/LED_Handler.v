module LED_Handler(event_1,event_2,event_3,event_4,CLK,RST,led_1,led_2,led_3,led_4,led_5,led_6,led_7,led_8,event_10);

input event_1;
input event_2;
input event_3;
input event_4;
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
input event_10;

wire  w68;
wire  w67;
wire  w66;
wire  w65;
wire  w63;
wire  w62;
wire  w61;
wire  w60;
wire  w52;
wire  w77;
wire  w59;
wire  w51;
wire  w78;
wire  w44;
wire  w50;
wire  w58;
wire  w64;
wire  w54;
wire  w49;
wire  w76;
wire  w57;
wire  w48;
wire  w79;
wire  w55;
wire  w47;
wire  w56;
wire  w80;
wire  w46;
wire  w81;
wire  w53;
wire  w45;
wire  w82;
wire  w85;
wire  w86;
wire  w87;
wire  w88;
wire  w84;
wire  w90;
wire  w89;
wire  w99;
wire  w100;
wire  w101;
wire  w102;
wire  w103;
wire  w104;
wire  w105;
wire  w106;
wire  w98;
wire  w97;
wire  w96;
wire  w95;
wire  w94;
wire  w93;
wire  w92;
wire  w91;
wire  w69;
wire  w70;
wire  w71;
wire  w72;
wire  w73;
wire  w83;
wire  w74;
wire  w75;

assign w88 = event_1;
assign w87 = event_2;
assign w86 = event_3;
assign w85 = event_4;
assign w90 = CLK;
assign w89 = RST;
assign led_1 = w99;
assign led_2 = w100;
assign led_3 = w101;
assign led_4 = w102;
assign led_5 = w103;
assign led_6 = w104;
assign led_7 = w105;
assign led_8 = w106;
assign w84 = event_10;

event_1
     s0 (
      .led_1(w68),
      .led_2(w67),
      .led_3(w66),
      .led_4(w65),
      .led_6(w63),
      .led_7(w62),
      .led_8(w61),
      .led_5(w64),
      .button_inp(w88),
      .clk(w90),
      .rst(w89));

event_3
     s1 (
      .led_1(w52),
      .led_2(w51),
      .led_3(w50),
      .led_4(w49),
      .led_5(w48),
      .led_6(w47),
      .led_7(w46),
      .led_8(w45),
      .button_inp(w86),
      .clk(w90),
      .rst(w89));

event_2
     s2 (
      .led_1(w60),
      .led_2(w59),
      .led_3(w44),
      .led_4(w54),
      .led_5(w57),
      .led_6(w55),
      .led_7(w80),
      .led_8(w53),
      .button_inp(w87),
      .clk(w90),
      .rst(w89));

event_4
     s3 (
      .led_1(w77),
      .led_2(w78),
      .led_3(w58),
      .led_4(w76),
      .led_5(w79),
      .led_6(w56),
      .led_7(w81),
      .led_8(w82),
      .button_inp(w85),
      .clk(w90),
      .rst(w89));

PNU_OR4
     s4 (
      .i1(w67),
      .i2(w59),
      .i3(w51),
      .i4(w78),
      .o1(w70));

PNU_OR4
     s5 (
      .i1(w68),
      .i2(w60),
      .i3(w52),
      .i4(w77),
      .o1(w69));

PNU_OR4
     s6 (
      .i1(w66),
      .i2(w44),
      .i3(w50),
      .i4(w58),
      .o1(w71));

PNU_OR4
     s7 (
      .i1(w65),
      .i2(w54),
      .i3(w49),
      .i4(w76),
      .o1(w72));

PNU_OR4
     s8 (
      .i1(w64),
      .i2(w57),
      .i3(w48),
      .i4(w79),
      .o1(w73));

PNU_OR4
     s9 (
      .i1(w63),
      .i2(w55),
      .i3(w47),
      .i4(w56),
      .o1(w83));

PNU_OR4
     s10 (
      .i1(w62),
      .i2(w80),
      .i3(w46),
      .i4(w81),
      .o1(w74));

PNU_OR4
     s11 (
      .i1(w61),
      .i2(w53),
      .i3(w45),
      .i4(w82),
      .o1(w75));

event_10
     s12 (
      .button_inp(w84),
      .clk(w90),
      .rst(w89),
      .led_8(w98),
      .led_7(w97),
      .led_6(w96),
      .led_5(w95),
      .led_4(w94),
      .led_3(w93),
      .led_2(w92),
      .led_1(w91));

PNU_OR2
     s13 (
      .o1(w99),
      .i2(w91),
      .i1(w69));

PNU_OR2
     s14 (
      .o1(w100),
      .i2(w92),
      .i1(w70));

PNU_OR2
     s15 (
      .o1(w101),
      .i2(w93),
      .i1(w71));

PNU_OR2
     s16 (
      .o1(w102),
      .i2(w94),
      .i1(w72));

PNU_OR2
     s17 (
      .o1(w103),
      .i2(w95),
      .i1(w73));

PNU_OR2
     s18 (
      .o1(w104),
      .i2(w96),
      .i1(w83));

PNU_OR2
     s19 (
      .o1(w105),
      .i2(w97),
      .i1(w74));

PNU_OR2
     s20 (
      .o1(w106),
      .i2(w98),
      .i1(w75));

endmodule

