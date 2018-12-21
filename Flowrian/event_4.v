module event_4(clk,rst,led_1,led_4,led_5,led_6,led_7,led_2,led_3,button_inp,led_8);

input clk;
input rst;
output led_1;
output led_4;
output led_5;
output led_6;
output led_7;
output led_2;
output led_3;
input button_inp;
output led_8;

wire  w0;
wire  w2;
wire  w9;
wire  w10;
wire  w11;
wire  w8;
wire  w13;
wire  w12;
wire  w14;
wire  w15;

assign w2 = clk;
assign w14 = rst;
assign led_1 = w8;
assign led_4 = w10;
assign led_5 = w8;
assign led_6 = w10;
assign led_7 = w8;
assign led_2 = w10;
assign led_3 = w8;
assign w13 = button_inp;
assign led_8 = w10;

PNU_DFF
     s0 (
      .Q(w0),
      .clock(w2),
      .D(w9),
      .reset(w14));

PNU_NOT
     s1 (
      .i1(w0),
      .o1(w12));

PNU_NOT
     s3 (
      .o1(w11),
      .i1(w12));

PNU_AND2
     s5 (
      .o1(w9),
      .i2(w13),
      .i1(w12));

PNU_NOT
     s7 (
      .i1(w14),
      .o1(w15));

PNU_AND3
     s6 (
      .o1(w8),
      .i1(w13),
      .i2(w12),
      .i3(w15));

PNU_AND3
     s8 (
      .o1(w10),
      .i2(w11),
      .i1(w13),
      .i3(w15));

endmodule

