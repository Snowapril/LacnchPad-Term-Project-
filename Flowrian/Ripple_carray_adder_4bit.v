module Ripple_carray_adder_4bit(Cin,Cout,A0,A1,A2,A3,B0,B1,B2,B3,S0,S1,S2,S3);

input Cin;
output Cout;
input A0;
input A1;
input A2;
input A3;
input B0;
input B1;
input B2;
input B3;
output S0;
output S1;
output S2;
output S3;

wire  w2;
wire  w3;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w12;
wire  w13;
wire  w14;
wire  w15;
wire  w16;
wire  w17;
wire  w18;
wire  w19;
wire  w20;

assign w20 = Cin;
assign Cout = w19;
assign w2 = A0;
assign w6 = A1;
assign w10 = A2;
assign w12 = A3;
assign w3 = B0;
assign w7 = B1;
assign w9 = B2;
assign w13 = B3;
assign S0 = w15;
assign S1 = w16;
assign S2 = w17;
assign S3 = w18;

FullAdder
     s0 (
      .A(w2),
      .B(w3),
      .Cout(w8),
      .S(w15),
      .Cin(w20));

FullAdder
     s1 (
      .A(w6),
      .B(w7),
      .Cin(w8),
      .Cout(w11),
      .S(w16));

FullAdder
     s2 (
      .B(w9),
      .A(w10),
      .Cin(w11),
      .Cout(w14),
      .S(w17));

FullAdder
     s3 (
      .A(w12),
      .B(w13),
      .Cin(w14),
      .S(w18),
      .Cout(w19));

endmodule

