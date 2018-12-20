module PriorityEncoder3(D0,D1,D2,Dout);

input D0;
input D1;
input D2;
output [2:0] Dout;

wire [2:0] b0;
wire  w2;
wire  w8;
wire  w9;
wire  w12;
wire  w13;
wire  b0_0;
wire  b0_1;
wire  b0_2_w14;

assign w8 = D0;
assign w12 = D1;
assign Dout = b0;

assign b0[2] = D2;
assign b0[1] = b0_1;
assign b0[0] = b0_0;

assign b0_2_w14 = {b0[2]};

PNU_NOT
     s0 (
      .o1(w2),
      .i1(w8));

PNU_NOT
     s1 (
      .o1(w9),
      .i1(w12));

PNU_NOT
     s2 (
      .o1(w13),
      .i1(b0_2_w14));

PNU_AND3
     s3 (
      .i1(w8),
      .i2(w9),
      .o1(b0_0),
      .i3(w13));

PNU_AND2
     s4 (
      .o1(b0_1),
      .i1(w12),
      .i2(w13));

endmodule

