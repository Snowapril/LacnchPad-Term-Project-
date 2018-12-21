module Counter3(RST,CLK,CR,VAL);

input RST;
input CLK;
output CR;
output [1:0] VAL;

wire  w4;
wire  w6;
wire  w7;
wire  w8;
wire [1:0] b7;
wire  w10;
wire  b7_1;
wire  b7_1_w9;
wire  b7_0;
wire  b7_0_w11;

assign w6 = RST;
assign w7 = CLK;
assign CR = b7[1];
assign VAL = b7;

assign b7[1] = b7_1;
assign b7[0] = b7_0;

assign b7_1_w9 = {b7[1]};
assign b7_0_w11 = {b7[0]};

PNU_DFF
     s0 (
      .reset(w6),
      .clock(w7),
      .Q(b7_1),
      .D(b7_0_w11));

PNU_DFF
     s1 (
      .reset(w6),
      .clock(w7),
      .D(w10),
      .Q(b7_0));

PNU_NOT
     s2 (
      .o1(w8),
      .i1(b7_1_w9));

PNU_NOT
     s3 (
      .o1(w4),
      .i1(b7_0_w11));

PNU_AND2
     s4 (
      .i2(w4),
      .i1(w8),
      .o1(w10));

endmodule

