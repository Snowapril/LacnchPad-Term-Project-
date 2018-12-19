module event_12(clk,rst,button_inp,seg_1,seg_2,seg_3,seg_4,seg_5,seg_6,seg_7,seg_8);

input clk;
input rst;
input button_inp;
output [6:0] seg_1;
output [6:0] seg_2;
output [6:0] seg_3;
output [6:0] seg_4;
output [6:0] seg_5;
output [6:0] seg_6;
output [6:0] seg_7;
output [6:0] seg_8;

wire  w0;
wire  w2;
wire  w6;
wire  w9;
wire  w13;
wire [6:0] b23;
wire [6:0] b19;
wire  w26;
wire  w28;
wire [6:0] b20;
wire [6:0] b24;
wire [6:0] b25;
wire [6:0] b26;
wire [6:0] b21;
wire [6:0] b22;
wire  b23_3;
wire  b19_3;
wire  b19_2;
wire  b19_1;
wire  b19_0;
wire  b19_5;
wire  b19_4;

assign w2 = clk;
assign w6 = rst;
assign w13 = button_inp;
assign seg_1 = b19;
assign seg_2 = b20;
assign seg_3 = b24;
assign seg_4 = b25;
assign seg_5 = b26;
assign seg_6 = b21;
assign seg_7 = b22;
assign seg_8 = b23;

assign b23[6] = b19_5;
assign b23[5] = b19_4;
assign b23[4] = b23_3;
assign b23[3] = b19_3;
assign b23[2] = b19_2;
assign b23[1] = b19_1;
assign b23[0] = b19_0;
assign b19[6] = b19_5;
assign b19[5] = b19_4;
assign b19[4] = b23_3;
assign b19[3] = b19_3;
assign b19[2] = b19_2;
assign b19[1] = b19_1;
assign b19[0] = b19_0;
assign b20[6] = b19_5;
assign b20[5] = b19_4;
assign b20[4] = b23_3;
assign b20[3] = b19_3;
assign b20[2] = b19_2;
assign b20[1] = b19_1;
assign b20[0] = b19_0;
assign b24[6] = b19_5;
assign b24[5] = b19_4;
assign b24[4] = b23_3;
assign b24[3] = b19_3;
assign b24[2] = b19_2;
assign b24[1] = b19_1;
assign b24[0] = b19_0;
assign b25[6] = b19_5;
assign b25[5] = b19_4;
assign b25[4] = b23_3;
assign b25[3] = b19_3;
assign b25[2] = b19_2;
assign b25[1] = b19_1;
assign b25[0] = b19_0;
assign b26[6] = b19_5;
assign b26[5] = b19_4;
assign b26[4] = b23_3;
assign b26[3] = b19_3;
assign b26[2] = b19_2;
assign b26[1] = b19_1;
assign b26[0] = b19_0;
assign b21[6] = b19_5;
assign b21[5] = b19_4;
assign b21[4] = b23_3;
assign b21[3] = b19_3;
assign b21[2] = b19_2;
assign b21[1] = b19_1;
assign b21[0] = b19_0;
assign b22[6] = b19_5;
assign b22[5] = b19_4;
assign b22[4] = b23_3;
assign b22[3] = b19_3;
assign b22[2] = b19_2;
assign b22[1] = b19_1;
assign b22[0] = b19_0;

PNU_DFF
     s0 (
      .Q(w0),
      .clock(w2),
      .reset(w6),
      .D(w9));

PNU_NOT
     s1 (
      .i1(w0),
      .o1(w28));

PNU_NOT
     s3 (
      .o1(w26),
      .i1(w28));

PNU_AND2
     s5 (
      .o1(w9),
      .i2(w13),
      .i1(w28));

PNU_AND2
     s4 (
      .i1(w13),
      .i2(w26),
      .o1(b19_4));

PNU_AND2
     s6 (
      .i1(w13),
      .i2(w28),
      .o1(b19_5));

PNU_ZERO
     s7 (
      .o1(b19_0));

PNU_ZERO
     s8 (
      .o1(b19_1));

PNU_ZERO
     s11 (
      .o1(b19_3));

PNU_ZERO
     s12 (
      .o1(b23_3));

PNU_ZERO
     s9 (
      .o1(b19_2));

endmodule

