module event_6(button_inp,clk,rst,seven_seg);

input button_inp;
input clk;
input rst;
output [6:0] seven_seg;

wire  w12;
wire  w16;
wire  w18;
wire  w20;
wire  w22;
wire  w44;
wire  w45;
wire  w27;
wire  w29;
wire  w24;
wire  w14;
wire [6:0] b15;
wire  b15_5;
wire  b15_4;
wire  b15_3;
wire  b15_0;

assign w24 = button_inp;
assign w29 = clk;
assign w12 = rst;
assign seven_seg = b15;

assign b15[6] = b15_5;
assign b15[5] = b15_5;
assign b15[4] = b15_4;
assign b15[3] = b15_4;
assign b15[2] = b15_3;
assign b15[1] = b15_3;
assign b15[0] = b15_0;

PNU_DFF
     s0 (
      .Q(w16),
      .reset(w27),
      .clock(w29),
      .D(w24));

PNU_DFF
     s1 (
      .D(w16),
      .Q(w18),
      .reset(w27),
      .clock(w29));

PNU_DFF
     s2 (
      .D(w18),
      .Q(w20),
      .reset(w27),
      .clock(w29));

PNU_DFF
     s3 (
      .D(w20),
      .Q(w22),
      .reset(w27),
      .clock(w29));

PNU_DFF
     s4 (
      .D(w22),
      .reset(w27),
      .clock(w29),
      .Q(w14));

PNU_OR2
     s9 (
      .i1(w12),
      .i2(w45),
      .o1(w27));

PNU_AND2
     s10 (
      .i2(w16),
      .i1(w24),
      .o1(b15_5));

PNU_AND2
     s11 (
      .i2(w18),
      .i1(w24),
      .o1(b15_4));

PNU_AND2
     s12 (
      .i2(w20),
      .i1(w24),
      .o1(b15_3));

PNU_AND2
     s13 (
      .i2(w22),
      .i1(w24),
      .o1(b15_0));

PNU_NOT
     s26 (
      .o1(w44),
      .i1(w24));

PNU_OR2
     s27 (
      .i1(w44),
      .o1(w45),
      .i2(w14));

endmodule

