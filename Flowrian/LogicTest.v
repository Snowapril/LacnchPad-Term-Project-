	module LogicTest(A,B,X,Y,Z);

input A;
input B;
output X;
output Y;
output Z;

wire  w2;
wire  w1;
wire  w3;
wire  w4;
wire  w5;

assign w2 = A;
assign w1 = B;
assign X = w4;
assign Y = w3;
assign Z = w5;

PNU_AND2
     s0 (
      .i1(w2),
      .i2(w1),
      .o1(w4));

PNU_OR2
     s1 (
      .i1(w2),
      .i2(w1),
      .o1(w3));

PNU_XOR2
     s2 (
      .i1(w2),
      .i2(w1),
      .o1(w5));

endmodule

