module FullAdder(A,B,Cin,S,Cout);

input A;
input B;
input Cin;
output S;
output Cout;

wire  w4;
wire  w5;
wire  w6;
wire  w9;
wire  w10;
wire  w7;
wire  w8;
wire  w11;

assign w7 = A;
assign w8 = B;
assign w6 = Cin;
assign S = w5;
assign Cout = w4;

PNU_XOR2
     s0 (
      .i1(w7),
      .i2(w8),
      .o1(w11));

PNU_XOR2
     s1 (
      .o1(w5),
      .i2(w6),
      .i1(w11));

PNU_AND2
     s2 (
      .i1(w6),
      .o1(w9),
      .i2(w11));

PNU_AND2
     s3 (
      .o1(w10),
      .i1(w7),
      .i2(w8));

PNU_OR2
     s4 (
      .o1(w4),
      .i1(w9),
      .i2(w10));

endmodule

