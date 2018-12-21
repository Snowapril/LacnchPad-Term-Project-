module Counter4(RST,CLK,CR,VAL);

input RST;
input CLK;
output CR;
output [1:0] VAL;

wire  w6;
wire  w7;
wire  w5;
wire  w8;
wire  w11;
wire [1:0] b7;
wire  b7_0;
wire  b7_0_w10;
wire  b7_1;
wire  b7_1_w9;

assign w6 = RST;
assign w7 = CLK;
assign CR = w11;
assign VAL = b7;

assign b7[1] = b7_1;
assign b7[0] = b7_0;

assign b7_0_w10 = {b7[0]};
assign b7_1_w9 = {b7[1]};

PNU_DFF
     s0 (
      .reset(w6),
      .clock(w7),
      .D(w8),
      .Q(b7_1));

PNU_DFF
     s1 (
      .reset(w6),
      .clock(w7),
      .D(w5),
      .Q(b7_0));

PNU_NOT
     s3 (
      .o1(w5),
      .i1(b7_0_w10));

PNU_XOR2
     s4 (
      .o1(w8),
      .i2(b7_0_w10),
      .i1(b7_1_w9));

PNU_AND2
     s5 (
      .o1(w11),
      .i2(b7_0_w10),
      .i1(b7_1_w9));

endmodule

