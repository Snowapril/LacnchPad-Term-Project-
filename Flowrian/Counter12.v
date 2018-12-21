module Counter12(RST,CLK,VAL);

input RST;
input CLK;
output [3:0] VAL;

wire [3:0] b3;
wire  w7;
wire  w6;
wire  w8;
wire  w9;
wire [1:0] b3_3to2;
wire [1:0] b3_1to0;

assign w8 = RST;
assign w9 = CLK;
assign VAL = b3;

assign b3[3:2] = b3_3to2[1:0];
assign b3[1:0] = b3_1to0[1:0];

Counter3
     s0 (
      .VAL(b3_3to2),
      .CLK(w7),
      .RST(w8),
      .CR());

Counter4
     s1 (
      .VAL(b3_1to0),
      .CR(w6),
      .RST(w8),
      .CLK(w9));

PNU_DFF
     s2 (
      .Q(w7),
      .D(w6),
      .reset(w8),
      .clock(w9));

endmodule

